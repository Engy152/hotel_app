import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_app/modules/widgets/filter_screen.dart';
import 'package:hotel_app/modules/widgets/default_card.dart';
import 'package:hotel_app/modules/widgets/sort_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            ///////////////////////
            Padding(
              padding: const EdgeInsets.only(right: 13,left: 13),
              child: Container(
                width: 400,
                height: 70,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                          )
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 40,),
                      GestureDetector(
                        onTap: ()
                        {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                              )
                            ),
                              context: context,
                              builder: (context)
                              {
                                return FilterScreen();
                              },
                          );

                        },
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.arrowDownWideShort,color: Colors.blue,),
                            SizedBox(width: 7,),
                            Text(
                              'Filters',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 70,),
                      Icon(FontAwesomeIcons.arrowDownWideShort,color: Colors.blue,),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: ()
                        {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                )
                            ),
                            context: context,
                            builder: (context)
                            {
                              return SortScreen();
                            },
                          );

                        },
                        child: Text(
                          'Sort',
                          style: TextStyle(
                              color: Colors.blue,fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index) => CardHomePage(),
                  itemCount: 10,
              ),
            )


            // Padding(
            //   padding: const EdgeInsets.only(top:15,left: 13.0,right: 13),
            //   child:Card(
            //     color: Colors.red,
            //
            //   ),
            //   // Container(
            //   //   decoration: BoxDecoration(
            //   //
            //   //     color: Colors.orangeAccent,
            //   //     borderRadius: BorderRadius.all(Radius.circular(15),
            //   //     ),
            //   //   ),
            //   //   width: 400,
            //   //   height: 300,
            //   //
            //   //
            //   // ),
            // ),


          ],
        )
      ),

    );
  }
}
