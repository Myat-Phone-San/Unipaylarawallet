<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Wallet;
use Illuminate\Http\Request;
use App\Helpers\UUIDGenerate;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            // 'phone' => ['required', 'string', 'unique:users', 'min:9', 'max:11'],
            'phone' => [
            'required',
            'string',
            'unique:users',
            // Regular expression for Myanmar phone numbers
            'regex:/^(09|\+?959)' .
                '(2[0-9]{6}|' .
                '25[0-9]{7}|' .
                '26[0-9]{7}|' .
                '27[0-9]{7}|' .
                '43[0-9]{6}|' .
                '4[0-9]{8}|' .
                '44[0-9]{6}|' .
                '45[0-9]{6}|' .
                '5[0-9]{6}|' .
                '6[0-9]{6}|' .
                '73[0-9]{6}|' .
                '91[0-9]{6}|' .
                '3[0-9]{7}|' .
                '96[0-9]{7}|' .
                '97[0-9]{7}|' .
                '98[0-9]{7}|' .
                '99[0-9]{7}|' .
                '76[0-9]{7}|' .
                '77[0-9]{7}|' .
                '78[0-9]{7}|' .
                '79[0-9]{7}|' .
                '66[0-9]{7}|' .
                '67[0-9]{7}|' .
                '68[0-9]{7}|' .
                '69[0-9]{7}|' .
                '31[0-9]{7}|' .
                '32[0-9]{7})$/'
            ],
            'password' => ['required', 'string', 'min:8', 'max:12', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'password' => Hash::make($data['password']),
        ]);
    }

    protected function registered(Request $request, $user)
    {
        $user->ip = $request->ip();
        $user->user_agent = $request->server('HTTP_USER_AGENT');
        $user->login_at = date('Y-m-d H:i:s');
        $user->update();

        Wallet::firstOrCreate(
            [
                'user_id' => $user->id,
            ],
            [
                'account_number' => UUIDGenerate::accountNumber(),
                'amount' => 0,
            ]
        );

        return redirect($this->redirectTo);
    }
}
