// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetWorkoutCollection on Isar {
  IsarCollection<Workout> get workouts => getCollection();
}

const WorkoutSchema = CollectionSchema(
  name: 'Workout',
  schema:
      '{"name":"Workout","idName":"id","properties":[{"name":"description","type":"String"},{"name":"exercises","type":"LongList"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'description': 0, 'exercises': 1, 'name': 2},
  listProperties: {'exercises'},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _workoutGetId,
  setId: _workoutSetId,
  getLinks: _workoutGetLinks,
  attachLinks: _workoutAttachLinks,
  serializeNative: _workoutSerializeNative,
  deserializeNative: _workoutDeserializeNative,
  deserializePropNative: _workoutDeserializePropNative,
  serializeWeb: _workoutSerializeWeb,
  deserializeWeb: _workoutDeserializeWeb,
  deserializePropWeb: _workoutDeserializePropWeb,
  version: 3,
);

int? _workoutGetId(Workout object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _workoutSetId(Workout object, int id) {
  object.id = id;
}

List<IsarLinkBase> _workoutGetLinks(Workout object) {
  return [];
}

void _workoutSerializeNative(
    IsarCollection<Workout> collection,
    IsarRawObject rawObj,
    Workout object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_description.length) as int;
  final value1 = object.exercises;
  dynamicSize += (value1.length) * 8;
  final _exercises = value1;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _description);
  writer.writeLongList(offsets[1], _exercises);
  writer.writeBytes(offsets[2], _name);
}

Workout _workoutDeserializeNative(IsarCollection<Workout> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Workout(
    name: reader.readString(offsets[2]),
  );
  object.description = reader.readString(offsets[0]);
  object.exercises = reader.readLongList(offsets[1]) ?? [];
  object.id = id;
  return object;
}

P _workoutDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _workoutSerializeWeb(
    IsarCollection<Workout> collection, Workout object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'exercises', object.exercises);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

Workout _workoutDeserializeWeb(
    IsarCollection<Workout> collection, dynamic jsObj) {
  final object = Workout(
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
  );
  object.description = IsarNative.jsObjectGet(jsObj, 'description') ?? '';
  object.exercises = (IsarNative.jsObjectGet(jsObj, 'exercises') as List?)
          ?.map((e) => e ?? double.negativeInfinity)
          .toList()
          .cast<int>() ??
      [];
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _workoutDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'exercises':
      return ((IsarNative.jsObjectGet(jsObj, 'exercises') as List?)
              ?.map((e) => e ?? double.negativeInfinity)
              .toList()
              .cast<int>() ??
          []) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _workoutAttachLinks(IsarCollection col, int id, Workout object) {}

extension WorkoutQueryWhereSort on QueryBuilder<Workout, Workout, QWhere> {
  QueryBuilder<Workout, Workout, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension WorkoutQueryWhere on QueryBuilder<Workout, Workout, QWhereClause> {
  QueryBuilder<Workout, Workout, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Workout, Workout, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Workout, Workout, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Workout, Workout, QAfterWhereClause> idBetween(
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

extension WorkoutQueryFilter
    on QueryBuilder<Workout, Workout, QFilterCondition> {
  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> exercisesAnyEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'exercises',
      value: value,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> exercisesAnyGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'exercises',
      value: value,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> exercisesAnyLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'exercises',
      value: value,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> exercisesAnyBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'exercises',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Workout, Workout, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension WorkoutQueryLinks
    on QueryBuilder<Workout, Workout, QFilterCondition> {}

extension WorkoutQueryWhereSortBy on QueryBuilder<Workout, Workout, QSortBy> {
  QueryBuilder<Workout, Workout, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension WorkoutQueryWhereSortThenBy
    on QueryBuilder<Workout, Workout, QSortThenBy> {
  QueryBuilder<Workout, Workout, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Workout, Workout, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension WorkoutQueryWhereDistinct
    on QueryBuilder<Workout, Workout, QDistinct> {
  QueryBuilder<Workout, Workout, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<Workout, Workout, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Workout, Workout, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension WorkoutQueryProperty
    on QueryBuilder<Workout, Workout, QQueryProperty> {
  QueryBuilder<Workout, String, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<Workout, List<int>, QQueryOperations> exercisesProperty() {
    return addPropertyNameInternal('exercises');
  }

  QueryBuilder<Workout, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Workout, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
