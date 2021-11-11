import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/project.dart';
import 'package:portfolio_flutter/model/project_status.dart';

class ProjectStatusWidget extends StatelessWidget {
  const ProjectStatusWidget({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).indicatorColor;
    switch (project.status) {
      case ProjectStatus.inDevelopment:
        color = Colors.blue[900] ?? color;
        break;
      case ProjectStatus.frozen:
        color = Colors.grey[800] ?? color;
        break;
      case ProjectStatus.completed:
        color = Colors.green[600] ?? color;
        break;
    }
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (project.status == ProjectStatus.inDevelopment)
            Text(
              'In development',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          if (project.status == ProjectStatus.frozen)
            Text(
              'Frozen',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          if (project.status == ProjectStatus.completed)
            Text(
              'Completed',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: LinearProgressIndicator(
              value: project.progress,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
