<?php

namespace App\Http\Controllers;

use App\Models\Korisnik;
use App\Models\Navigacija;
use App\Models\Uloge;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;

class KorisnikController extends Controller
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
        $korsinici = Korisnik::with('uloga')->paginate(15);

        return view('pages.admin.korisnici-index')
            ->with('nav', $this->nav)
            ->with('korisnici', $korsinici);
    }

    /**
     * Dohvati korisnika po Id.
     *
     * @param Korisnik $korisnik
     * @return Factory|View
     */
    public function show(Korisnik $korisnik)
    {
        $uloge = Uloge::all();
        return \view('pages.admin.korisnici-form')
            ->with('nav', $this->nav)
            ->with('uloge', $uloge)
            ->with('korisnik', $korisnik);
    }

    /**
     * Update Korisnika.
     *
     * @param Request $request
     * @param Korisnik $korisnik
     * @return Redirector
     */
    public function update(Request $request, Korisnik $korisnik)
    {
        $request->validate([
            'email' => 'email|required',
            'password' => 'required|min:6',
            'ime' => 'required|string',
            'prezime' => 'required|string',
            'id_uloga' => 'required|exists:uloge,id'
//            'adresa' => 'string',
//            'grad' => 'string',
        ]);

        $korisnik->update([
            'ime' => $request->get('ime'),
            'prezime' => $request->get('prezime'),
            'email' => $request->get('email'),
            'password' => md5($request->get('password')),
            'adresa' => $request->get('adresa') ?? null,
            'grad' => $request->get('grad') ?? null,
            'postanski_broj' => $request->get('postanski_broj') ?? null,
            'telefon' => $request->get('telefon') ?? null,
            'id_uloga' => $request->get('id_uloga'),
        ]);

        return redirect(route('korsnici-admin'));
    }

    /**
     * Brisanje Korisnika.
     *
     * @param Korisnik $korisnik
     * @return Redirector
     * @throws \Exception
     */
    public function delete(Korisnik $korisnik)
    {
        $korisnik->delete();

        return redirect(route('korsnici-admin'));
    }
}
