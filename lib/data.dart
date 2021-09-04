import 'package:portfolio_flutter/model/info_item.dart';
import 'package:portfolio_flutter/model/knowledge.dart';
import 'package:portfolio_flutter/model/person_info.dart';
import 'package:portfolio_flutter/model/project.dart';
import 'package:portfolio_flutter/model/project_feature.dart';
import 'package:portfolio_flutter/model/project_status.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/model/speciality.dart';
import 'package:portfolio_flutter/model/technology.dart';

final personInfo = PersonInfo(
  description: 'Flutter Developer, Android/Linux Enthusiast',
  firstName: 'Eugene',
  lastName: 'Lepshi',
  age: 21,
  city: 'Gomel',
  country: 'Belarus',
  timeZone: 'GMT +3',
  skills: const [
    Skill(
      name: 'Dart',
      value: 0.79,
    ),
    Skill(
      name: 'Kotlin',
      value: 0.84,
    ),
    Skill(
      name: 'Java',
      value: 0.68,
    ),
  ],
  additionalInfoItems: const [
    InfoItem(
      name: 'Languages',
      value: 'RU, EN(A2+)',
    ),
    InfoItem(
      name: 'Education',
      value: 'GSTU n.a. P.O. Sukhoi, IaPT, 2021',
    ),
  ],
  knowledge: const [
    Knowledge(name: 'Using GIT'),
    Knowledge(name: 'Always use commitizen to format commit message'),
    Knowledge(name: 'Various patterns and best practices'),
    Knowledge(name: 'SOLID, KISS, DRY'),
    Knowledge(name: 'OOP'),
  ],
  specialties: const [
    // Speciality(
    //   name: 'Android/Linux Enthusiast',
    //   description: 'Building kernel, android roms for phones...',
    // ),
    Speciality(
      name: 'Flutter Developer',
      description: 'State-management, 60fps, widgets...',
      technologies: {
        'Linter': [
          Technology(
            name: 'lint',
            link: 'https://pub.dev/packages/lint',
          ),
        ],
        'Statemanagement': [
          Technology(
            name: 'Redux',
            link: 'https://pub.dev/packages/built_redux',
          ),
          Technology(
            name: 'BLoC',
            link: 'https://pub.dev/packages/bloc',
          ),
          Technology(
            name: 'GetX',
            link: 'https://pub.dev/packages/getx',
          ),
          Technology(
            name: 'whelm',
            link: 'https://github.com/fekz115/whelm',
          ),
        ],
        'Data classes': [
          Technology(
            name: 'Freezed',
            link: 'https://pub.dev/packages/freezed',
          ),
          Technology(
            name: 'Built value',
            link: 'https://pub.dev/packages/built_value',
          ),
        ],
        'Navigation': [
          Technology(
            name: 'Navigator 2.0',
          ),
          Technology(
            name: 'AutoRoute',
            link: 'https://pub.dev/packages/auto_route',
          ),
          Technology(
            name: 'GetX',
            link: 'https://pub.dev/packages/getx',
          ),
        ],
        'i18n/l10n': [
          Technology(
            name: 'arb-files',
          ),
          Technology(
            name: 'intl',
            link: 'https://pub.dev/packages/intl',
          ),
        ],
        'HTTP-client': [
          Technology(
            name: 'dio',
            link: 'https://pub.dev/packages/dio',
          ),
          Technology(
            name: 'chopper',
            link: 'https://pub.dev/packages/chopper',
          ),
          Technology(
            name: 'http',
            link: 'https://pub.dev/packages/http',
          ),
        ],
        'Database': [
          Technology(
            name: 'ObjectDB',
            link: 'https://pub.dev/packages/objectdb',
          ),
          Technology(
            name: 'sqflite',
            link: 'https://pub.dev/packages/sqflite',
          ),
          Technology(
            name: 'hive',
            link: 'https://pub.dev/packages/hive',
          ),
        ],
      },
      projects: [
        Project(
          name: 'This site :)',
          description:
              'This site is my portfolio web site, it is still in development, cool animations, another specialities and anything else coming soon...',
          link: 'https://github.com/fekz115/flutter_portfolio',
          status: ProjectStatus.inDevelopment,
          progress: 0.6,
        ),
        Project(
          name: 'Whelm',
          description:
              'My statemanagement library, it is The Elm Architecture implementation on Flutter.',
          link: 'https://github.com/fekz115/whelm',
          status: ProjectStatus.inDevelopment,
          progress: 0.9,
          features: [
            ProjectFeature(
              value: 'No dependecies',
            ),
            ProjectFeature(
              value: 'No codegeneration',
            ),
            ProjectFeature(
              value: 'Lightweight',
            ),
            ProjectFeature(
              value: 'Key entities has the same name as in Redux',
            ),
            ProjectFeature(
              value: 'Writed using lint',
            ),
            ProjectFeature(
              value: 'Supports null-safety and recent version of Flutter',
            ),
          ],
        ),
        Project(
          name: 'Inspector App (ЕИС ОАТИ)',
          description: 'This app is for internal Moscow landscaping service. This project is my recent work.',
          status: ProjectStatus.completed,
          progress: 1,
          features: [
            ProjectFeature(
              value: 'Uses BLoC as State-management',
            ),
            ProjectFeature(
              value: 'Uses dio as http-client',
            ),
            ProjectFeature(
              value: 'Have 2 types of databases: for large data and small, like user settings',
            ),
            ProjectFeature(
              value: 'Uses map',
            ),
            ProjectFeature(
              value: 'Uses freezed for data-classes in part which written by me',
            ),
          ],
        ),
        Project(
          name: 'Herald',
          description:
              "Herald is simple app whose sole purpose is facilitate using trains. It parses data about trains schedule and show in handy view. As the libraries which I selected in the begining has no more support, can't be maintained anymore and should be rewritten.",
          link: 'https://github.com/fekz115/Herald_flutter',
          status: ProjectStatus.frozen,
          progress: 0.85,
          features: [
            ProjectFeature(
              value: 'Uses Redux as State-management',
            ),
            ProjectFeature(
              value: 'Uses arb-files for i18n',
            ),
            ProjectFeature(
              value: 'Supports light/dark theme',
            ),
            ProjectFeature(
              value: 'Has persistance',
            ),
            ProjectFeature(
              value: 'Parses data from html in separate isolate',
            ),
          ],
        ),
      ],
    ),
    // Speciality(
    //   name: 'Java/Kotlin Backend Developer',
    //   description: 'Spring, databases, docker...',
    // ),
  ],
);
