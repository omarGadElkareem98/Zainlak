
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_store/Auth/LoginScreen.dart';

import '../Constant/AppColor.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void NavigateToLoginScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LoginScreen();
    }));
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _password = TextEditingController();

  GlobalKey <FormState> _formKey = GlobalKey();

  FirebaseAuth  _firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

   void validateLogin(){
      final isValid = _formKey.currentState!.validate();

      try  {
            if(isValid){
            _firebaseAuth.createUserWithEmailAndPassword(email: _emailController.text, password: _password.text);
            _firestore.collection("users").doc("ID").set({
              "name" : _nameController.text,
              "email" : _emailController.text,
              "password" : _password.text
            });

            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LoginScreen();
            }));

            }
      } catch(error){
        print("Look Error here ${error}");
      }
   }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 30,),
                  TextFormField(


                    validator: (val){
                      if(val!.isEmpty){
                        return 'Enter your email';
                      }
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'email',
                        labelText: 'email'
                    ),
                    keyboardType: TextInputType.emailAddress,


                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return ' Enter your name';
                      }
                    } ,
                    controller: _nameController,
                    decoration: InputDecoration(
                        hintText: 'name',
                        labelText: 'name'
                    ),
                    keyboardType: TextInputType.text,



                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        return ' enter your pass';
                      }
                    },
                    controller: _password,

                    decoration: InputDecoration(
                        hintText: 'password',
                        labelText: 'password'

                    ),
                    obscureText: true,



                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 15,),
                  Container(
                    width: double.infinity,

                    child: MaterialButton(
                      onPressed: (){
                        validateLogin();

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('sign up',style:TextStyle(color: Colors.white,fontSize: 20) ,),
                      ),
                      color: Colors.red,


                    ),
                  ),

                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: Text('Alrady have an account ',style: TextStyle(color: Colors.black),)),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return LoginScreen();
                        }));
                      }, child: Text('login') )
                    ],
                  ),

                  SizedBox(height: 30,),
                  Center(child: Text('or Login with social account',style: TextStyle(color: Colors.black),)),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.facebook,color: Colors.blue,size: 40,),
                      Icon(Icons.facebook,color: Colors.blue,size: 40,),


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
