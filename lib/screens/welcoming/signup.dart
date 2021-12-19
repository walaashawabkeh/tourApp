import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isChecked = false;
  Future<void> api() async {
    var url = Uri.parse('https://reqres.in/api/login');
    var res =await http.post(url,body: {
      "email": "eve.holt@reqres.in",
      "password": "cityslicka"
    });
    print(res.body);
    if(res.statusCode==200){

    }
  }
  TextEditingController? controller =  TextEditingController();
  TextEditingController? controllerpass =  TextEditingController();
  TextEditingController? controllerpass1 =  TextEditingController();
  Widget _buildTextField({
    required bool obscureText,
    Widget? prefixedIcon,
    String? hintText,
  }) {
    return Material(
      color: Colors.transparent,
      elevation: 2,
      child: TextField(
        controller: controllerpass1 ,
        onChanged: (value){
          setState(() {

          });
        },
        cursorColor: Colors.white,
        cursorWidth: 2,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Color(0xffce7760),
          prefixIcon: prefixedIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white54,
            fontWeight: FontWeight.bold,
            fontFamily: 'PTSans',
          ),
        ),
      ),
    );
  }
  Widget _buildSignUpButton() {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          elevation: MaterialStateProperty.all(6),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontFamily: 'PT-Sans',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          api();
          print("ammar");
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffef867e),
                Color(0xfff3b4a4),
                Color(0xffd2d7e5),
                Color(0xffe5d5d1),
                Color(0xffce7760),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ).copyWith(top: 60),
              child: Column(
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'PT-Sans',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextField(
                    hintText: 'Enter your Username',
                    obscureText: false,
                    prefixedIcon: const Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Phone Number',
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextField(
                    hintText: 'Enter your phone number',
                    obscureText: false,
                    prefixedIcon: const Icon(Icons.phone, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextField(

                    hintText: 'Enter your password',
                    obscureText: true,
                    prefixedIcon: const Icon(Icons.lock, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  // _buildRemeberMe(),
                  const SizedBox(
                    height: 15,
                  ),
                  _buildSignUpButton(),
                  const SizedBox(
                    height: 20,
                  ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an Account ! ',
                    style: TextStyle(
                      fontFamily: 'PT-Sans',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

                    },
                  ),
                ],
              )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
