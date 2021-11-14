import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/project.dart';
import 'package:portfolio_flutter/widgets/speciality_screen/feature_widget.dart';
import 'package:portfolio_flutter/widgets/speciality_screen/project_status_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        project.name,
        style: Theme.of(context).textTheme.headline6,
      ),
      childrenPadding: const EdgeInsets.all(10),
      children: [
        if (project.link != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: InkWell(
                onTap: () async {
                  await launch(project.link!);
                },
                child: Text(
                  project.link!,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.indigo,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ),
          ),
        Text(
          project.description,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ProjectStatusWidget(
          project: project,
        ),
        if (project.features != null && project.features!.isNotEmpty)
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
              ),
              child: Text(
                'Key features:',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        if (project.features != null && project.features!.isNotEmpty)
          ...project.features!
              .map((e) => FeatureWidget(value: e.value))
              .toList(),
      ],
    );
  }
}
