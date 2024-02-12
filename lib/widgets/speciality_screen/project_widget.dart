import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/project.dart';
import 'package:portfolio_flutter/widgets/speciality_screen/feature_widget.dart';
import 'package:portfolio_flutter/widgets/speciality_screen/project_status_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        project.name,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      childrenPadding: const EdgeInsets.all(10),
      children: [
        if (project.link != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: InkWell(
                onTap: () => launchUrlString(project.link!),
                child: Text(
                  project.link!,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.indigo,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ),
          ),
        Text(
          project.description,
          style: Theme.of(context).textTheme.titleMedium,
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
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        if (project.features != null && project.features!.isNotEmpty)
          ...project.features!.map((e) => FeatureWidget(value: e.value)),
      ],
    );
  }
}
