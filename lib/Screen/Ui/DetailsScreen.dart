
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_store/Screen/Ui/Employee_Profile.dart';

import 'ProfileScreen.dart';

class DetailsScreen extends StatefulWidget {
   final String CategoryId ;
 final  String CategoryName;
 const   DetailsScreen({Key? key, required this.CategoryId, required this.CategoryName}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  final List <Map<String , dynamic>> Persons = [
    {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Mohammed saad" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Ahmed Samir" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Saad Saad" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Ahmed Khalaf" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Abdullah Mohammed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Tarek Hamed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Ahmed Saad" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
    {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },


  ];
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              SizedBox(
                height: 700,
                child: ListView.builder(
                    itemCount: Persons.length,
                    itemBuilder: (context , index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 125,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return employeeProfile();
                                }));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,


                                    decoration: BoxDecoration(
                                        image: DecorationImage(fit: BoxFit.fill,image: NetworkImage("${Persons.elementAt(index)['ImageUrl']}",))
                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Column(

                                      children: [


                                        Text("House Clean",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                            SizedBox(height: 7,),
                                        Text("${Persons.elementAt(index)['name']}" , style: TextStyle(fontStyle: FontStyle.italic),),
                                        Text("50 Review" , style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )

            ],
          ),
        )
    );
  }
}

class WorkerItem extends StatelessWidget {
  const WorkerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network("https://img.icons8.com/?size=512&id=7819&format=png",width: 40,),
          SizedBox(width: 12,),
          Text("your name"),

          MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ProfileScreen();
            }));
          } , child: Text('Visit',style: TextStyle(color: Colors.white),),color: Colors.black,)

        ],
      ),
    );
  }
}
