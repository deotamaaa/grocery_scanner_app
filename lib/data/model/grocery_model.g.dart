// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGroceryCollection on Isar {
  IsarCollection<Grocery> get grocerys => this.collection();
}

const GrocerySchema = CollectionSchema(
  name: r'Grocery',
  id: -6709567378137241687,
  properties: {
    r'groceryDescription': PropertySchema(
      id: 0,
      name: r'groceryDescription',
      type: IsarType.string,
    ),
    r'groceryName': PropertySchema(
      id: 1,
      name: r'groceryName',
      type: IsarType.string,
    ),
    r'groceryPrice': PropertySchema(
      id: 2,
      name: r'groceryPrice',
      type: IsarType.double,
    ),
    r'groceryQuantity': PropertySchema(
      id: 3,
      name: r'groceryQuantity',
      type: IsarType.long,
    ),
    r'totalPrice': PropertySchema(
      id: 4,
      name: r'totalPrice',
      type: IsarType.double,
    )
  },
  estimateSize: _groceryEstimateSize,
  serialize: _grocerySerialize,
  deserialize: _groceryDeserialize,
  deserializeProp: _groceryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _groceryGetId,
  getLinks: _groceryGetLinks,
  attach: _groceryAttach,
  version: '3.1.0+1',
);

int _groceryEstimateSize(
  Grocery object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.groceryDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.groceryName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _grocerySerialize(
  Grocery object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.groceryDescription);
  writer.writeString(offsets[1], object.groceryName);
  writer.writeDouble(offsets[2], object.groceryPrice);
  writer.writeLong(offsets[3], object.groceryQuantity);
  writer.writeDouble(offsets[4], object.totalPrice);
}

Grocery _groceryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Grocery(
    groceryDescription: reader.readStringOrNull(offsets[0]),
    groceryName: reader.readStringOrNull(offsets[1]),
    groceryPrice: reader.readDoubleOrNull(offsets[2]),
    groceryQuantity: reader.readLongOrNull(offsets[3]),
    totalPrice: reader.readDoubleOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _groceryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _groceryGetId(Grocery object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _groceryGetLinks(Grocery object) {
  return [];
}

void _groceryAttach(IsarCollection<dynamic> col, Id id, Grocery object) {
  object.id = id;
}

extension GroceryQueryWhereSort on QueryBuilder<Grocery, Grocery, QWhere> {
  QueryBuilder<Grocery, Grocery, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GroceryQueryWhere on QueryBuilder<Grocery, Grocery, QWhereClause> {
  QueryBuilder<Grocery, Grocery, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GroceryQueryFilter
    on QueryBuilder<Grocery, Grocery, QFilterCondition> {
  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groceryDescription',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groceryDescription',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groceryDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groceryDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groceryDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groceryDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groceryDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groceryDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groceryDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groceryDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groceryDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groceryDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groceryName',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groceryName',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groceryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groceryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groceryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groceryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groceryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groceryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groceryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groceryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groceryName',
        value: '',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groceryName',
        value: '',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groceryPrice',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groceryPrice',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groceryPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groceryPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groceryPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groceryPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryQuantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groceryQuantity',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryQuantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groceryQuantity',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryQuantityEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groceryQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition>
      groceryQuantityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groceryQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryQuantityLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groceryQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> groceryQuantityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groceryQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> totalPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalPrice',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> totalPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalPrice',
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> totalPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> totalPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> totalPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterFilterCondition> totalPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension GroceryQueryObject
    on QueryBuilder<Grocery, Grocery, QFilterCondition> {}

extension GroceryQueryLinks
    on QueryBuilder<Grocery, Grocery, QFilterCondition> {}

extension GroceryQuerySortBy on QueryBuilder<Grocery, Grocery, QSortBy> {
  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryDescription', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryDescription', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryName', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryName', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryPrice', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryPrice', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryQuantity', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByGroceryQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryQuantity', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> sortByTotalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.desc);
    });
  }
}

extension GroceryQuerySortThenBy
    on QueryBuilder<Grocery, Grocery, QSortThenBy> {
  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryDescription', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryDescription', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryName', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryName', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryPrice', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryPrice', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryQuantity', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByGroceryQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groceryQuantity', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.asc);
    });
  }

  QueryBuilder<Grocery, Grocery, QAfterSortBy> thenByTotalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.desc);
    });
  }
}

extension GroceryQueryWhereDistinct
    on QueryBuilder<Grocery, Grocery, QDistinct> {
  QueryBuilder<Grocery, Grocery, QDistinct> distinctByGroceryDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groceryDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grocery, Grocery, QDistinct> distinctByGroceryName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groceryName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grocery, Grocery, QDistinct> distinctByGroceryPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groceryPrice');
    });
  }

  QueryBuilder<Grocery, Grocery, QDistinct> distinctByGroceryQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groceryQuantity');
    });
  }

  QueryBuilder<Grocery, Grocery, QDistinct> distinctByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPrice');
    });
  }
}

extension GroceryQueryProperty
    on QueryBuilder<Grocery, Grocery, QQueryProperty> {
  QueryBuilder<Grocery, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Grocery, String?, QQueryOperations>
      groceryDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groceryDescription');
    });
  }

  QueryBuilder<Grocery, String?, QQueryOperations> groceryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groceryName');
    });
  }

  QueryBuilder<Grocery, double?, QQueryOperations> groceryPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groceryPrice');
    });
  }

  QueryBuilder<Grocery, int?, QQueryOperations> groceryQuantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groceryQuantity');
    });
  }

  QueryBuilder<Grocery, double?, QQueryOperations> totalPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPrice');
    });
  }
}
