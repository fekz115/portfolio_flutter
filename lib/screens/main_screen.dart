import 'package:flutter/material.dart';
import 'package:portfolio_flutter/data.dart';
import 'package:portfolio_flutter/widgets/common/links_widget.dart';
import 'package:portfolio_flutter/widgets/common/screen_skeleton.dart';
import 'package:portfolio_flutter/widgets/main_screen/info_widget.dart';
import 'package:portfolio_flutter/widgets/main_screen/specialities_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScreenSkeleton(
          style: personInfo.style,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const InfoWidget(
                    personInfo: personInfo,
                  ),
                  if (personInfo.specialties != null &&
                      personInfo.specialties!.isNotEmpty)
                    SpecialitiesWidget(
                      specialities: personInfo.specialties!,
                    ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LinksWidget(),
                ],
              ),
            ),
          ),
        ),
      );
}
