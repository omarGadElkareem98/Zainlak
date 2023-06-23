
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_store/Constant/AppColor.dart';

import 'DetailsScreen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List <Map<String , dynamic>> Serv = [

    { "name" :  'فني تبريد وتكيف',
      "ImageUrl" : 'https://img.icons8.com/?size=512&id=hgCYIjaa8Iqo&format=png'},
    { "name" : 'سباك',
      "ImageUrl" : 'https://img.icons8.com/?size=512&id=fJtcL3pXcD0X&format=png'},
    { "name" :  'كهربائي',
      "ImageUrl": 'https://img.icons8.com/?size=512&id=rLXi4piOlLRV&format=png'},
  ];

  final List <Map<String , dynamic>> Persons = [
    {"name" : "Omar Ahmed" , "ImageUrl" : "https://images.unsplash.com/photo-1570470836811-78ef04bb23d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },
    {"name" : "Omar Ahmed" , "ImageUrl" : "https://images.unsplash.com/photo-1570470836811-78ef04bb23d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },
    {"name" : "Omar Ahmed" , "ImageUrl" : "https://images.unsplash.com/photo-1570470836811-78ef04bb23d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },
    {"name" : "Omar Ahmed" , "ImageUrl" : "https://images.unsplash.com/photo-1570470836811-78ef04bb23d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },
    {"name" : "Omar Ahmed" , "ImageUrl" : "https://images.unsplash.com/photo-1570470836811-78ef04bb23d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },

  ];
  @override

      void NavigateToDetailsScreen (index){
        Navigator.push(context, MaterialPageRoute(builder: (context,){
          return DetailsScreen(CategoryId: "", CategoryName: '${Serv.elementAt(index)['name']}');
        }));
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColor.AppColors,
                    borderRadius: BorderRadius.circular(18),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network("https://img.icons8.com/?size=512&id=23241&format=png",width: 50,),
                            SizedBox(width: 8,),
                            Text(" Omar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            SizedBox(width: 200,),
                            Row(
                              children: [
                                Icon(Icons.notifications_outlined,color: Colors.white,),
                              ],
                            ),
                          ],
                        ),

                        Divider(thickness: 1,color: Colors.white,)
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(


                    keyboardType: TextInputType.text,

                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search,color: Colors.white,),
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),

                        ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                    ),

                  ),

                ),
              ],
            ),
              SizedBox(height: 12,),

            Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
              ),

              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CarouselSlider(


                    items: [

                      Image.network(
                        'https://skywestpropertysolutions.com/wp-content/uploads/2017/05/pexels-photo-175039-1.jpeg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpYUhxjdCnVeqa1JH5mpTkeoEWbspKeHdMb2OSUh4dD2HKV3s5z5A_kZ2EkpdNIBwo-ww&usqp=CAU',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqJ2ezf__b97rc4Hp7Hlog6k-NSuI-leU9aJZBJ8x3LbYT3DVk6Whw5IkN_cOP-yXtWJo&usqp=CAU',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ],
                    options: CarouselOptions(
                        autoPlay: true,
                        reverse: true,
                        viewportFraction: 1,
                        initialPage: 0,
                        height: 200


                    ),

                  ),


                ],
              ),
            ),

            SizedBox(height: 12,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),

            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemCount: Serv.length,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap : (){
                            NavigateToDetailsScreen(index);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage("${Serv.elementAt(index)['ImageUrl']}"))
                            ),

                          ),
                        ),

                        Text("${Serv.elementAt(index)['name']}" , style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  );
                }),
              ),
            ),

            SizedBox(height: 8,),

            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Text("Most Popular Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
                SizedBox(height: 12,),

            SizedBox(

              height: 400,
              child: ListView.builder(
                itemCount: Persons.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context , index){
                    return  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 125,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 100,


                                decoration: BoxDecoration(
                                    image: DecorationImage(fit: BoxFit.fill,image: NetworkImage("${Persons.elementAt(index)['ImageUrl']},"))
                                ),

                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(

                              children: [


                                Text("House Clean",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                                Text("omar sabry"),

                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),








          ],

        ),
      ),
    );
  }
}

// //   class ServicesItem extends StatefulWidget {
// //
// //
// //       ServicesItem({Key? key,}) : super(key: key);
// //
// //   @override
// //   State<ServicesItem> createState() => _ServicesItemState();
// // }
//
// class _ServicesItemState extends State<ServicesItem> {
//     @override
//     final List <Map<String , dynamic>> Serv = [
//
//       { "name" :  'فني تبريد وتكيف',
//         "ImageUrl" : 'https://img.icons8.com/?size=512&id=hgCYIjaa8Iqo&format=png'},
//       { "name" : 'سباك',
//         "ImageUrl" : 'https://img.icons8.com/?size=512&id=fJtcL3pXcD0X&format=png'},
//       { "name" :  'كهربائي',
//         "ImageUrl": 'https://img.icons8.com/?size=512&id=rLXi4piOlLRV&format=png'},
//     ];
//
//     Widget build (BuildContext context, ) {
//       return Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Container(
//               width: 50,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(image: NetworkImage("${Serv.elementAt(index)['ImageUrl']}"))
//                 ),
//
//             ),
//
//             Text("${Serv.elementAt(index)['name']}")
//           ],
//         ),
//       );
//     }
// }

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
            Column(

              children: [


                Text("House Clean",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                Text("omar sabry"),

              ],
            )
          ],
        ),
      ),
    );
  }
}



