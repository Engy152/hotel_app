import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/cubit/states.dart';

class HotelCubit extends Cubit<HotelStates>
{
  HotelCubit():super(AppInitialStates());
  static HotelCubit get(context) => BlocProvider.of(context);

  double slider = 50 ;
  void sliderValue (value)
  {
    slider = value;
    emit(SliderStates());

  }

}