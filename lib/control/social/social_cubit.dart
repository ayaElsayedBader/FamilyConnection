

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/control/social/social_state.dart';

class SocialCubit extends Cubit<SocialState> {
  SocialCubit() : super(SocialInitial());
 static  SocialCubit get( context)=> BlocProvider.of(context);
  int currentState=0;
  void current( {   required int index}){
    currentState=index;
    emit(   SocialSuccess());


  }
}
