import 'package:flutter/material.dart';
import 'package:rent_house/shared/theme.dart';

class HouseFacilitiesWidget extends StatelessWidget {
  final String imageUrl;
  final String name;

  HouseFacilitiesWidget({
    required this.imageUrl,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: kRedColor.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(1, 1),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
