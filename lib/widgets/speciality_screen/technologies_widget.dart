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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Technologies',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ...technologies.entries
              .map(
                (e) => Row(
                  children: [
                    SelectableText(
                      '${e.key}:',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle1,
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
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
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
