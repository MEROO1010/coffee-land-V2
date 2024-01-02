import 'package:coffee_app/pages/nav_home.dart';
import 'package:coffee_app/services/database_service.dart';
import 'package:coffee_app/utilities/no_animated_page_transition.dart';
import 'package:coffee_app/widgets/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

User? _user;

class AuthService {
  final _firebaseAuth = FirebaseAuth.instance;
  final DatabaseUserService _databaseUserService = DatabaseUserService();

  createUserWithEmailAndPassword({
    required String email,
    required String password,
    required context,
    required String name,
  }) async {
    try {
      UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      await _databaseUserService.createUserDoc(
          name: name, email: email, uid: user.user!.uid, context: context);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context: context, text: e.message!);
    }
  }

  loginUserWithEmailAndPassword({
    required context,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      _user = user.user;

      noAnimatedPushReplacement(
          context: context, destinationPage: const NavHome());
    } on FirebaseException catch (e) {
      showSnackBar(text: e.message!, context: context);
    }
  }

  User? get getUserAuthCredential => _user;
}
