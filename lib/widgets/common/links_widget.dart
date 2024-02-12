// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinksWidget extends StatelessWidget {
  const LinksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        color: theme.primaryColor.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'My links:',
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'images/logo/github.svg',
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () =>
                        launchUrlString('https://github.com/fekz115'),
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      'images/logo/gmail.svg',
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () async {
                      if (await canLaunchUrlString(
                          'mailto:fekz115@gmail.com',)) {
                        await launchUrlString('mailto:fekz115@gmail.com');
                      } else {
                        await launchUrlString(
                          'https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&to=fekz115@gmail.com',
                        );
                      }
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      'images/logo/telegram.svg',
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () => launchUrlString('https://t.me/fekz115'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
