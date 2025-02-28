import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CateguryItem extends StatelessWidget {
  const CateguryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.defaultSize! * 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.defaultSize! * 11,
            width: SizeConfig.defaultSize! * 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              color: Color(0xff98A8B8),
            ),
          ),
          Text(
            'Pizza',
            style: TextAppStyles.mainText.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Text(
                'Starting',
                style: TextAppStyles.mainText.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 3,
                ),
                child: Text(
                  '\$70',
                  style: TextAppStyles.mainText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
