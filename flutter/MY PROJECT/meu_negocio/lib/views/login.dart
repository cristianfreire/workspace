import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meu_negocio/shared/const.dart';
import 'package:meu_negocio/views/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meu_negocio/widget/loading.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences prefs;

  bool isLoading = false;
  bool isLoggedIn = false;
  User currentUser;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    this.setState(() {
      isLoading = true;
    });

    prefs = await SharedPreferences.getInstance();

    isLoggedIn = await googleSignIn.isSignedIn();
    if (isLoggedIn) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomeScreen(currentUserId: prefs.getString('id'))));
    }
    this.setState(() {
      isLoading = false;
    });
  }

  Future<Null> handleSignIn() async {
    prefs = await SharedPreferences.getInstance();

    this.setState(() {
      isLoading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    User firebaseUser =
        (await firebaseAuth.signInWithCredential(credential)).user;

    if (firebaseUser != null) {
      // check is already sign up
      final QuerySnapshot result = await FirebaseFirestore.instance
          .collection('negocios')
          .where('id', isEqualTo: firebaseUser.uid)
          .get();

      // Update data to server if new user
      final List<DocumentSnapshot> documents = result.docs;
      if (documents.length == 0) {
        FirebaseFirestore.instance
            .collection('negocios')
            .doc(firebaseUser.uid)
            .set({
          'nome': firebaseUser.displayName,
          'photoUrl': firebaseUser.photoURL,
          'id': firebaseUser.uid,
          'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
          'chattingWith': null
        });

        // Write data to local
        currentUser = firebaseUser;
        await prefs.setString('id', currentUser.uid);
        await prefs.setString('telefone', currentUser.phoneNumber);
        await prefs.setString('nome', currentUser.displayName);
        await prefs.setString('photoUrl', currentUser.photoURL);
      } else {
        await prefs.setString('id', documents[0].data()['id']);
        await prefs.setString('nome', documents[0].data()['nome']);
        await prefs.setString('telefone', documents[0].data()['telefone']);
        await prefs.setString('photoUrl', documents[0].data()['photoUrl']);
        await prefs.setString('endereco', documents[0].data()['endereco']);
        await prefs.setString('cnpj', documents[0].data()['cnpj']);
        await prefs.setString('categoria', documents[0].data()['categoria']);
      }

      Fluttertoast.showToast(msg: 'Sign in success');
      this.setState(() {
        isLoading = false;
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomeScreen(currentUserId: firebaseUser.uid)));
    } else {
      Fluttertoast.showToast(msg: 'Sign in fail');
      this.setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: FlatButton(
              onPressed: () => handleSignIn().catchError((err) {
                Fluttertoast.showToast(msg: 'Sign in fail');
                this.setState(() {
                  isLoading = false;
                });
              }),
              child: Text(
                'SIGN IN WITH GOOGLE',
                style: TextStyle(fontSize: 16.0),
              ),
              color: Color(0xffdd4b39),
              highlightColor: Color(0xffff7f7f),
              splashColor: Colors.transparent,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            ),
          ),
          Positioned(child: isLoading ? const Loading() : Container())
        ],
      ),
    );
  }
}
