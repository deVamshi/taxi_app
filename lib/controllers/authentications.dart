import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authentications {
  String _result = "";
  int status;
  FirebaseAuth _auth = FirebaseAuth.instance;

  signin(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final User user = _auth.currentUser;
      print("signed sucessfully and uid is ${user.uid}");
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        _result = 'The email is not valid or sommething wrong with this emial';
      } else if (e.code == 'user-disabled') {
        _result =
            'The user disabled by the admin refer to firebase admin console';
      } else if (e.code == 'wrong-password') {
        _result = 'User has entered wrong password';
      } else if (e.code == 'user-not-found') {
        _result = 'User not found please singup';
      }
      print(_result);

      return _result;
    } catch (e) {
      print(e);
    }
  }

  Future<int> signup(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      final User user = _auth.currentUser;
      print("sucessfully signed up with user uid ${user.uid}");
      return 0; // for succesfull registration
      //  Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        status = 1; //'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        status = -1; //'The email is already registered';
      }
      print(_result);

      return status;
    } catch (e) {
      print(e);
    }
    return 5;
  }

  forgotpassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      print("sucessfully reset mail has been sent");
    } catch (e) {
      print("something error occured $e");
      print(e);
    }
  }

  signinwithgoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      final UserCredential authresult =
          await _auth.signInWithCredential(credential);

      final User user = authresult.user;
      print("sucessfully signed in with google with uid${user.uid}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-disabled') {
        _result = 'User disabled contact administrator-Vamsi';
      }
      print(_result);
    } catch (e) {
      print("something error occured $e");
    }
  }
}
