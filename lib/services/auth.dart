// // import 'package:firebase_auth/firebase_auth.dart';

// // class AuthService {
// //   final FirebaseAuth _firebaseAuth;
// //   AuthService(this._firebaseAuth);

// //   Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

// //   Future<void> signOut() async {
// //     await _firebaseAuth.signOut();
// //   }

// //   Future<String> signIn(String email, String password) async {
// //     try {
// //       await _firebaseAuth.signInWithEmailAndPassword(
// //           email: email, password: password);
// //       return "Signed in";
// //     } on FirebaseAuthException catch (e) {
// //       return e.message;
// //     }
// //   }

// //   Future<String> signUp(String email, String password) async {
// //     try {
// //       await _firebaseAuth.createUserWithEmailAndPassword(
// //           email: email, password: password);
// //       return "Signed up";
// //     } on FirebaseAuthException catch (e) {
// //       return e.message;
// //     }
// //   }
// // }
// import 'package:b2b_marketplace/domain/user.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
//   final FirebaseAuth _fAuth = FirebaseAuth.instance;
//   Future<Userr> signInWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       UserCredential result = await _fAuth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       User user = result.user;
//       return User.fromFirebase(user);
//     } catch (e) {
//       return null;
//     }
//   }

//   Future<Userr> registerUserWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       UserCredential result = await _fAuth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       User user = result.user;
//       return Userr.fromFirebase(user);
//     } catch (e) {
//       return null;
//     }
//   }

//   Future logOut() async {
//     await _fAuth.signOut();
//   }

//   Stream<Userr> get currentUser {
//     return _fAuth.authStateChanges().map(
//         (User user) => user != null ? FirebaseUserr.fromFirebase(user) : null);
//   }

//   registerWithEmailAndPassword(String trim, String trim2) {}
// }
