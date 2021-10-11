import 'dart:async';

import 'package:awfar/views/pinCode/states/resend_code.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResendCodeCubit extends Cubit<ResendCodeStates>{
  ResendCodeCubit() : super(ResendCodeCounting());

  static ResendCodeCubit get (context)=> BlocProvider.of(context);

  int seconds = 60;
  Timer _timer;
  void count(){
    seconds = 60;
    emit(ResendCodeCounting());
    if(_timer != null) _timer.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(seconds <= 0){
        timer.cancel();
        emit(ResendCodeFinished());
      }else{
        seconds--;
        emit(ResendCodeCounting());
      }
    });
  }

}