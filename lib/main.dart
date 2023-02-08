import 'dart:async';

import 'package:sample_app/Home_Screen/Home/Home.dart';
import 'package:sample_app/Rechner/Rechner_Screen/RechnerHQ.dart';
import 'package:sample_app/Sonstiges/faq.dart';
import 'package:sample_app/Quiz_Screen/Quiz.dart';
import 'package:sample_app/Sonstiges/info.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const startseite());
}

final navigatorKey = GlobalKey<NavigatorState>();

class startseite extends StatelessWidget {
  const startseite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: Utils.messengerKey,
        navigatorKey: navigatorKey,
        home: MyApp(),
        debugShowCheckedModeBanner: false);
  }
}

//////////////////////////////////////////////////////////////////
///////////////////////////MyApp/////////////////////////////////
//////////////////////////////////////////////////////////////////

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Oops, etwas ist schiefgelaufen'));
          } else if (snapshot.hasData) {
            return mynavibar();
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////
///////////////////////////mynavibar/////////////////////////////////
//////////////////////////////////////////////////////////////////

class mynavibar extends StatefulWidget {
  const mynavibar({Key? key}) : super(key: key);

  @override
  State<mynavibar> createState() => _mynavibarState();
}

class _mynavibarState extends State<mynavibar> {
  int _currentindex = 2;
  final List<Widget> _children = [
    Quiz(),
    RechnerHQ(),
    Home(),
    FAQ(),
    Info(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 255, 138, 21),
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.extension), label: 'Quiz'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.calculate), label: 'Rechner'),
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.live_help), label: 'FAQ'),
          BottomNavigationBarItem(icon: new Icon(Icons.info), label: 'Info'),
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////
///////////////////////////LoginWidget/////////////////////////////////
//////////////////////////////////////////////////////////////////

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginWidget({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) => SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            FlutterLogo(size: 120),
            SizedBox(height: 20),
            Text(
              'Sample App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 40),
            TextField(
              controller: emailController,
              cursorColor: Colors.black,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Email-Adresse"),
            ),
            SizedBox(height: 4),
            TextField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  labelText: "Passwort",
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      })),
              obscureText: _isObscure,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
              ),
              icon: Icon(Icons.lock_open, size: 32),
              label: Text(
                "Einloggen",
                style: TextStyle(fontSize: 24),
              ),
              onPressed: signIn,
            ),
            SizedBox(height: 24),
            GestureDetector(
              child: Text(
                'Passwort vergessen?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14,
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ForgotPasswordPage(),
              )),
            ),
            SizedBox(height: 13),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 14),
                text: 'Kein Account?  ',
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = widget.onClickedSignUp,
                    text: 'Registrieren',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}

//////////////////////////////////////////////////////////////////
///////////////////////////AuthPage/////////////////////////////////
//////////////////////////////////////////////////////////////////

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(onClickedSignUp: toogle)
      : SignUpWidget(onClickedSignIn: toogle);

  void toogle() => setState(() => isLogin = !isLogin);
}

//////////////////////////////////////////////////////////////////
///////////////////////////(Register) SignUpWidget/////////////////////////////////
//////////////////////////////////////////////////////////////////

class SignUpWidget extends StatefulWidget {
  final Function() onClickedSignIn;

  const SignUpWidget({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) => SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            FlutterLogo(size: 120),
            SizedBox(height: 20),
            Text(
              'Sample App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: emailController,
              cursorColor: Colors.black,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Email-Adresse"),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (email) => (emailController.text.contains(
                      '')) //"@yahoo.de" um ein Lock auf die Email Adresse zu setzen
                  ? null
                  : (emailController.text.contains(
                          '')) // weiterer "@gmail.de" um ein Lock auf die Email Adresse zu setzen
                      ? null
                      : 'Email-Adresse ungültig',
            ),
            SizedBox(height: 4),
            TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  labelText: "Passwort",
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      })),
              obscureText: _isObscure,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value1) => value1 != null && value1.length < 6
                  ? 'Passwort muss min. 6 Zeichen haben'
                  : null,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
              ),
              icon: Icon(Icons.lock_open, size: 32),
              label: Text(
                "Registrieren",
                style: TextStyle(fontSize: 24),
              ),
              onPressed: signUp,
            ),
            SizedBox(height: 24),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 14),
                text: 'Bereits registriert?  ',
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = widget.onClickedSignIn,
                    text: 'Einloggen',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
  Future signUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}

