import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as pathprovider;
import 'package:sinpeman_covid_19/model/model_data.dart';

class Init {
  static Future<void> init() async {
    var appDoc = await pathprovider.getApplicationDocumentsDirectory();
    Hive.init(appDoc.path);
    Hive.registerAdapter(ModelDataAdapter());
    Hive.openBox<ModelData>("modeldata");
  }
}
