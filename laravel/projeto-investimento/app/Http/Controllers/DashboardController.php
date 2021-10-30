<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\UserRepository;
use App\Validators\UserValidator;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    private $repository;
    private $validator;

    public function __construct(UserRepository $repository, UserValidator $validator)
    {
        $this->repository = $repository;
        $this->validator = $validator;
    }

    public function  index(){
        return "Dashboard Index";
    }

    public function auth(Request $req){
        $data = [
            'email' => $req->get('username'),
            'password' => $req->get('password')
        ];

        
        try{

            if(env('PASSWORD_HASH')){
                \Auth::attempt($data, false);
            }else{
                $user = $this->repository->findWhere(['email' => $req->get('username')])->first();
                
                if(!$user){
                    throw new \Exception("Email inválido!");
                }
                
                if($user->password != $req->get('password')){
                    throw new \Exception("Senha inválida");
                }

                Auth::login($user);
                
            }
            return redirect()->route('user.dashboard');
        }catch (\Exception $e){
            return $e -> getMessage();
        }

        dd($req->all());
    }
}
