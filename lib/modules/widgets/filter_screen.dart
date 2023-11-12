import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_app/cubit/cubit.dart';
import 'package:hotel_app/cubit/states.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (BuildContext context) =>HotelCubit(),
        child: BlocConsumer<HotelCubit,HotelStates>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state)
          {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              height: 500,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  leading: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Reset',style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),

                      ),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(FontAwesomeIcons.xmark,color: Colors.black,),
                    ),
                  ],
                ),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 15),
                      child: Row(
                        children: [
                          Text(
                            'PRICE  PER  NIGHT',
                            style: TextStyle(
                                fontWeight:FontWeight.bold ),),
                          SizedBox(width: 150,),
                          Container(
                            width:60,
                            height:50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Center(
                                  child: Text(

                                      r'540+ $',
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    Slider(
                      value: HotelCubit.get(context).slider,
                      min: 20,
                      max: 540,
                      onChanged: (value)
                      {
                        HotelCubit.get(context).sliderValue(value);
                      },
                    ),
                    Row(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          r'$20',
                          style: TextStyle(
                              fontSize: 17,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(width: 275,),
                      Text(
                          r'$540',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),

                    ],
                    ),
                    SizedBox(height: 7,),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('RATING',style: TextStyle(fontSize: 17),),
                        SizedBox(height: 10,),
                        Container(
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index)
                              {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.red[300],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),

                                      ),

                                    ),
                                    child: Center(
                                      child: Text(
                                        '0+',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },

                              itemCount: 5,
                          ),
                        ),
                          SizedBox(height: 25,),
                          Text('HOTEL CLASS',style: TextStyle(fontSize: 17),),
                          SizedBox(height: 7,),
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                  Icon(Icons.star,color: Colors.yellow[700],),
                                  Icon(Icons.star,color: Colors.yellow[700],),
                                ],
                                ),

                              ),
                              SizedBox(width: 23,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.yellow[700],),
                                    Icon(Icons.star,color: Colors.yellow[700],),
                                  ],
                                ),

                              ),
                              SizedBox(width: 23,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.star,color: Colors.yellow[700],),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow[700],),
                                        Icon(Icons.star,color: Colors.yellow[700],),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                              SizedBox(width: 23,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow[700],),
                                        Icon(Icons.star,color: Colors.yellow[700],),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow[700],),
                                        Icon(Icons.star,color: Colors.yellow[700],),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                              SizedBox(width: 23,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star,size:16,color: Colors.yellow[700],),
                                            SizedBox(width: 3,),
                                            Icon(Icons.star,size:16,color: Colors.yellow[700],),
                                          ],
                                        ),
                                      ),
                                      Icon(Icons.star,size:16,color: Colors.yellow[700],),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star,size:16,color: Colors.yellow[700],),
                                            SizedBox(width: 3,),
                                            Icon(Icons.star,size:16,color: Colors.yellow[700],),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ),
                            ],
                          ),

                          // SizedBox(height: 10,),

                      ],),
                    ),

                  ],
                ),
              ),
            );
          },

        ),
      );
  }
}
