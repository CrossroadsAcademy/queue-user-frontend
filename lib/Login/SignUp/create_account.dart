import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

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
                const Text("Create Account.",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                const Text("Signup with your phone number.",style: TextStyle(color: Colors.black26,fontSize: 15),),
                const SizedBox(height: 20,),
                Center(
                  child: Image.asset(
                      "assets/images/create.png"
                  ),
                ),
                const SizedBox(height: 20,),

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
                        const SizedBox(height: 15,),
                        Center(
                          child: TextButton(onPressed: (){
                            debugPrint("Get OTP");
                            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Otp()));
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have a account?",
                      style: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                    TextButton(onPressed: (){
                      debugPrint("Sign in");
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage()));
                    },
                      child: const Text("Sign in",style: TextStyle(color: Color(0xff008080)),),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
