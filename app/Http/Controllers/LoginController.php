<?php

namespace App\Http\Controllers;

use App\Models\Korisnik;
use App\Models\Uloge;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;

class LoginController extends Controller
{
    /**
     * Logovanje kroz bazu.
     *
     * @param Request $request
     * @return Redirector
     */
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        $email = $request->get('email');
        $password = $request->get('password');

        $user = Korisnik::with('uloga')
            ->where('email', $email)
            ->where('password', md5($password))
            ->first();

        if (!empty($user)) {
            $request->session()->put('user', $user);

            return $user->uloga->naziv === 'admin'
                ? redirect(route('korsnici-admin'))
                : redirect(route('index'));
        } else {
            return redirect()->back()->with("logError", "Wrong username or password.");
        }
    }

    /**
     * Kreiranje novog korisnika.
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function registrovanje(Request $request)
    {
        $request->validate([
            'email' => 'email|required|confirmed',
            'password' => 'required|min:6|confirmed',
            'ime' => 'required|string',
            'prezime' => 'required|string',
//            'adresa' => 'string',
//            'grad' => 'string',
        ]);

        $korisnikUloga = Uloge::where('naziv', 'korisnik')->first()->id;
        Korisnik::create([
            'ime' => $request->get('ime'),
            'prezime' => $request->get('prezime'),
            'email' => $request->get('email'),
            'password' => md5($request->get('password')),
            'adresa' => $request->get('adresa') ?? null,
            'grad' => $request->get('grad') ?? null,
            'postanski_broj' => $request->get('postanski_broj') ?? null,
            'telefon' => $request->get('telefon') ?? null,
            'id_uloga' => $korisnikUloga,
        ]);

        return redirect()->route('index')->with("success", "Registration successful, you can login now.");
    }

    /**
     * Logout, brisanje korisnika iz sesije.
     *
     * @return Redirector
     */
    public function logout()
    {
        session()->forget('user');
        return redirect(route('index'));
    }
}
