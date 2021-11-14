import 'package:flutter/material.dart';
import 'package:portfolio_flutter/data.dart';
import 'package:portfolio_flutter/widgets/info_widget.dart';
import 'package:portfolio_flutter/widgets/links_widget.dart';
import 'package:portfolio_flutter/widgets/screen_skeleton.dart';
import 'package:portfolio_flutter/widgets/specialities_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenSkeleton(
        style: personInfo.style,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
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
                const LinksWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
