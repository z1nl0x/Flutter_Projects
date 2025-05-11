import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // Função genérica para salvar dados
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Função genérica para leitura de dados
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Função genérica para remoção de dados
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Função genérica para remoção total de dados
  Future<void> clearAll() async {
    await _storage.erase();
  }

}