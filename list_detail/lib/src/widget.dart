import 'package:flutter/widgets.dart';

/// The information about the list detail widget
class ListDetailWidget {
  /// Construct the list detail information
  const ListDetailWidget({required this.metadata, required this.content});

  /// The metadata that is rendered in the "list"
  final Widget metadata;

  /// The content that is rendered in the "view"
  final Widget content;
}
