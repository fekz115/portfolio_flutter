import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    this.url,
  }) : super(key: key);

  final String? url;

  @override
  Widget build(BuildContext context) {
    return url != null
        ? Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ClipOval(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(url!),
              ),
            ),
          )
        : Container();
  }
}
