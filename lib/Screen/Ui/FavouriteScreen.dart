
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
    const FavouriteScreen({Key? key}) : super(key: key);

    @override
    State<FavouriteScreen> createState() => _FavouriteScreenState();
  }

  class _FavouriteScreenState extends State<FavouriteScreen> {
    @override

  final  String Imageurl = "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png";


    final List <Map<String , dynamic>> Persons = [
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },


    ];

    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Favourite",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  ),

                  SizedBox(height: 10,),

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
                          );
                        }),
                  )

                ],
              ),
            ),
          ),
        ),
      );
    }
  }

  class ForyouItem extends StatelessWidget {
     ForyouItem({Key? key}) : super(key: key);

    @override

    final List <Map<String , dynamic>> Persons = [
      {"name" : "Omar Ahmed" , "ImageUrl" : "https://www.jobiano.com/uploads/jobs/28419/marketing_image/female-mechanical-technical-office-engineer-jobs-60d9ed6775a61.png" },

    ];

    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              Container(
                width: 50,


                decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.fill,image: NetworkImage("",))
                ),

              ),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(

                  children: [


                    Text("House Clean",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                    Text("omar sabry"),

                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }
