// import 'package:flutter/material.dart';
// import 'package:prachi_desktop_app/screens/Authentication/login_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String email = '';
//   void getUser() async {
//     User? user = FirebaseAuth.instance.currentUser;
//     if (user != null) {
//       setState(() {
//         email = user.email ?? '';
//       });
//       debugPrint("name:=> $email");
//     }
//   }

//   @override
//   void initState() {
//     getUser();
//     super.initState();
//   }

//   Future<void> _logout(BuildContext context) async {
//     User? user = FirebaseAuth.instance.currentUser;

//     if (user != null) {
//       // Set 'isLoggedIn' to false before logging out

//       print('User logged out, isLoggedIn set to false');

//       // Wait for the update to complete before proceeding with logout actions

//       await FirebaseAuth.instance.signOut();

//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.clear();

//       // Navigate after logging out and ensuring Firestore update is committed
//       await Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(builder: (context) => const LoginScreen()),
//         (Route<dynamic> route) => false,
//       );
//     } else {
//       print('No user is signed in');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               _logout(context);
//             },
//             child: Text("Logout")),
//       ),
//     );
//   }
// }
