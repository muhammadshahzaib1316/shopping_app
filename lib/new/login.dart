import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/new/Production.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Production()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      // ElevatedButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => SignupPage()),
      //     );
      //   },
      //   child: const Text("Signup"),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 40),

              Image(
                image: NetworkImage(
                  "data:image/jpeg;base64,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",
                ),
                width: 100,
                height: 100,
              ),

              const SizedBox(height: 50),
              const Text(
                "W O R L D M A R T",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Email',
                  ),
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your password',
                  ),
                  controller: passwordController,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await login(context);
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   String _email = '';
//   String _password = '';

//   Future<void> _login() async {
//     try {
//       final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: _email,
//         password: _password,
//       );
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Login Page')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter email';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _email = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Password'),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter password';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _password = value!,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save();
//                     _login();
//                   }
//                 },
//                 child: Text('Login'),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/signup');
//                 },
//                 child: Text('Signup'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
