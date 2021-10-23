import 'package:hive_flutter/hive_flutter.dart';
part 'model_data.g.dart';

@HiveType(typeId: 1)
class ModelData {
  @HiveField(0)
  String nama;
  @HiveField(1)
  String umur;
  @HiveField(2)
  String tanggal;
  @HiveField(3)
  String input1;
  @HiveField(4)
  String input2;
  @HiveField(5)
  List<String> input3;
  @HiveField(6)
  String input4;
  @HiveField(7)
  String hasil;

  ModelData(this.nama, this.umur, this.tanggal, this.input1, this.input2,
      this.input3, this.input4, this.hasil);
}
