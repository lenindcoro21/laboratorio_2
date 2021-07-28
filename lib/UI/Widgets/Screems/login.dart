import'package:flutter/material.dart';
import 'package:laboratorio_2/BLOC/BLOC_user.dart';
import 'package:laboratorio_2/UI/Widgets/Screems/profile.dart';
import 'package:laboratorio_2/UI/Widgets/googleBotton.dart';
import 'package:laboratorio_2/UI/Widgets/textInput.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';



class Login extends StatelessWidget {
  UserBloc userBloc;
 final _controllerPassword=TextEditingController();
 final _controllerUsername=TextEditingController();
 
 @override
 
  Widget build(BuildContext context) {
    userBloc= BlocProvider.of(context);
    return _controlSession();
  }
 
  // Widget build(BuildContext context) {


    Widget _controlSession(){

    return StreamBuilder(

      stream: userBloc.authStatus,

      builder: (BuildContext context, AsyncSnapshot snapshot){

        if (!snapshot.hasData || snapshot.hasError){

          return loginApp();

        }else {

          return Profile();

        }

      });

    }    

    Widget loginApp()  {
     return Scaffold( 
       body: Container(
         child: ListView(children:<Widget> [
           Container( 
             height: 250.0,
             width: 250.0,
             margin:EdgeInsets.only(top:15.0),
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.contain,
                 image: AssetImage("assets/img/logo.png"),

               ),
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               shape: BoxShape.rectangle,
             ),
          
           ), // logo
           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("Nombre de la Aplicacion",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),),//Titulo
           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Username",inputType: TextInputType.name,controller: _controllerUsername,maxLineas: 1, hint: 'Username',),

           ),//Nomnre
           
           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Password",inputType: TextInputType.text,
           controller: _controllerPassword,maxLineas: 1, hint: 'Password',)),//Hobbies
           Container(
             child: Center(child: MaterialButton(minWidth: 100.0,height: 40.0,onPressed: (){},
             color: Colors.lightBlue,
             child: Text('Summit',style: TextStyle (color: Colors.white)
             ,),),),
           ),

            GoogleBotton(textC: "Login with Google", widthC: 80, heightC: 35, onPressed: (){

              userBloc.signIn().then((UserCredential user)=> print("Usted se ha autenticado como ${user.user}"));
            },
            
            )

           

         ],) 
       )

       
     );
   }
  //}
 

} 