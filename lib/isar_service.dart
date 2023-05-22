import 'dart:typed_data';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:store_image_in_local_database/database_adapter.dart';
import 'package:store_image_in_local_database/entities/image_entity.dart';

class IsarService extends DatabaseAdapter {
  late Future<Isar> isar;

  static Future<Isar> openDB() async {
    final dir = await getApplicationSupportDirectory();
    return Isar.open(schemas: [ImageEntitySchema], directory: dir.path);
  }

  IsarService() {
    isar = openDB();
  }

  @override
  Future<void> storeImage(Uint8List imageBytes) async {
    final image = ImageEntity(image: imageBytes);

    Isar db = await isar;

    db.writeTxn((isar) async => image..id = await isar.imageEntitys.put(image));
  }

  @override
  Future<List<Uint8List>> getImages() async {
    Isar db = await isar;
    final images = await db.imageEntitys.where().findAll();
    return images.map((image) => image.image).toList();
  }
}
