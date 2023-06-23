
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
    const ProfileScreen({Key? key}) : super(key: key);

    @override
    State<ProfileScreen> createState() => _ProfileScreenState();
  }

  class _ProfileScreenState extends State<ProfileScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(

        appBar: AppBar(
          elevation: 0,
          title: TextButton(onPressed: () {  }, child: Text('Back',style: TextStyle(color: Colors.indigo,fontSize: 22,fontStyle: FontStyle.italic),),),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: Padding(
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
                            Align( alignment: Alignment.center, child: Text("omar"==null ? "no name" : "omar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                            SizedBox(height: 10,),
                            Align( alignment: Alignment.center, child: Text('Joined Since date ',style: TextStyle(fontSize: 17,color: Colors.indigo),)),
                            SizedBox(height: 20,),
                            Divider(thickness: 1,),
                            SizedBox(height: 40,),
                            Text('Contact Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 20,),
                            Text("email",style: TextStyle(color: Colors.indigo),),
                            SizedBox(height: 15,),
                            Text('phoneNumber :0115674899',style: TextStyle(color: Colors.indigo),),
                            SizedBox(height: 10,),
                            Divider(thickness: 1,),
                            SizedBox(height: 10,),



                            SizedBox(height: 20,),
                            Divider(thickness: 1,),
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
                                      Text('Logout',style: TextStyle(color: Colors.white,fontSize: 18),),
                                      SizedBox(width: 10,),
                                      Icon(Icons.logout_rounded,color: Colors.white,)
                                    ],
                                  ),
                                  color: Colors.pink,
                                ),
                              ),
                            ),


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
      );
    }
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


