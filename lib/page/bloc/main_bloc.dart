import 'package:bloc/bloc.dart';
import 'package:clone_app_amc/database/data_layer.dart';
import 'package:clone_app_amc/database/model.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    List<Locations> listLocation = GetIt.I.get<DataLayer>().listLocation;
    on<MainEvent>((event, emit) {
      emit(ListLoad(listLocation)); 
    });
    on<LoadLocation>((event, emit) {
      emit(ListLoad(listLocation)); 
    },);
  
  on<UpdateLocation>((event, emit) {
      final Locations location = event.location;
      for(int i=0;i<listLocation.length;i++){
        if(listLocation[i].title==event.location.title){
          listLocation[i]=location;
        }}
      emit(ListUpdated(GetIt.I.get<DataLayer>().listLocation));
    });
}
}