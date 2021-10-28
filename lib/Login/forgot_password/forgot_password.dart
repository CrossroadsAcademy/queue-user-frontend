import 'package:flutter/material.dart';
import 'package:queue/Login/OTP/otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

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
                const Text("Forgot Password.",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                const Text("Don't worry! It happens. Please enter the phone no.",style: TextStyle(color: Colors.black26,fontSize: 15),),
                const SizedBox(height: 60,),
                Center(
                  child: Image.asset(
                      "assets/images/forgot.png"
                  ),
                ),
                const SizedBox(height: 60,),

                const Center(child: Text("Enter your Registered Phone no.",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),

                const SizedBox(height: 10,),

                ///form///

                Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        ///Phone///

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
                              labelText: 'Phone',
                              labelStyle: TextStyle(
                                color: Color(0xffAEAEAE),
                              ),
                              // enabledBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(color: Color(0xff008080)),
                              // ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),


                        Center(
                          child: TextButton(onPressed: (){
                            debugPrint("Get OTP");
                            Navigator.push(context, MaterialPageRoute(builder: (_) => const Otp()));
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
                                  "Get OTP",
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
