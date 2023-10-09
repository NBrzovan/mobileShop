<?php

namespace App\Http\Controllers;

use App\Models\Karakteristka;
use App\Models\Marka;
use App\Models\Navigacija;
use App\Models\Proizvod;
use App\Models\Slika;
use App\Models\Specifikacija;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;

class ProizvodController extends Controller
{

    /**
     * Navigacija iz baze.
     * @var Navigacija[]|Collection
     */
    private $nav;

    public function __construct()
    {
        $nav = Navigacija::all();
        $this->nav = $nav;
    }

    /**
     * Lista Korisnika.
     *
     * @return View
     */
    public function index()
    {
        $proizvodi = Proizvod::with('slike', 'marka')->paginate(15);

        return view('pages.admin.proizvodi-index')
            ->with('nav', $this->nav)
            ->with('proizvodi', $proizvodi);
    }

    /**
     * View Forme za dodavanje Proizvoda.
     *
     * @return View
     */
    public function create()
    {
        $marke = Marka::all();
        $karakteristike = Karakteristka::all();

        return view('pages.admin.proizvodi-create')
            ->with('nav', $this->nav)
            ->with('marke', $marke)
            ->with('karakteristike', $karakteristike);
    }

    /**
     * Insert novog proizvoda u bazu.
     *
     * @param Request $request
     * @return Redirector
     */
    public function store(Request $request)
    {
        $request->validate([
            'id_marka' => 'required',
            'naziv' => 'required',
            'cena' => 'required',
            'slika' => 'required',
            'slicica' => 'required',
            'specifikacije' => 'array|required'
        ]);
        $proizvod = Proizvod::create([
            'naziv' => $request->get('naziv'),
            'id_marka' => $request->get('id_marka'),
            'cena' => $request->get('cena'),
        ]);

        foreach ($request->get('specifikacije') as $key => $spec) {
            if (!empty($spec)) {
                Specifikacija::create([
                    'id_proizvod' => $proizvod->id,
                    'id_karakteristika' => (int)$key,
                    'vrednost' => $spec
                ]);
            }
        }

        if (!empty($request->file('slika'))) {
            $file = $request->file('slika');
            $directory = public_path('images/proizvodi/');
            $fileName = time() . "slika_" . $file->getClientOriginalName();
            $file->move($directory, $fileName);

            $slika = Slika::create([
                'putanja' => $fileName,
                'opis' => $proizvod->naziv,
                'id_tip_slike' => 1
            ]);
            $proizvod->slike()->sync([
                $slika->id
            ], false);
        }

        if (!empty($request->file('slicica'))) {
            $file = $request->file('slicica');
            $directory = public_path('images/proizvodi/');
            $fileName = time() . "slicica_" . $file->getClientOriginalName();
            $file->move($directory, $fileName);

            $slika = Slika::create([
                'putanja' => $fileName,
                'opis' => $proizvod->naziv,
                'id_tip_slike' => 2
            ]);
            $proizvod->slike()->sync([
                $slika->id
            ], false);
        }

        return redirect(route('proizvodi-admin'));
    }

    /**
     * Brisanje proizvoda
     *
     * @param Proizvod $proizvod
     * @returnRedirector
     * @return Redirector
     * @throws \Exception
     */
    public function delete(Proizvod $proizvod)
    {
        $proizvod->slike()->detach();
        $proizvod->specifikacije()->delete();
        $proizvod->delete();

        return redirect(route('proizvodi-admin'));
    }

    public function edit($id){
        $marke = Marka::all();
        $proizvod = Proizvod::where('id', $id)->first();  
        return view('pages.admin.proizvodi-edit')
            ->with('proizvod', $proizvod)
            ->with('nav', $this->nav)
            ->with('marke', $marke);
    }

    public function update(Request $request){
        
        $proizvod = Proizvod::where('id', $request->id)->update([
            'naziv' => $request->get('naziv'),
            'id_marka' => $request->get('id_marka'),
            'cena' => $request->get('cena'),
        ]);
        return redirect(route('proizvodi-admin'));
    }
}
