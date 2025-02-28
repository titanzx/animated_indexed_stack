import 'package:flutter/material.dart';
import 'package:animated_indexed_stack/route_transitions.dart';

class StackPage extends StatefulWidget {
  @required
  final Widget child;
  final RouteTransitionsBuilder? transitionsBuilder;
  final Animation? animation;
  final Animation? animationSecondary;
  const StackPage({
    Key? key,
    required this.child,
    this.transitionsBuilder,
    this.animation,
    this.animationSecondary,
  }) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final transitionsBuilder = widget.transitionsBuilder as Widget Function(
            BuildContext, Animation<double>?, Animation<double>?, Widget)? ??
        defaultTransition;
    return transitionsBuilder(
      context,
      widget.animation as Animation<double>,
      widget.animationSecondary as Animation<double>,
      widget.child,
    );
  }
}

final defaultTransition = materialTabTransition;
