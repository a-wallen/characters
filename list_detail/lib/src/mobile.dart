import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_detail/src/list.dart';
import 'package:list_detail/src/widget.dart';

/// The mobile layout for the list detail view
class MobileLayout extends StatelessWidget {
  /// construct the mobile layout
  const MobileLayout({
    super.key,
    this.children = const [],
  });

  final List<ListDetailWidget> children;

  @override
  Widget build(BuildContext context) {
    return ListDetailList(
      onItemSelected: (index) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(),
              body: children[index].content,
            ),
          ),
        );
      },
      children: children,
    );
  }
}
