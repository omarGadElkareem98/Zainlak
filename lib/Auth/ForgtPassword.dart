


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: 20,),
                Text('Please, enter your email address. You will receive a link to create a new password via email.'),
                SizedBox(height: 30,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'your Emial',

                      border: OutlineInputBorder(

                      ),

                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(14)
                      )
                  ),


                ),
                SizedBox(height: 15,),



                SizedBox(height: 15,),
                Container(
                  width: double.infinity,

                  child: MaterialButton(
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Send',style:TextStyle(color: Colors.white,fontSize: 20) ,),
                    ),
                    color: Colors.red,


                  ),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
