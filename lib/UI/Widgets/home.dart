import 'package:flutter/material.dart';
import 'package:laboratorio_2/UI/Widgets/gradiente.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Gradiente(),
          Row(
            
            children: [
              Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(
                    top: 100, left: 110),
                  child: Image(
                    image: AssetImage("assets/img/logo.png",),
                  )
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 250, left: 60),
                width: 250,
                height: 150,
                child: Text('''Wellcome Back''',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 320,
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 300, left: 20),
                    child: TextFormField(
                   
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'ejemplo@hotmail.com',
                      labelText: 'Correo Electronico',
                    ),
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 320,
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 350, left: 20),
                     child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Escribe tu Contraseña',
                      labelText: ' Contraseña',
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Container(
                width: 250,
                height: 100,
                margin: EdgeInsets.only(
                  top: 410, left: 60),
                  alignment: Alignment.topRight,
                child: Text(
                  "Recover Acount?",
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 250,
                height: 100,
                margin: EdgeInsets.only(top: 460, left: 60),
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign in'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent, minimumSize:
                         Size(400, 50))
                         
                ),
                
                
              )
            ],
            
          ),
          Row(
            children: [
              Container(
                width: 250,
                height: 100,
                margin: EdgeInsets.only(
                  top: 520, left: 60),
                  alignment: Alignment.topCenter,
                  child: Text(
                  "OR",
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 580, left: 210),
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage("assets/img/facebook.png"),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 580, left: 100),
                    child: Image(
                      image: AssetImage("assets/img/google.png"),
                    ),
                  )
                ],
              ),
              Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 700, left: 75),
                    child: Text("Don't Have Any Account? Create new",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        )),
                  )
                ],
              ),
            ],
          )
              
              
          
        ],
      ),
    );
  }
}
