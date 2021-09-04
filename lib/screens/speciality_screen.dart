import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/speciality.dart';
import 'package:portfolio_flutter/widgets/project_widget.dart';
import 'package:portfolio_flutter/widgets/speciality_point_widget.dart';
import 'package:portfolio_flutter/widgets/technologies_widget.dart';

class SpecialityScreen extends StatelessWidget {
  const SpecialityScreen({
    Key? key,
    required this.speciality,
  }) : super(key: key);

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Color(0xFFcfd8dc),
          primary: Color(0xFF263238),
          primaryVariant: Color(0xff4db6ac),
          secondary: Color(0xFF757575),
          secondaryVariant: Color(0xff78909c),
        ),
      ),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/background/flutter_screen_background.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00cfd8dc),
                      Color(0xDDcfd8dc),
                      Color(0xDDcfd8dc),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  speciality.name,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
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
                      if (speciality.projects != null &&
                          speciality.projects!.isNotEmpty)
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: SizedBox(
                              width: 450,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 30.0),
                                    child: Text(
                                      'My projects:',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
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
                                vertical: 8.0, horizontal: 16),
                            child: Text(
                              'Go back',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
