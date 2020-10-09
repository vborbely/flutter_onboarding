import 'package:flutter/cupertino.dart';

class FullPageWidget extends StatelessWidget {
  final List<Widget> children;
  final Color backgroundColor;
  final Gradient gradient;

  const FullPageWidget({Key key, this.children, this.backgroundColor, this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: backgroundColor, gradient: gradient, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: children,
        ),
      ),
    );
  }
}
