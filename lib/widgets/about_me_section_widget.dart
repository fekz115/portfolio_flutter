import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/info_item.dart';
import 'package:portfolio_flutter/widgets/info_item_widget.dart';

class AboutMeSectionWidget extends StatelessWidget {
  const AboutMeSectionWidget({
    Key? key,
    required this.description,
    this.age,
    this.country,
    this.city,
    this.timeZone,
    this.additionalInfoItems,
  }) : super(key: key);

  final String description;
  final int? age;
  final String? country;
  final String? city;
  final String? timeZone;
  final List<InfoItem>? additionalInfoItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'About me:',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Text(description),
        const SizedBox(height: 10),
        Column(
          children: [
            if (age != null)
              InfoItemWidget(
                name: 'Age',
                value: '$age',
              ),
            _buildLocation(),
            if (additionalInfoItems != null && additionalInfoItems!.isNotEmpty)
              ...additionalInfoItems!
                  .map(
                    (item) => InfoItemWidget(
                      name: item.name,
                      value: item.value,
                    ),
                  )
                  .toList(),
          ].where((element) => element != null).cast<Widget>().toList(),
        ),
      ],
    );
  }

  Widget? _buildLocation() {
    if (country != null || city != null) {
      return InfoItemWidget(
        name: 'Location',
        value: _buildLocationValue(),
      );
    }
  }

  String _buildLocationValue() {
    return _addTimeZone(_addCity(country ?? ''));
  }

  String _addCity(String location) {
    return location.isEmpty ? city ?? '' : '$location/$city';
  }

  String _addTimeZone(String location) {
    return location.isEmpty
        ? location
        : timeZone != null
            ? '$location ($timeZone)'
            : location;
  }
}
