import 'package:get_storage/get_storage.dart';

class AppLocalStorage {
  static final AppLocalStorage _instance = AppLocalStorage._internal();
  factory AppLocalStorage() => _instance;
  AppLocalStorage._internal();

  final storage = GetStorage();

  // A Generic Method to save data
  Future<void> saveData<T>(String key, T value) async {
    await storage.write(key, value);
  }

  // Reading data
  T? readData<T>(String key) {
    return storage.read<T>(key);
  }

  // Removing Data
  Future<void> removeData(String key) async {
    await storage.remove(key);
  }

  // Clearing all data in the Storage
  Future<void> clearAll() async {
    await storage.erase();
  }
}
