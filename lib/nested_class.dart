import 'package:freezed_annotation/freezed_annotation.dart';

part 'nested_class.freezed.dart';

@freezed
class NestedClass with _$NestedClass {
  const NestedClass._();
  const factory NestedClass({
    required String name,
    required String surname,
    required int age,
    required List<NestedClass> children,
  }) = _NestedClass;

/* 3a */  // add const factory NestedClass.initial()
  factory NestedClass.initial() => const NestedClass(
      name: 'Family Tree', surname: 'Lineage', age: 500, children: []);
}

// class NestedClass {
//   NestedClass({
//     required this.name,
//     required this.surname,
//     required this.age,
//     required this.children,
//   });

//   final String name;
//   final String surname;
//   final int age;
//   List<NestedClass> children = [];

//   addChild(NestedClass child) => children.add(child);

//   NestedClass copyWith({
//     String? name,
//     String? surname,
//     int? age,
//     List<NestedClass>? children,
//   }) =>
//       NestedClass(
//         name: name ?? this.name,
//         surname: surname ?? this.surname,
//         age: age ?? this.age,
//         children: children ?? this.children,
//       );

  
// }
