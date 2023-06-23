

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_store/Constant/AppColor.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Auth/LoginScreen.dart';

class employeeProfile extends StatefulWidget {
  const employeeProfile ({Key? key}) : super(key: key);

  @override
  State<employeeProfile> createState() => _employeeProfile();
}

class _employeeProfile extends State<employeeProfile> {

  final  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  bool isLoading = false;
  String phoneNumber = "";
  String email="";
  String name = "";
  String position = "";
  String joinedAt = "";
  String imageUrl = "";
  String job = "";
  bool isSameUser = false;

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void getUserData()async{
    try{
      final DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc('rzUFwwUpuMMaawKtPfsxjS6J5K83').get();
      if(userDoc==null){
        return;
      } else{
        setState(() {
          email = userDoc.get('Email');
          name = userDoc.get('name');
          phoneNumber = userDoc.get('phoneNumber');
          joinedAt = userDoc.get('Joined At');
          job = userDoc.get('position');
          imageUrl = userDoc.get('imageUrl');
        });
      }
    } catch(error){}
  }











  @override

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    DateTime Date = DateTime.now();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Stack(


                    children: [


                      Card(

                        margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30,),
                              Align( alignment: Alignment.center, child: Text(name==null ? "no name" : name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                              SizedBox(height: 10,),
                              Align( alignment: Alignment.center, child: Text('Joined Since date $joinedAt',style: TextStyle(fontSize: 17,color: Colors.indigo),)),
                              SizedBox(height: 20,),
                              Divider(thickness: 1,),
                              SizedBox(height: 40,),
                              Center(child: Text('تواصل مع الفني',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.blue,
                                    child: CircleAvatar(
                                      radius: 23,
                                      backgroundColor: Colors.white,
                                      child: IconButton(onPressed: (){
                                        SendMessageByWatsapp();
                                      }, icon:Icon (Icons.message)) ,
                                    ),
                                  ),

                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.green,
                                    child: CircleAvatar(
                                      radius: 23,
                                      backgroundColor: Colors.white,
                                      child: IconButton(onPressed: (){
                                        CallPhoneNumber();
                                      }, icon:Icon (Icons.phone,color: Colors.green,)) ,
                                    ),
                                  ),


                                ],
                              ),
                              SizedBox(height: 15,),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 20,right: 20,left: 20,top: 0),
                                  child: MaterialButton(
                                    onPressed: (){
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('احجز زياره للمنزل',style: TextStyle(color: Colors.white,fontSize: 18),),
                                        SizedBox(width: 10,),
                                        Icon(Icons.bookmark_border,color: Colors.white,)
                                      ],
                                    ),
                                    color: AppColor.AppColors,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Divider(thickness: 1,),
                              SizedBox(height: 10,),


                              SizedBox(height: 10,),






                            ],
                          ),
                        ),


                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Container(
                            width:70 ,
                            height:70 ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 5,color: Theme.of(context).scaffoldBackgroundColor),
                                image: DecorationImage(image: NetworkImage('https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png'),fit: BoxFit.fill)
                            ),
                          )
                        ],)
                    ]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void SendMessageByWatsapp()async{

    String PhoneNumber = '+201156467293';

    await  launch('https://wa.me/$PhoneNumber?text=hello');

  }
  void SendMail()async{
    String email = 'omarsabry8989@gmail.com';
    var url =  'mailto:$email';
    await launch(url);
  }
  void CallPhoneNumber () async{
    String PhoneNumber = '+01156467293';
    var phoneUrl = 'tel://$PhoneNumber';

    await  launch(phoneUrl);
  }
  void logOut (context){
    FirebaseAuth _auth = FirebaseAuth.instance;
    showDialog(context: context, builder: (context){

      return  AlertDialog(

        title: Column(
          children: [
            Row(children: [
              Icon(Icons.logout),
              SizedBox(width: 10,),
              Text('Sign Out')
            ],),
            SizedBox(height: 10,),
            TextButton(onPressed: (){}, child: Text('Do you want logOut',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
          ],
        ),
        actions: [
          TextButton(onPressed: ()async{
            await  _auth.signOut();


            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LoginScreen();
            }));

          }, child: Text('Ok')),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
        ],

      );
    });
  }
}