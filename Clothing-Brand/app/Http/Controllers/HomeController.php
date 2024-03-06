<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use App\Models\Subscribe;
class HomeController extends Controller
{
    public function index()
    {
        return view('home');
    }
    public function list()
    {   $data =  Product::all();
        return view('list',["data"=>$data]);
    }
    public function add()
    {   
        return view('add');
    }
    public function home()
    {   
        return view('home');
    }
    public function postadd(Request $req)
    {   
        $data = new Product;
        $data->timestamps = false;
        $data->name = $req->input('name');
        $data->discription = $req->input('discription');
        $data->price = $req->input('price');
        $data->save();
        $req->session()->flash('success', 'Added successful');
        return view('add');
    }
    public function delete($id)
    {
      Product::find($id)->delete();
      return view('home');
    }
    public function edit($id){
        
       $data = Product::find($id);
       return view('edit',['data'=>$data]);
    }
    public function update(Request $req)
    {   
        $data = Product::find($req->id);
        $data->timestamps = false;
        $data->name = $req->input('name');
        $data->discription = $req->input('discription');
        $data->price = $req->input('price');
        $data->save();
        return view('home');
    }
    public function register(Request $req){
        $user = new User;
        $user->timestamps = false;
        $user->username = $req->input('username');
        $user->password = $req->input('password');
        $user->role = $req->input('role');
        $user->save();
        $req->session()->flash('success', 'Registration successful');
        return redirect("register");

     }
     public function login(Request $req) {
        $username = $req->input('username');
        $password = $req->input('password');
        
        $user = User::where('username', $username)->first();
        
        if ($user && $user->password == $password) {
            $req->session()->put('user', $user->username);
            $req->session()->put('role', $user->role); // Add user's role to the session
            $req->session()->flash('success', 'Login successful');
            return redirect('add');
        }
        $req->session()->flash('Unsuccess', 'Login Unsuccessful');
        return redirect("login");
    }
    public function logout(Request $req)
    {
        session()->forget('user');
        session()->forget('role');
        $req->session()->flash('ssuccess', 'Loged out successfully');
        return redirect('/login');
    }
    public function search(Request $request)
    {
        $keyword = $request->input('keyword');
        $results = Product::where('name', 'like', "%{$keyword}%")->get();

        return view('search', ['results' => $results]);
    }



    public function subscribe(Request $request)
    {
        // Validate the request data
        $request->validate([
            'email' => 'required|email|unique:subscribes,email'
        ]);
    
        // Create a new Subscribe model instance
        $subscribe = new Subscribe();
    
        // Disable timestamps for the Subscribe model
        $subscribe->timestamps = false;
    
        $subscribe->email = $request->email;
    
        // Save the subscription to the database
        $subscribe->save();
        $req->session()->flash('ssuccess', 'Subscribed successfully');
        // Redirect back or to a thank you page
        return redirect('/home');
    }
    
    
    
}
