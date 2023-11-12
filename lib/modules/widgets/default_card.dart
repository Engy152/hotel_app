import 'package:flutter/material.dart';

class CardHomePage extends StatelessWidget {
  const CardHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 13,left: 13),
      child: Container(
        width: 400,
        height: 360,
        child: Card(
          elevation: 7,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Column(
            children: [
              Container(
                width:double.infinity,
                height:110,
                decoration: BoxDecoration(

                  color: Colors.cyanAccent[400],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,color:Colors.grey[600],size: 15),
                        Icon(Icons.star,color:Colors.grey[600],size: 15),
                        Icon(Icons.star,color:Colors.grey[600],size: 15),
                        Icon(Icons.star,color:Colors.grey[600],size: 15),
                        Icon(Icons.star,color:Colors.grey[600],size: 15),
                        SizedBox(width: 7.0,),
                        Text('Hotel'),
                      ],),
                    SizedBox(height: 10,),
                    Text(
                      'Renaissance Cairo Mirage City Hotel',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.green[700],
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Center(
                            child: Text(
                              '8.8',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('Excellent'),
                        SizedBox(width: 13,),
                        Icon(Icons.location_on,size: 13,),
                        SizedBox(width: 5,),
                        Text('12 mi from center'),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      width:330,
                      height:90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0,left: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              child: Text(
                                ' Our lowest price',
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),

                                ),

                                color: Colors.cyan[100],
                              ),
                              width: 117,
                              height: 20,
                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: [
                                Text(
                                  r'$161',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.green[700],
                                  ),
                                ),
                                SizedBox(width: 160,),
                                Text(
                                  'View Deal',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                                SizedBox(width: 7,),
                                Icon(Icons.arrow_forward_ios,size: 17,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Renaissance',),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Text('More Prices',),
                    ),
                  ],
                ),
              ),
            ],
          ),


        ),
      ),
    );
  }
}
