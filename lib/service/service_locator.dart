import 'package:get_it/get_it.dart';
import 'package:custom_widget_startup/service/local_storage_service.dart';

GetIt locator = GetIt.I;

Future setupLocator() async {
  var instance = await LocalStorageService.getInstance();
  locator.registerSingleton<LocalStorageService>(instance);
}
