import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/speciality.dart';
import 'package:portfolio_flutter/screens/speciality_screen.dart';
import 'package:portfolio_flutter/widgets/main_screen/speciality_card_widget.dart';

class SpecialitiesWidget extends StatelessWidget {
  const SpecialitiesWidget({
    Key? key,
    required this.specialities,
  }) : super(key: key);

  final List<Speciality> specialities;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 10,
          ),
          child: Text(
            'You wanna see me as:',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Wrap(
          children: specialities
              .map(
                (e) => SpecialityCard(
                  name: e.name,
                  description: e.description,
                  onClick: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SpecialityScreen(
                          speciality: e,
                        ),
                      ),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
