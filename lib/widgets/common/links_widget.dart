import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksWidget extends StatelessWidget {
  const LinksWidget({
    Key? key,
    this.mailSubject = 'Job',
  }) : super(key: key);

  final String mailSubject;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        child: Container(
          color: const Color(0x77000000),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Hire me:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset('images/logo/github.svg'),
                      onPressed: () async {
                        await launch('https://github.com/fekz115');
                      },
                    ),
                    IconButton(
                      icon: SvgPicture.asset('images/logo/gmail.svg'),
                      onPressed: () async {
                        await launch(
                          'https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&to=fekz115@gmail.com&su=Flutter%20Developer%20Job',
                        );
                      },
                    ),
                    IconButton(
                      icon: SvgPicture.asset('images/logo/telegram.svg'),
                      onPressed: () async {
                        await launch('https://t.me/fekz115');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
