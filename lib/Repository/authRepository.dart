import 'authFirebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

/* Creamos un nuevo archivo llamado authRepository */

/* Importamos firebase_auth y authFirebase */
/* Creamos la clase  AuthRepository */

class AuthRepository {

    final _authFirebase= AuthFirebase(); /*Creamos una variable llamamos a la clase que creamos en authFirebase */
    Future <UserCredential> singInFirebase() => _authFirebase.signIn(); /* Creamos un futuro que va a estar esperando un objeto de tipo <UserCredential> */

                                                                    
}
