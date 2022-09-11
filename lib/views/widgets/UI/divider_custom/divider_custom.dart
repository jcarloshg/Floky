import 'package:flutter/material.dart';

class DividerCustom extends StatelessWidget {
  const DividerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 15,
      endIndent: 15,
      indent: 15,
      thickness: 1,
      color: Theme.of(context).primaryColor,
    );
  }
}
