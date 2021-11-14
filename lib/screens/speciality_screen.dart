import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/speciality.dart';
import 'package:portfolio_flutter/widgets/common/links_widget.dart';
import 'package:portfolio_flutter/widgets/common/screen_skeleton.dart';
import 'package:portfolio_flutter/widgets/speciality_screen/project_widget.dart';
import 'package:portfolio_flutter/widgets/speciality_screen/speciality_point_widget.dart';
import 'package:portfolio_flutter/widgets/speciality_screen/technologies_widget.dart';

class SpecialityScreen extends StatelessWidget {
  const SpecialityScreen({
    Key? key,
    required this.speciality,
  }) : super(key: key);

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenSkeleton(
        style: speciality.style,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag: speciality.name,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              speciality.name,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                          if (speciality.additionalInfo != null)
                            Text(
                              speciality.additionalInfo!,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          if (speciality.specialityPoints != null &&
                              speciality.specialityPoints!.isNotEmpty)
                            SizedBox(
                              width: 170,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: speciality.specialityPoints!
                                    .map(
                                      (e) => SpecialityPointWidget(
                                        name: e.name,
                                        value: e.value,
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          if (speciality.technologies != null &&
                              speciality.technologies!.isNotEmpty)
                            TechnologiesWidget(
                              technologies: speciality.technologies!,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (speciality.projects != null &&
                    speciality.projects!.isNotEmpty)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SizedBox(
                        width: 450,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                'My projects:',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            ...speciality.projects!
                                .map((e) => ProjectWidget(project: e))
                                .toList()
                          ],
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16,
                      ),
                      child: Text(
                        'Go back',
                      ),
                    ),
                  ),
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
