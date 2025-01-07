import 'package:dio_request_inspector/src/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:dio_request_inspector/src/page/resources/app_color.dart';

class ItemRow extends StatelessWidget {
  final String name;
  final String? value;
  final bool useHeaderFormat;

  const ItemRow(
      {required this.name,
      this.value,
      super.key,
      this.useHeaderFormat = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColor.getCardColor(context),
        border: Border(
          bottom: BorderSide(
            color: AppColor.getDividerColor(context),
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              name,
              style: TextStyle(
                color: AppColor.getTextColor(context),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value ?? '',
              style: TextStyle(color: AppColor.getTextColor(context)),
            ),
          ),
        ],
      ),
    );
  }
}
