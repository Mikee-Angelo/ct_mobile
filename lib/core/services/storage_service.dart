import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/errors/exception.dart';

abstract class StorageService {
  Future<void> setStorageValue(String key, dynamic value);
  String getStringValue(String key);
  Future<void> deleteStorage(String key);
}

class StorageServiceImpl extends StorageService {
  @override
  Future<void> setStorageValue(String key, value) async {
    try {
      await setValue(key, value);
    } on Exception {
      throw const StorageException();
    }
  }

  @override
  String getStringValue(String key) {
    try {
      final data = getStringAsync(key);
      if(data.isEmptyOrNull) throw Exception();
      return data;
    } on Exception {
      throw const StorageException();
    }
  }

  @override
  Future<void> deleteStorage(String key) async {
    try {
      await removeKey(key);
    } on Exception {
      throw const StorageException();
    }
  }
}
