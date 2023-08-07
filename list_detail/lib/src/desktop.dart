import 'package:flutter/cupertino.dart';
import 'package:list_detail/src/list.dart';
import 'package:list_detail/src/widget.dart';

/// The desktop layout for the list detail view
class DesktopLayout extends StatefulWidget {
  /// construct the desktop layout
  const DesktopLayout({
    super.key,
    this.children = const [],
  });

  /// the children of the desktop layout
  final List<ListDetailWidget> children;

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  late Widget content = widget.children[0].content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListDetailList(
            onItemSelected: (index) {
              setState(() {
                content = widget.children[index].content;
              });
            },
            children: widget.children,
          ),
        ),
        Expanded(
          flex: 3,
          child: content,
        ),
      ],
    );
  }
}
