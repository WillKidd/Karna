// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSystemCollection on Isar {
  IsarCollection<System> get systems => getCollection();
}

const SystemSchema = CollectionSchema(
  name: 'System',
  schema:
      '{"name":"System","idName":"id","properties":[],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _systemGetId,
  setId: _systemSetId,
  getLinks: _systemGetLinks,
  attachLinks: _systemAttachLinks,
  serializeNative: _systemSerializeNative,
  deserializeNative: _systemDeserializeNative,
  deserializePropNative: _systemDeserializePropNative,
  serializeWeb: _systemSerializeWeb,
  deserializeWeb: _systemDeserializeWeb,
  deserializePropWeb: _systemDeserializePropWeb,
  version: 3,
);

int? _systemGetId(System object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _systemSetId(System object, int id) {
  object.id = id;
}

List<IsarLinkBase> _systemGetLinks(System object) {
  return [];
}

void _systemSerializeNative(
    IsarCollection<System> collection,
    IsarRawObject rawObj,
    System object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
}

System _systemDeserializeNative(IsarCollection<System> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = System();
  object.id = id;
  return object;
}

P _systemDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _systemSerializeWeb(IsarCollection<System> collection, System object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  return jsObj;
}

System _systemDeserializeWeb(IsarCollection<System> collection, dynamic jsObj) {
  final object = System();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _systemDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _systemAttachLinks(IsarCollection col, int id, System object) {}

extension SystemQueryWhereSort on QueryBuilder<System, System, QWhere> {
  QueryBuilder<System, System, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SystemQueryWhere on QueryBuilder<System, System, QWhereClause> {
  QueryBuilder<System, System, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<System, System, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<System, System, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<System, System, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<System, System, QAfterWhereClause> idBetween(
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

extension SystemQueryFilter on QueryBuilder<System, System, QFilterCondition> {
  QueryBuilder<System, System, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<System, System, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<System, System, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<System, System, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<System, System, QAfterFilterCondition> idBetween(
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

extension SystemQueryLinks on QueryBuilder<System, System, QFilterCondition> {}

extension SystemQueryWhereSortBy on QueryBuilder<System, System, QSortBy> {
  QueryBuilder<System, System, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<System, System, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension SystemQueryWhereSortThenBy
    on QueryBuilder<System, System, QSortThenBy> {
  QueryBuilder<System, System, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<System, System, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension SystemQueryWhereDistinct on QueryBuilder<System, System, QDistinct> {
  QueryBuilder<System, System, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension SystemQueryProperty on QueryBuilder<System, System, QQueryProperty> {
  QueryBuilder<System, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}
