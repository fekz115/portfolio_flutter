import 'package:flutter/material.dart';

class SpecialityPointWidget extends StatelessWidget {
  const SpecialityPointWidget({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          SelectableText(
            '$name:',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Spacer(),
          SelectableText(
            value,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
