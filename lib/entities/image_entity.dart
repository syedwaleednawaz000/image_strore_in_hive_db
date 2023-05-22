import 'dart:typed_data';

import 'package:isar/isar.dart';

part 'image_entity.g.dart';

@Collection()
class ImageEntity {
  @Id()
  int? id;

  Uint8List image;

  ImageEntity({required this.image});
}
