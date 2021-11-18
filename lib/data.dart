import 'package:portfolio_flutter/model/info_item.dart';
import 'package:portfolio_flutter/model/knowledge.dart';
import 'package:portfolio_flutter/model/person_info.dart';
import 'package:portfolio_flutter/model/project.dart';
import 'package:portfolio_flutter/model/project_feature.dart';
import 'package:portfolio_flutter/model/project_status.dart';
import 'package:portfolio_flutter/model/screen_style.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/model/speciality.dart';
import 'package:portfolio_flutter/model/speciality_point.dart';
import 'package:portfolio_flutter/model/technology.dart';

const personInfo = PersonInfo(
  avatarUrl: 'images/ava.jpg',
  description: 'Flutter Developer, Android/Linux Enthusiast',
  firstName: 'Eugene',
  lastName: 'Lepshi',
  age: 21,
  city: 'Gomel',
  country: 'Belarus',
  timeZone: 'GMT +3',
  skills: [
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
  additionalInfoItems: [
    InfoItem(
      name: 'Languages',
      value: 'RU, EN(A2+)',
    ),
    InfoItem(
      name: 'Education',
      value: 'GSTU n.a. P.O. Sukhoi, IaPT, 2021',
    ),
  ],
  knowledge: [
    Knowledge(name: 'Using GIT'),
    Knowledge(name: 'Always use commitizen to format commit message'),
    Knowledge(name: 'Various patterns and best practices'),
    Knowledge(name: 'SOLID, KISS, DRY'),
    Knowledge(name: 'OOP'),
  ],
  style: ScreenStyle(
    background: 'images/background/main_screen_background.jpg',
    backgroundColor: 0xFFbdbdbd,
    primary: 0xFF455A64,
    primaryVariant: 0xFF607D8B,
    secondary: 0xFF424242,
    secondaryVariant: 0xFF616161,
  ),
  specialties: [
    Speciality(
      name: 'Android/Linux Enthusiast',
      description: 'Building kernel, android roms for phones...',
      style: ScreenStyle(
        background: 'images/background/android_screen_background.jpg',
        backgroundColor: 0xFF3E2723,
        primary: 0xFFF48FB1,
        primaryVariant: 0xFFAD1457,
        secondary: 0xFF7986CB,
        secondaryVariant: 0xFF9E9E9E,
      ),
      projects: [
        Project(
          name: 'LineageOS 16.0 vince',
          description:
              'Based on los-16 tissot device-tree, no-name kernel and vendor sources, so not in public',
          status: ProjectStatus.completed,
          progress: 1.0,
          features: [
            ProjectFeature(
              value: 'Stable',
            ),
            ProjectFeature(
              value: 'Uses kernel 3.18',
            ),
            ProjectFeature(
              value:
                  'Device-tree created according to tissot-device tree from zero',
            ),
          ],
        ),
        Project(
          name: '3.18 CAF kernel vince',
          description:
              'Based on OEM-commit for LA.UM.6.6.r1 and will be used for 4.9 port and Ubuntu Touch',
          status: ProjectStatus.inDevelopment,
          progress: 0.9,
          features: [
            ProjectFeature(
              value: 'Release candidate',
            ),
            ProjectFeature(
              value: 'Based on LA.UM.6.6.r1',
            ),
            ProjectFeature(
              value: 'Merged latest caf tag',
            ),
            ProjectFeature(
              value:
                  'Device-specific drivers and dts splitted by commits and updated',
            ),
          ],
        ),
      ],
      additionalInfo:
          'My main hobby, bringing up new linux kernels\nand android versions for old phones.',
    ),
    Speciality(
      name: 'Flutter Developer',
      description: 'State-management, 60fps, widgets...',
      additionalInfo:
          'This is my main speciality, so not all my projects are\npresented here, you can ask me in pm for others.',
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
          description:
              'This app is for internal Moscow landscaping service. This project is my recent work.',
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
              value:
                  'Have 2 types of databases: for large data and small, like user settings',
            ),
            ProjectFeature(
              value: 'Uses map',
            ),
            ProjectFeature(
              value:
                  'Uses freezed for data-classes in part which written by me',
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
      style: ScreenStyle(
        background: 'images/background/flutter_screen_background.jpg',
        backgroundColor: 0xFFCFD8DC,
        primary: 0xFF263238,
        primaryVariant: 0xFF4DB6AC,
        secondary: 0xFF757575,
        secondaryVariant: 0xFF78909C,
      ),
    ),
    Speciality(
      name: 'Java/Kotlin Backend Developer',
      description: 'Spring, databases, docker...',
      style: ScreenStyle(
        background: 'images/background/spring_screen_background.jpg',
        backgroundColor: 0xFF212121,
        primary: 0xFFBCAAA4,
        primaryVariant: 0xFF616161,
        secondary: 0xFF78909c,
        secondaryVariant: 0xFF78909c,
      ),
      additionalInfo:
          'This is my second software engineering speciality,\nbut mobile development in priority',
      specialityPoints: [
        SpecialityPoint(
          name: 'Expirience',
          value:
              'Completed internal cources of EPAM Systems,\nJava Web(Spring)',
        ),
      ],
      technologies: {
        'Programming languages': [
          Technology(
            name: 'kotlin',
            link: 'https://kotlinlang.org',
          ),
          Technology(
            name: 'java',
            link: 'https://java.com',
          ),
        ],
        'Build systems': [
          Technology(
            name: 'gradle',
            link: 'https://gradle.com',
          ),
          Technology(
            name: 'maven',
            link: 'https://maven.apache.org',
          ),
        ],
        'Spring modules familiar with': [
          Technology(
            name: 'Spring Core',
          ),
          Technology(
            name: 'Spring Boot',
          ),
          Technology(
            name: 'Spring Web[flux]',
          ),
          Technology(
            name: 'Spring Data [JDBC/JPA]',
          ),
          Technology(
            name: 'Spring Web Security',
          ),
        ],
        'Databases': [
          Technology(
            name: 'MongoDB',
            link: 'https://www.mongodb.com/',
          ),
          Technology(
            name: 'PostgresSQL',
            link: 'https://www.postgresql.org/',
          ),
          Technology(
            name: 'MySQL(MariaDB)',
            link: 'https://www.mysql.com/',
          ),
        ],
        'CI/CD': [
          Technology(
            name: 'Jenkins',
            link: 'https://www.jenkins.io/',
          ),
        ],
      },
    ),
  ],
);
