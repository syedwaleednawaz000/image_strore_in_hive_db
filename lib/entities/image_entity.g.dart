// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetImageEntityCollection on Isar {
  IsarCollection<ImageEntity> get imageEntitys => getCollection();
}

const ImageEntitySchema = CollectionSchema(
  name: 'ImageEntity',
  schema:
      '{"name":"ImageEntity","idName":"id","properties":[{"name":"image","type":"ByteList"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'image': 0},
  listProperties: {'image'},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _imageEntityGetId,
  setId: _imageEntitySetId,
  getLinks: _imageEntityGetLinks,
  attachLinks: _imageEntityAttachLinks,
  serializeNative: _imageEntitySerializeNative,
  deserializeNative: _imageEntityDeserializeNative,
  deserializePropNative: _imageEntityDeserializePropNative,
  serializeWeb: _imageEntitySerializeWeb,
  deserializeWeb: _imageEntityDeserializeWeb,
  deserializePropWeb: _imageEntityDeserializePropWeb,
  version: 3,
);

int? _imageEntityGetId(ImageEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _imageEntitySetId(ImageEntity object, int id) {
  object.id = id;
}

List<IsarLinkBase> _imageEntityGetLinks(ImageEntity object) {
  return [];
}

void _imageEntitySerializeNative(
    IsarCollection<ImageEntity> collection,
    IsarRawObject rawObj,
    ImageEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.image;
  dynamicSize += (value0.length) * 1;
  final _image = value0;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _image);
}

ImageEntity _imageEntityDeserializeNative(
    IsarCollection<ImageEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ImageEntity(
    image: reader.readBytes(offsets[0]),
  );
  object.id = id;
  return object;
}

P _imageEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBytes(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _imageEntitySerializeWeb(
    IsarCollection<ImageEntity> collection, ImageEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'image', object.image);
  return jsObj;
}

ImageEntity _imageEntityDeserializeWeb(
    IsarCollection<ImageEntity> collection, dynamic jsObj) {
  final object = ImageEntity(
    image: IsarNative.jsObjectGet(jsObj, 'image') ?? Uint8List(0),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _imageEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'image':
      return (IsarNative.jsObjectGet(jsObj, 'image') ?? Uint8List(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _imageEntityAttachLinks(IsarCollection col, int id, ImageEntity object) {}

extension ImageEntityQueryWhereSort
    on QueryBuilder<ImageEntity, ImageEntity, QWhere> {
  QueryBuilder<ImageEntity, ImageEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ImageEntityQueryWhere
    on QueryBuilder<ImageEntity, ImageEntity, QWhereClause> {
  QueryBuilder<ImageEntity, ImageEntity, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterWhereClause> idNotEqualTo(
      int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension ImageEntityQueryFilter
    on QueryBuilder<ImageEntity, ImageEntity, QFilterCondition> {
  QueryBuilder<ImageEntity, ImageEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ImageEntityQueryLinks
    on QueryBuilder<ImageEntity, ImageEntity, QFilterCondition> {}

extension ImageEntityQueryWhereSortBy
    on QueryBuilder<ImageEntity, ImageEntity, QSortBy> {
  QueryBuilder<ImageEntity, ImageEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ImageEntityQueryWhereSortThenBy
    on QueryBuilder<ImageEntity, ImageEntity, QSortThenBy> {
  QueryBuilder<ImageEntity, ImageEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ImageEntity, ImageEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ImageEntityQueryWhereDistinct
    on QueryBuilder<ImageEntity, ImageEntity, QDistinct> {
  QueryBuilder<ImageEntity, ImageEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension ImageEntityQueryProperty
    on QueryBuilder<ImageEntity, ImageEntity, QQueryProperty> {
  QueryBuilder<ImageEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ImageEntity, Uint8List, QQueryOperations> imageProperty() {
    return addPropertyNameInternal('image');
  }
}
