import 'package:flutter/material.dart';

class SpecialityCard extends StatelessWidget {
  const SpecialityCard({
    super.key,
    required this.name,
    required this.description,
    this.onClick,
  });

  final String name;
  final String description;
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Hero(
        tag: name,
        child: Card(
          child: InkWell(
            onTap: onClick,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
