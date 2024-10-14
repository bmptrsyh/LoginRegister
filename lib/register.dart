import 'package:counter_app/login.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    automaticallyImplyLeading: false,
    title: Text('Register',
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
              Card(
                color: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    color: Colors.green[900]!,
                    width: 2,
                  ),
                ),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Manual Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
    
                        ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
    
                        ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
    
                        ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // IntlPhoneField(
              //   decoration: InputDecoration(
              //     label: Text(
              //       'Phone Number',
              //       style: TextStyle(
              //         fontSize: 16,
              //       ),
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(10),
              //       ),
              //     ),
              //   ),
              // ),
              const Row(
                children: [
                  CountryCodePicker(
                    onChanged: print,
                    initialSelection: 'ID',
                    favorite: ['+62'],
                    showCountryOnly: false,
                    flagWidth: 12,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
    
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Referal Code (if exist)',
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
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    // logika saat tombol ditekan
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green[900]),
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
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.05,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              const Align(
                alignment: Alignment.center,
                child: Text('By register, you have agreed',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('Terms Conditions & The Privacy Policy',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.green[900],
                ),
                ),
              ),
              const SizedBox(
                height: 15,
                  ),
                ],
              ),
            ),
          ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Or create account using',
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
                width: 70,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      'Login here',
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
