import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/technology.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TechnologiesWidget extends StatelessWidget {
  const TechnologiesWidget({
    super.key,
    required this.technologies,
  });

  final Map<String, List<Technology>> technologies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Technologies',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ...technologies.entries.map(
            (e) => Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: SelectableText(
                        '${e.key}:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.titleMedium,
                          children: e.value
                              .map(
                                (e) => [
                                  const TextSpan(text: ', '),
                                  TextSpan(
                                    text: e.name,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        if (e.link != null) {
                                          await launchUrlString(e.link!);
                                        }
                                      },
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: e.link != null
                                              ? Colors.indigo
                                              : null,
                                          decoration: e.link != null
                                              ? TextDecoration.underline
                                              : TextDecoration.none,
                                        ),
                                  ),
                                ],
                              )
                              .expand((element) => element)
                              .skip(1)
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
