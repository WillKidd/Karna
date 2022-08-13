// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetExerciseCollection on Isar {
  IsarCollection<Exercise> get exercises => getCollection();
}

const ExerciseSchema = CollectionSchema(
  name: 'Exercise',
  schema:
      '{"name":"Exercise","idName":"id","properties":[{"name":"duration","type":"Double"},{"name":"isMeasuredInRepetitions","type":"Bool"},{"name":"name","type":"String"},{"name":"repetitions","type":"Long"},{"name":"sets","type":"Long"},{"name":"weight","type":"Double"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'duration': 0,
    'isMeasuredInRepetitions': 1,
    'name': 2,
    'repetitions': 3,
    'sets': 4,
    'weight': 5
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _exerciseGetId,
  setId: _exerciseSetId,
  getLinks: _exerciseGetLinks,
  attachLinks: _exerciseAttachLinks,
  serializeNative: _exerciseSerializeNative,
  deserializeNative: _exerciseDeserializeNative,
  deserializePropNative: _exerciseDeserializePropNative,
  serializeWeb: _exerciseSerializeWeb,
  deserializeWeb: _exerciseDeserializeWeb,
  deserializePropWeb: _exerciseDeserializePropWeb,
  version: 3,
);

int? _exerciseGetId(Exercise object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _exerciseSetId(Exercise object, int id) {
  object.id = id;
}

List<IsarLinkBase> _exerciseGetLinks(Exercise object) {
  return [];
}

void _exerciseSerializeNative(
    IsarCollection<Exercise> collection,
    IsarRawObject rawObj,
    Exercise object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.duration;
  final _duration = value0;
  final value1 = object.isMeasuredInRepetitions;
  final _isMeasuredInRepetitions = value1;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final value3 = object.repetitions;
  final _repetitions = value3;
  final value4 = object.sets;
  final _sets = value4;
  final value5 = object.weight;
  final _weight = value5;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _duration);
  writer.writeBool(offsets[1], _isMeasuredInRepetitions);
  writer.writeBytes(offsets[2], _name);
  writer.writeLong(offsets[3], _repetitions);
  writer.writeLong(offsets[4], _sets);
  writer.writeDouble(offsets[5], _weight);
}

Exercise _exerciseDeserializeNative(IsarCollection<Exercise> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Exercise(
    duration: reader.readDouble(offsets[0]),
    isMeasuredInRepetitions: reader.readBool(offsets[1]),
    name: reader.readString(offsets[2]),
    repetitions: reader.readLong(offsets[3]),
    sets: reader.readLong(offsets[4]),
    weight: reader.readDouble(offsets[5]),
  );
  object.id = id;
  return object;
}

P _exerciseDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _exerciseSerializeWeb(
    IsarCollection<Exercise> collection, Exercise object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'duration', object.duration);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj, 'isMeasuredInRepetitions', object.isMeasuredInRepetitions);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'repetitions', object.repetitions);
  IsarNative.jsObjectSet(jsObj, 'sets', object.sets);
  IsarNative.jsObjectSet(jsObj, 'weight', object.weight);
  return jsObj;
}

