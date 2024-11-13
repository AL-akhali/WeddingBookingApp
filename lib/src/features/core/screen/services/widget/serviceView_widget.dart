import 'package:flutter/material.dart';

class ServicesView extends StatelessWidget {
  ServicesView({
    super.key,
    this.column,
    this.items,
    this.child,
    this.color,
    this.ratio,
    this.height,
    this.width,
    this.direction,
    this.itemBuilder,
  });

  final int? column,items;
  final Widget? child;
  final Color? color;
  final double? ratio,height,width;
  final direction, itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: GridView.builder(
          padding: EdgeInsets.all(5),
          scrollDirection: direction,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: column!,
            childAspectRatio: 1.0,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
          ),
          itemCount: items,
          itemBuilder: itemBuilder
      ),
    );
  }
}
