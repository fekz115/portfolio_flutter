import 'package:flutter/material.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:portfolio_flutter/model/screen_style.dart';

class ScreenSkeleton extends StatelessWidget {
  const ScreenSkeleton({
    super.key,
    required this.style,
    required this.child,
  });

  final ScreenStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.from(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              background: Color(style.backgroundColor),
              primary: Color(style.primary),
              secondary: Color(style.secondary),
            ),
      ),
      child: Builder(
        builder: (context) {
          final height = MediaQuery.of(context).size.height;
          return SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: height,
                ),
                Positioned.fill(
                  child: Image.asset(
                    style.background,
                    fit: BoxFit.fitWidth,
                    frameBuilder: (
                      BuildContext context,
                      Widget child,
                      int? frame,
                      bool wasSynchronouslyLoaded,
                    ) {
                      if (wasSynchronouslyLoaded) {
                        return child;
                      }
                      return AnimatedOpacity(
                        opacity: frame == null ? 0 : 1,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeOut,
                        child: child,
                      );
                    },
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.0, 0.7, 0.9],
                        colors: [
                          const Color(0x00000000),
                          Theme.of(context).cardColor.withOpacity(0.8),
                          Theme.of(context).cardColor.withOpacity(1),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    TweenAnimationBuilder<double>(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween(begin: 20, end: 0),
                      builder: (context, value, _) => Transform.translate(
                        offset: Offset(0, value),
                        child: Opacity(
                          opacity: (100 - value * 5) / 100,
                          child: child,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('Dark mode'),
                          Switch(
                            value:
                                Theme.of(context).brightness == Brightness.dark,
                            onChanged: (value) =>
                                themeManager.toggleTheme(isDark: value),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
