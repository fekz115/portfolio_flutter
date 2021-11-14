import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksWidget extends StatelessWidget {
  const LinksWidget({
    Key? key,
  }) : super(key: key);

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
                  style: theme.textTheme.headline5,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: SvgPicture.asset('images/logo/github.svg'),
                    onPressed: () => launch('https://github.com/fekz115'),
                  ),
                  IconButton(
                    icon: SvgPicture.asset('images/logo/gmail.svg'),
                    onPressed: () async {
                      if (await canLaunch('mailto:fekz115@gmail.com')) {
                        await launch('mailto:fekz115@gmail.com');
                      } else {
                        await launch(
                          'https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&to=fekz115@gmail.com',
                        );
                      }
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset('images/logo/telegram.svg'),
                    onPressed: () => launch('https://t.me/fekz115'),
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
