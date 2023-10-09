<?php

namespace App\Http\Controllers;

use App\Models\Anketa;
use App\Models\Marka;
use App\Models\Navigacija;
use App\Models\Odgovor;
use App\Models\Proizvod;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;

class FrontController extends Controller
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
     * Index page.
     *
     * @return View
     */
    public function index(): View
    {
        $odgovori = Odgovor::all();

        return view('pages.home')
            ->with('nav', $this->nav)
            ->with('odgovori', $odgovori);
    }

    /**
     * Proizvodi sa paginacijom.
     *
     * @return View
     */
    public function proizvodi(): View
    {
        $proizvodi = Proizvod::with('slike', 'specifikacije', 'specifikacije.karakteristika')
            ->when(!empty(\request()->query->get('marka')), function ($q) {
                $q->where('id_marka', \request()->query->get('marka'));
            })
            ->when(!empty(\request()->query->get('search')), function ($q) {
                $q->where('naziv', 'like', '%' . \request()->query->get('search') . '%');
            })
            ->paginate(6);
        $marke = Marka::get();

        return view('pages.proizvodi')
            ->with('nav', $this->nav)
            ->with('proizvodi', $proizvodi)
            ->with('marke', $marke);
    }

    /**
     * Prikaz proizvoda po id-ju.
     *
     * @param Proizvod $proizvod
     * @return View
     */
    public function prikazProizvoda(Proizvod $proizvod)
    {
        return view('pages.proizvod')
            ->with('nav', $this->nav)
            ->with('proizvod', $proizvod
                ->load('slike', 'specifikacije', 'specifikacije.karakteristika'));
    }

    /**
     * Prikaz forme za registraciju.
     *
     * @return View
     */
    public function registracija()
    {
        return view('pages.registracija')
            ->with('nav', $this->nav);
    }

    /**
     * Autor page.
     *
     * @return View
     */
    public function autor(): View
    {
        return view('pages.autor-korisnik')->with('nav', $this->nav);
    }

    /**
     * Prikaz forme za logovanje.
     *
     * @return View
     */
    public function login()
    {
        return view('pages.login')
            ->with('nav', $this->nav);
    }

    /**
     * Unos ankete.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function anketa(Request $request)
    {
        $request->validate(['id_odgovor' => 'required']);
        Anketa::create([
           'id_odgovor' => $request->get('id_odgovor')
        ]);

        return response()->json(['success' => 'Anketa Uspesno popunjena']);
    }
}
