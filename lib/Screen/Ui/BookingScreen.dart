
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  @override
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
    return   SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("My BookMark ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
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

                                        Text("omar sabry"),

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
  const ForyouItem({Key? key}) : super(key: key);

  @override
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
                  image: DecorationImage(fit: BoxFit.fill,image: NetworkImage("https://img.icons8.com/?size=512&id=hgCYIjaa8Iqo&format=png",))
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