class Utils {
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String? text) {
    if (text == null) return;

    final snackBar = SnackBar(content: Text(text), backgroundColor: Colors.red);

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

//////////////////////////////////////////////////////////////////
///////////////////////////Passwort vergessen?/////////////////////////////////
//////////////////////////////////////////////////////////////////
///

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        elevation: 0,
        title: Text(
          "Passwort zurücksetzen",
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock_reset_rounded, size: 110),
                  SizedBox(height: 20),
                  Text(
                    'Gib deine E-Mail-Adresse ein, damit wir dir einen Link senden können, mit dem du zurück in dein Konto gelangst.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: emailController,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(labelText: 'Email'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Email-Adresse ungültig'
                            : null,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                    ),
                    icon: Icon(Icons.email_outlined),
                    label: Text(
                      'Link zum Passwort zurücksetzen',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: resetPassword,
                  )
                ],
              ))));

  Future resetPassword() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());

      Utils.showSnackBar('Email wurde versendet');
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
      Navigator.of(context).pop();
    }
  }
}

//////////////////////////////////////////////////////////////////
///////////////////////////Email verifizieren/////////////////////////////////
//////////////////////////////////////////////////////////////////

// class VerifyEmailPage extends StatefulWidget {
//   @override
//   _VerifyEmailPageState createState() => _VerifyEmailPageState();
// }

// class _VerifyEmailPageState extends State<VerifyEmailPage> {
//   bool isEmailVerified = false;
//   bool canResendEmail = false;
//   Timer? timer;

//   @override
//   void initState() {
//     super.initState();

//     isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

//     if (!isEmailVerified) {
//       sendVerificationEmail();

//       timer = Timer.periodic(
//         Duration(seconds: 3),
//         (_) => checkEmailVerified(),
//       );
//     }
//   }

//   @override
//   void dispose() {
//     timer?.cancel();

//     super.dispose();
//   }

//   Future checkEmailVerified() async {
//     await FirebaseAuth.instance.currentUser!.reload();

//     setState(() {
//       isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
//     });

//     if (isEmailVerified) timer?.cancel();
//   }

//   Future sendVerificationEmail() async {
//     try {
//       final user = FirebaseAuth.instance.currentUser!;
//       await user.sendEmailVerification();

//       setState(() => canResendEmail = false);
//       await Future.delayed(Duration(seconds: 5));
//       setState(() => canResendEmail = true);
//     } catch (e) {
//       Utils.showSnackBar(e.toString());
//     }
//   }

//   Widget build(BuildContext context) => isEmailVerified
//       ? mynavibar()
//       : Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.black38,
//             elevation: 0,
//             title: Text(
//               "Email verifizieren",
//             ),
//           ),
//           body: Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Eine Verifikation-Mail wurde an Ihre Email versendet.',
//                   style: TextStyle(fontSize: 20),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 24),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: Size.fromHeight(50),
//                   ),
//                   icon: Icon(Icons.email, size: 32),
//                   label: Text(
//                     'Email erneut senden',
//                     style: TextStyle(fontSize: 24),
//                   ),
//                   onPressed: sendVerificationEmail,
//                 ),
//                 SizedBox(height: 8),
//                 TextButton(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: Size.fromHeight(50),
//                   ),
//                   child: Text('Abbrechen', style: TextStyle(fontSize: 24)),
//                   onPressed: () => FirebaseAuth.instance.signOut(),
//                 ),
//               ],
//             ),
//           ));
// }
