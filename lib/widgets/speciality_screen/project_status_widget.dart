import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/project.dart';
import 'package:portfolio_flutter/model/project_status.dart';

class ProjectStatusWidget extends StatelessWidget {
  const ProjectStatusWidget({
    super.key,
    required this.project,
  });

  final Project project;

  Color _getTitleColor(ProjectStatus status, BuildContext context) =>
      switch (project.status) {
        ProjectStatus.inDevelopment => Colors.blue[600],
        ProjectStatus.frozen => Theme.of(context).disabledColor,
        ProjectStatus.completed => Colors.green[600],
        ProjectStatus.abandoned => Theme.of(context).disabledColor,
      } ??
      Theme.of(context).indicatorColor;

  String _getTitle(ProjectStatus status) => switch (status) {
        ProjectStatus.inDevelopment => 'In development',
        ProjectStatus.frozen => 'Frozen',
        ProjectStatus.completed => 'Completed',
        ProjectStatus.abandoned => 'Abandoned',
      };

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _getTitle(project.status),
              style: TextStyle(
                color: _getTitleColor(project.status, context),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TweenAnimationBuilder<double>(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0, end: project.progress),
                curve: Curves.easeOutQuint,
                builder: (context, value, _) => LinearProgressIndicator(
                  value: value,
                  color: _getTitleColor(project.status, context),
                ),
              ),
            ),
          ],
        ),
      );
}
