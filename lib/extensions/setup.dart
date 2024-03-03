import 'package:clone_app_amc/database/data_layer.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

void setup() async{
await GetStorage.init();
GetIt.I.registerLazySingleton<DataLayer>(() => DataLayer());
await GetIt.I.get<DataLayer>().LoadData();

}