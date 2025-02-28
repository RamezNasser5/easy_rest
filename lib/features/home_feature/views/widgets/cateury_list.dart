import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/utils/styles.dart';
import 'package:easy_rest/features/home_feature/views/widgets/categury_item.dart';
import 'package:flutter/material.dart';

class CateguryList extends StatelessWidget {
  const CateguryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All Categories',
            style: TextAppStyles.mainText.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(
                0xff32343E,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 20,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: CateguryItem(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
