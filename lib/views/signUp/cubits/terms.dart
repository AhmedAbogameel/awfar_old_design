import 'package:awfar/views/signUp/states/terms.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpTermsCubit extends Cubit<SignUpTermsStates>{
  SignUpTermsCubit() : super(SignUpTermsBuild());

  static SignUpTermsCubit get(context)=> BlocProvider.of(context);

  bool isAgreed = false;

  void agree(bool value){
    isAgreed = value;
    emit(SignUpTermsBuild());
  }

}