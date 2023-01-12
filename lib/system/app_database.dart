import 'package:flutter_arc/datamodels/address.dart';

class AppDatabase {
  Future<Address?> getCurrentAddress() async => Address();
}
