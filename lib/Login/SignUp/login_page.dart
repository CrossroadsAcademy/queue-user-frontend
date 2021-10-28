import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:queue_app/HomePages/home_token_number/token_number_and_time.dart';
// import 'package:queue_app/LogIn/ForgotPassword/forgot_password.dart';
// import 'package:queue_app/LogIn/OTP/otp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const SizedBox(height: 70,),
                const Text("Login to Account.",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                const Text("Login with your Username & Password.",style: TextStyle(color: Colors.black26,fontSize: 15),),
                const SizedBox(height: 40,),
                Center(
                  child: Image.asset(
                      "assets/images/login.png"
                  ),
                ),
                const SizedBox(height: 40,),

                ///form///

                Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        ///Username///

                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE6E6E6),
                          ),
                          child: TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            // initialValue: 'Username',
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                color: Color(0xffAEAEAE),
                              ),
                              // enabledBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(color: Color(0xff008080)),
                              // ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),

                        ///Password///

                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE6E6E6),
                          ),
                          child: TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            // initialValue: 'Username',
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Color(0xffAEAEAE),
                              ),
                              // enabledBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(color: Color(0xff008080)),
                              // ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){
                              debugPrint("Forgot Password");
                              // Navigator.push(context, MaterialPageRoute(builder: (_) => const ForgotPassword()));
                            },
                              child: const Text("Forgot Password",style: TextStyle(color: Color(0xff008080)),),)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Center(
                          child: TextButton(onPressed: (){
                            debugPrint("Log In");
                            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const TokenNumberAndTime()));
                          },
                            child: Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff008080),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                                child: const Text(
                                  "Log In",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

