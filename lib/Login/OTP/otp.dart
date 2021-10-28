import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:queue/Login/SignUp/create_account.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
                const Text("Enter OTP.",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                Center(
                  child: Image.asset(
                      "assets/images/otp.png"
                  ),
                ),
                const SizedBox(height: 40,),
                const Center(child: Text("A 4 digit code has been sent to",style: TextStyle(color: Colors.black26,fontSize: 18),)),
                const Center(child: Text("+91 9876543210",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),

                const SizedBox(height: 20,),

                ///form///

                Form(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            ///01///

                            Container(
                              width: 60,
                              height: 60,
                              // padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE6E6E6),
                              ),
                              child: TextFormField(
                                inputFormatters:[
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                cursorColor: Theme.of(context).cursorColor,
                                // initialValue: 'Username',
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  // labelText: 'Username',
                                  labelStyle: TextStyle(
                                    color: Color(0xffAEAEAE),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 5,),
                            ///02///

                            Container(
                              width: 60,
                              height: 60,
                              // padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE6E6E6),
                              ),
                              child: TextFormField(
                                inputFormatters:[
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                cursorColor: Theme.of(context).cursorColor,
                                // initialValue: 'Username',
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  // labelText: 'Phone',
                                  labelStyle: TextStyle(
                                    color: Color(0xffAEAEAE),
                                  ),
                                  // enabledBorder: UnderlineInputBorder(
                                  //   borderSide: BorderSide(color: Color(0xff008080)),
                                  // ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 5,),
                            ///03///

                            Container(
                              width: 60,
                              height: 60,
                              // padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE6E6E6),
                              ),
                              child: TextFormField(
                                inputFormatters:[
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                cursorColor: Theme.of(context).cursorColor,
                                // initialValue: 'Username',
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  // labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Color(0xffAEAEAE),
                                  ),
                                  // enabledBorder: UnderlineInputBorder(
                                  //   borderSide: BorderSide(color: Color(0xff008080)),
                                  // ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 5,),
                            ///04///

                            Container(
                              width: 60,
                              height: 60,
                              // padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE6E6E6),
                              ),
                              child: TextFormField(
                                inputFormatters:[
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                cursorColor: Theme.of(context).cursorColor,
                                // initialValue: 'Username',
                                style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                decoration: const InputDecoration(

                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  // labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Color(0xffAEAEAE),
                                  ),
                                  // enabledBorder: UnderlineInputBorder(
                                  //   borderSide: BorderSide(color: Color(0xff008080)),
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const[
                            Text('Code expires in : ',style: TextStyle(color: Colors.black,fontSize: 11),),
                            Text('2:59',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                          ],
                        ),


                        const SizedBox(height: 10,),
                        Center(
                          child: TextButton(onPressed: (){
                            debugPrint("Verify & Proceed");
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const CreateAccount()));
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
                                  "Verify & Proceed",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't Receive the OTP?",
                              style: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                            TextButton(onPressed: (){
                              debugPrint("resend otp");
                            }, child: const Text("RESEND OTP",style: TextStyle(color: Color(0xff008080)),),)
                          ],
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
