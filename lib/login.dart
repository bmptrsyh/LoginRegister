import 'package:counter_app/eror.dart';
import 'package:counter_app/register.dart';
import 'package:counter_app/tampilan1.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

 @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessageEmail = '';
  String _errorMessagePassword = '';

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;

    setState(() {
      _errorMessageEmail = email.isEmpty ? 'Email is required' : '';
      _errorMessagePassword = password.isEmpty ? 'Password is required' : '';
    });

    // Jika tidak ada error
    if (_errorMessageEmail.isEmpty && _errorMessagePassword.isEmpty) {
      // Cek apakah email dan password benar
      if (email == 'bima' && password == 'bima') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FisrtPage()),
        );
      } else {
        // Tampilkan popup jika email atau password salah
        DialogHelper.showErrorDialog(context, 'Wrong password, please check again');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
        foregroundColor: Colors.white,
        shadowColor: Colors.grey[900],
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  const Text(
                    'Sign in as staff?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // logika untuk staff
                    },
                    child: Text(
                      'Click here',
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _emailController,
                onChanged: (value) {
                if (value.isNotEmpty) {
                  setState(() {
                    _errorMessageEmail = '';
                  });
                }
              },
                decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              if (_errorMessageEmail.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      _errorMessageEmail,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 16.0),
              TextField(
                controller: _passwordController,
                onChanged: (value) {

                if (value.isNotEmpty) {
                  setState(() {
                    _errorMessagePassword = '';
                  });
                }
              },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              if (_errorMessagePassword.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      _errorMessagePassword,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.green[900],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: _login,
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.green[900]),
                    shape: const WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                        height: 1.05,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Or login with',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/images/google.png',
                width: 55,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Register here',
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

