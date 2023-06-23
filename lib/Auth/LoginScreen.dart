
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_store/Auth/ForgtPassword.dart';
import 'package:panda_store/Auth/RegisterScreen.dart';
import 'package:panda_store/Constant/AppColor.dart';
import 'package:panda_store/Screen/Ui/MainScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _password = TextEditingController();

  GlobalKey <FormState> _formKey = GlobalKey();

  FirebaseAuth  _firebaseAuth = FirebaseAuth.instance;

  void NavigateToRegiserScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return RegisterScreen();
    }));
  }

  void validateLogin(){
    final isValid = _formKey.currentState!.validate();

    try  {
      if(isValid){
        _firebaseAuth.signInWithEmailAndPassword(email: _emailController.text, password: _password.text);


        Navigator.push(context, MaterialPageRoute(builder: (context){
          return MainScreen();
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
                  Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        return 'Enter Email';
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(

                        )
                    ),


                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        return 'password is empty';
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'password',


                        border: OutlineInputBorder(

                        )
                    ),
                    obscureText: true,



                  ),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return ForgotPassword();
                    }));
                  }, child: Text('Forgot your password',style: TextStyle(color: Colors.black),)),
                  SizedBox(height: 15,),
                  Container(
                    width: double.infinity,

                    child: MaterialButton(
                      onPressed: (){
                        validateLogin();
                        if(_formKey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return MainScreen();
                          }));
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Login',style:TextStyle(color: Colors.white,fontSize: 20) ,),
                      ),
                      color: Colors.red,


                    ),
                  ),

                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: Text('Do you have account ')),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return RegisterScreen();
                        }));
                      }, child: Text('Sign Up') )
                    ],
                  ),

                  SizedBox(height: 30,),
                  Center(child: Text('or Login with social account',style: TextStyle(color: Colors.black),)),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                          child: Icon(Icons.facebook,color: Colors.blue,size: 40,)),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                          child: Icon(Icons.facebook,color: Colors.blue,size: 40,)),


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

// void ScaffoldWidget (){
//   return Scaffold(
//     backgroundColor: Colors.white,
//     body: Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           width: double.infinity,
//           height: 400,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(18)
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Welcome To Zainlak" , style: TextStyle(color: AppColor.AppColors,fontSize: 20 , fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
//
//                   SizedBox(height: 10,),
//
//                   TextFormField(
//                     controller: _emailController,
//                     validator: (value){
//                       if(value!.isEmpty){
//                         return "Please Enter your Email";
//                       }
//                     },
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         hintText: "Email",
//                         suffixIcon: Icon(Icons.email_outlined)
//
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   TextFormField(
//                     controller: _password,
//                     validator: (value){
//                       if(value!.isEmpty){
//                         return "Please Enter your Password";
//                       }
//                     },
//                     decoration: InputDecoration(
//                       hintText: "password",
//                       suffixIcon: Icon(Icons.visibility_off),
//
//                     ),
//                     obscureText: true,
//                   ),
//                   SizedBox(height: 10,),
//
//                   Container(
//                       width: double.infinity,
//                       child: MaterialButton(onPressed: (){
//                         validateLogin();
//                       } , child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),color: AppColor.AppColors,)),
//                   Align(
//                       alignment: Alignment.bottomRight,
//                       child: TextButton(onPressed: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context ){
//                           return ForgotPassword();
//                         }));
//                       }, child: Text('Forget Password'))),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("IF you don\'t have an account"),
//                       TextButton(onPressed: (){
//                         NavigateToRegiserScreen();
//                       }, child: Text('Sign Up' , style: TextStyle(color: AppColor.AppColors,fontWeight: FontWeight.bold),))
//                     ],
//                   )
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   )
// }
