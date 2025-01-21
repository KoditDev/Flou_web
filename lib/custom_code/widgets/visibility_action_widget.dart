// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:visibility_detector/visibility_detector.dart';

class VisibilityActionWidget extends StatefulWidget {
  const VisibilityActionWidget({
    super.key,
    this.width,
    this.height,
    this.actionOnVisible,
    this.identifier,
  });

  final double? width;
  final double? height;
  final Future Function()? actionOnVisible;
  final String? identifier;

  @override
  State<VisibilityActionWidget> createState() => _VisibilityActionWidgetState();
}

class _VisibilityActionWidgetState extends State<VisibilityActionWidget> {
  bool _hasTriggeredAction = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.identifier ?? 'visibility-action-widget'),
      onVisibilityChanged: (visibilityInfo) {
        if (!_hasTriggeredAction && visibilityInfo.visibleFraction > 0) {
          _hasTriggeredAction = true;
          widget.actionOnVisible?.call();
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
      ),
    );
  }
}
