// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetUserCollection on Isar {
  IsarCollection<User> get users => getCollection();
}

const UserSchema = CollectionSchema(
  name: 'User',
  schema:
      '{"name":"User","idName":"id","properties":[{"name":"age","type":"Long"},{"name":"height","type":"Double"},{"name":"name","type":"String"},{"name":"weight","type":"Double"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'age': 0, 'height': 1, 'name': 2, 'weight': 3},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _userGetId,
  setId: _userSetId,
  getLinks: _userGetLinks,
  attachLinks: _userAttachLinks,
  serializeNative: _userSerializeNative,
  deserializeNative: _userDeserializeNative,
  deserializePropNative: _userDeserializePropNative,
  serializeWeb: _userSerializeWeb,
  deserializeWeb: _userDeserializeWeb,
  deserializePropWeb: _userDeserializePropWeb,
  version: 3,
);

int? _userGetId(User object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _userSetId(User object, int id) {
  object.id = id;
}

List<IsarLinkBase> _userGetLinks(User object) {
  return [];
}

void _userSerializeNative(IsarCollection<User> collection, IsarRawObject rawObj,
    User object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.age;
  final _age = value0;
  final value1 = object.height;
  final _height = value1;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final value3 = object.weight;
  final _weight = value3;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _age);
  writer.writeDouble(offsets[1], _height);
  writer.writeBytes(offsets[2], _name);
  writer.writeDouble(offsets[3], _weight);
}

User _userDeserializeNative(IsarCollection<User> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = User(
    reader.readString(offsets[2]),
  );
  object.age = reader.readLong(offsets[0]);
  object.height = reader.readDouble(offsets[1]);
  object.id = id;
  object.weight = reader.readDouble(offsets[3]);
  return object;
}

P _userDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _userSerializeWeb(IsarCollection<User> collection, User object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'age', object.age);
  IsarNative.jsObjectSet(jsObj, 'height', object.height);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'weight', object.weight);
  return jsObj;
}

User _userDeserializeWeb(IsarCollection<User> collection, dynamic jsObj) {
  final object = User(
    IsarNative.jsObjectGet(jsObj, 'name') ?? '',
  );
  object.age = IsarNative.jsObjectGet(jsObj, 'age') ?? double.negativeInfinity;
  object.height =
      IsarNative.jsObjectGet(jsObj, 'height') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.weight =
      IsarNative.jsObjectGet(jsObj, 'weight') ?? double.negativeInfinity;
  return object;
}

P _userDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'age':
      return (IsarNative.jsObjectGet(jsObj, 'age') ?? double.negativeInfinity)
          as P;
    case 'height':
      return (IsarNative.jsObjectGet(jsObj, 'height') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'weight':
      return (IsarNative.jsObjectGet(jsObj, 'weight') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _userAttachLinks(IsarCollection col, int id, User object) {}

extension UserQueryWhereSort on QueryBuilder<User, User, QWhere> {
  QueryBuilder<User, User, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension UserQueryWhere on QueryBuilder<User, User, QWhereClause> {
  QueryBuilder<User, User, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<User, User, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<User, User, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> idBetween(
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

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> ageEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> ageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> ageLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> ageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'age',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> heightGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'height',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> heightLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'height',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> heightBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'height',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> idBetween(
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

  QueryBuilder<User, User, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> weightGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'weight',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> weightLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'weight',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> weightBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'weight',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }
}

extension UserQueryLinks on QueryBuilder<User, User, QFilterCondition> {}

extension UserQueryWhereSortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByHeight() {
    return addSortByInternal('height', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByHeightDesc() {
    return addSortByInternal('height', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByWeight() {
    return addSortByInternal('weight', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByWeightDesc() {
    return addSortByInternal('weight', Sort.desc);
  }
}

extension UserQueryWhereSortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByHeight() {
    return addSortByInternal('height', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByHeightDesc() {
    return addSortByInternal('height', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByWeight() {
    return addSortByInternal('weight', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByWeightDesc() {
    return addSortByInternal('weight', Sort.desc);
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QDistinct> distinctByAge() {
    return addDistinctByInternal('age');
  }

  QueryBuilder<User, User, QDistinct> distinctByHeight() {
    return addDistinctByInternal('height');
  }

  QueryBuilder<User, User, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<User, User, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByWeight() {
    return addDistinctByInternal('weight');
  }
}

extension UserQueryProperty on QueryBuilder<User, User, QQueryProperty> {
  QueryBuilder<User, int, QQueryOperations> ageProperty() {
    return addPropertyNameInternal('age');
  }

  QueryBuilder<User, double, QQueryOperations> heightProperty() {
    return addPropertyNameInternal('height');
  }

  QueryBuilder<User, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<User, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<User, double, QQueryOperations> weightProperty() {
    return addPropertyNameInternal('weight');
  }
}
