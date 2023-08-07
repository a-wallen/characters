import 'package:flutter/cupertino.dart';
import 'package:list_detail/src/desktop.dart';
import 'package:list_detail/src/mobile.dart';
import 'package:list_detail/src/widget.dart';

/// The implementation of the list detail view in flutter
///
/// Pushes a new route if on mobile.
/// On desktop, will show content in the RHS of the screen.
class ListDetailView extends StatefulWidget {
  /// Construct the list detail view
  const ListDetailView({
    super.key,
    this.breakpoint = 600,
    this.children = const [],
  });

  /// The children of the list detail view
  final List<ListDetailWidget> children;

  /// The break point at which the view switches from mobile to desktop
  final double breakpoint;

  @override
  State<ListDetailView> createState() => _ListDetailViewState();
}

class _ListDetailViewState extends State<ListDetailView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < widget.breakpoint) {
          return MobileLayout(children: widget.children);
        } else {
          return DesktopLayout(children: widget.children);
        }
      },
    );
  }
}
