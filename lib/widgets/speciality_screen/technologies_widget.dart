import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/technology.dart';
import 'package:url_launcher/url_launcher.dart';

class TechnologiesWidget extends StatelessWidget {
  const TechnologiesWidget({
    Key? key,
    required this.technologies,
  }) : super(key: key);

  final Map<String, List<Technology>> technologies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Technologies',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ...technologies.entries
              .map(
                (e) => Row(
                  children: [
                    SelectableText(
                      '${e.key}:',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: e.value
                            .map(
                              (e) => [
                                const TextSpan(text: ', '),
                                TextSpan(
                                  text: e.name,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      if (e.link != null) {
                                        await launch(e.link!);
                                      }
                                    },
                                  style: TextStyle(
                                    color: e.link != null
                                        ? Colors.indigo
                                        : Colors.black,
                                    decoration: e.link != null
                                        ? TextDecoration.underline
                                        : TextDecoration.none,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            )
                            .expand((element) => element)
                            .skip(1)
                            .toList(),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
