import 'package:freezed_undo_functionality_2/nested_class.dart';

NestedClass delete({
  required NestedClass object,
  required NestedClass hierarchy,
}) {
  // 1. copy the hierarchy.
  NestedClass? copiedHierarchy = hierarchy.children.contains(object) ? hierarchy : null;
  // 2. modifies.
  if (copiedHierarchy != null) {
    return hierarchy.copyWith(children: [
      for (var child in hierarchy.children)
        if (child != object) child,
    ]);
  }
  // 3. returns copied and modified hierarchy.
  return hierarchy.copyWith(
    children: [
      for (var child in hierarchy.children)
        delete(object: object, hierarchy: child),
    ],
  );
  // // 1. copy the hierarchy.
  // final copiedHierarchy = hierarchy;
  // {
  //   if (object == copiedHierarchy) {
  //     return NestedClass.initial();
  //   }
  //   // 2. modifies.
  //   if (copiedHierarchy.children.contains(object)) {
  //     copiedHierarchy.children.remove(object);
  //   } else {
  //     for (NestedClass child in copiedHierarchy.children) {
  //       delete(object: object, hierarchy: child);
  //     }
  //   }
  //   // 3. returns copied and modified hierarchy
  //   return copiedHierarchy.copyWith(children: [...copiedHierarchy.children]);
  // }
}
