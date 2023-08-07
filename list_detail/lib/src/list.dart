import 'package:flutter/cupertino.dart';
import 'package:list_detail/src/widget.dart';

/// The list for the list detail view
class ListDetailList extends StatelessWidget {
  /// constructor for the list
  const ListDetailList({
    super.key,
    this.children = const [],
    required this.onItemSelected,
  });

  final List<ListDetailWidget> children;
  final ValueChanged<int> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: children
          .map(
            (child) => GestureDetector(
              onTap: () => onItemSelected(children.indexOf(child)),
              child: child.metadata,
            ),
          )
          .toList(),
    );
  }
}