Exercise _exerciseDeserializeWeb(
    IsarCollection<Exercise> collection, dynamic jsObj) {
  final object = Exercise(
    duration:
        IsarNative.jsObjectGet(jsObj, 'duration') ?? double.negativeInfinity,
    isMeasuredInRepetitions:
        IsarNative.jsObjectGet(jsObj, 'isMeasuredInRepetitions') ?? false,
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    repetitions:
        IsarNative.jsObjectGet(jsObj, 'repetitions') ?? double.negativeInfinity,
    sets: IsarNative.jsObjectGet(jsObj, 'sets') ?? double.negativeInfinity,
    weight: IsarNative.jsObjectGet(jsObj, 'weight') ?? double.negativeInfinity,
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _exerciseDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'duration':
      return (IsarNative.jsObjectGet(jsObj, 'duration') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isMeasuredInRepetitions':
      return (IsarNative.jsObjectGet(jsObj, 'isMeasuredInRepetitions') ?? false)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'repetitions':
      return (IsarNative.jsObjectGet(jsObj, 'repetitions') ??
          double.negativeInfinity) as P;
    case 'sets':
      return (IsarNative.jsObjectGet(jsObj, 'sets') ?? double.negativeInfinity)
          as P;
    case 'weight':
      return (IsarNative.jsObjectGet(jsObj, 'weight') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _exerciseAttachLinks(IsarCollection col, int id, Exercise object) {}

extension ExerciseQueryWhereSort on QueryBuilder<Exercise, Exercise, QWhere> {
  QueryBuilder<Exercise, Exercise, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ExerciseQueryWhere on QueryBuilder<Exercise, Exercise, QWhereClause> {
  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idBetween(
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

extension ExerciseQueryFilter
    on QueryBuilder<Exercise, Exercise, QFilterCondition> {
  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> durationGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> durationLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> durationBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'duration',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      isMeasuredInRepetitionsEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isMeasuredInRepetitions',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> repetitionsEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'repetitions',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      repetitionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'repetitions',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> repetitionsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'repetitions',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> repetitionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'repetitions',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> setsEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'sets',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> setsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'sets',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> setsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'sets',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> setsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'sets',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> weightGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'weight',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> weightLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'weight',
      value: value,
    ));
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> weightBetween(
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

extension ExerciseQueryLinks
    on QueryBuilder<Exercise, Exercise, QFilterCondition> {}

extension ExerciseQueryWhereSortBy
    on QueryBuilder<Exercise, Exercise, QSortBy> {
  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy>
      sortByIsMeasuredInRepetitions() {
    return addSortByInternal('isMeasuredInRepetitions', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy>
      sortByIsMeasuredInRepetitionsDesc() {
    return addSortByInternal('isMeasuredInRepetitions', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByRepetitions() {
    return addSortByInternal('repetitions', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByRepetitionsDesc() {
    return addSortByInternal('repetitions', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortBySets() {
    return addSortByInternal('sets', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortBySetsDesc() {
    return addSortByInternal('sets', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByWeight() {
    return addSortByInternal('weight', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByWeightDesc() {
    return addSortByInternal('weight', Sort.desc);
  }
}

extension ExerciseQueryWhereSortThenBy
    on QueryBuilder<Exercise, Exercise, QSortThenBy> {
  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy>
      thenByIsMeasuredInRepetitions() {
    return addSortByInternal('isMeasuredInRepetitions', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy>
      thenByIsMeasuredInRepetitionsDesc() {
    return addSortByInternal('isMeasuredInRepetitions', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByRepetitions() {
    return addSortByInternal('repetitions', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByRepetitionsDesc() {
    return addSortByInternal('repetitions', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenBySets() {
    return addSortByInternal('sets', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenBySetsDesc() {
    return addSortByInternal('sets', Sort.desc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByWeight() {
    return addSortByInternal('weight', Sort.asc);
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByWeightDesc() {
    return addSortByInternal('weight', Sort.desc);
  }
}

extension ExerciseQueryWhereDistinct
    on QueryBuilder<Exercise, Exercise, QDistinct> {
  QueryBuilder<Exercise, Exercise, QDistinct> distinctByDuration() {
    return addDistinctByInternal('duration');
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Exercise, Exercise, QDistinct>
      distinctByIsMeasuredInRepetitions() {
    return addDistinctByInternal('isMeasuredInRepetitions');
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByRepetitions() {
    return addDistinctByInternal('repetitions');
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctBySets() {
    return addDistinctByInternal('sets');
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByWeight() {
    return addDistinctByInternal('weight');
  }
}

extension ExerciseQueryProperty
    on QueryBuilder<Exercise, Exercise, QQueryProperty> {
  QueryBuilder<Exercise, double, QQueryOperations> durationProperty() {
    return addPropertyNameInternal('duration');
  }

  QueryBuilder<Exercise, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Exercise, bool, QQueryOperations>
      isMeasuredInRepetitionsProperty() {
    return addPropertyNameInternal('isMeasuredInRepetitions');
  }

  QueryBuilder<Exercise, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Exercise, int, QQueryOperations> repetitionsProperty() {
    return addPropertyNameInternal('repetitions');
  }

  QueryBuilder<Exercise, int, QQueryOperations> setsProperty() {
    return addPropertyNameInternal('sets');
  }

  QueryBuilder<Exercise, double, QQueryOperations> weightProperty() {
    return addPropertyNameInternal('weight');
  }
}
