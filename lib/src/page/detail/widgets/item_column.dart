import 'package:dio_request_inspector/src/common/extensions.dart';
import 'package:dio_request_inspector/src/common/helpers.dart';
import 'package:flutter/material.dart';
import 'package:dio_request_inspector/src/page/resources/app_color.dart';

class ItemColumn extends StatelessWidget {
  final String? name;
  final String? value;
  final bool showCopyButton;
  final bool isImage;

  const ItemColumn({
    Key? key,
    this.name,
    this.value,
    this.showCopyButton = true,
    this.isImage = false,
  }) : super(key: key);

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name!,
            style: TextStyle(
              color: AppColor.getTextColor(context),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          if (value == null) const SizedBox(),
          if (isImage)
            Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Placeholder(),
              ),
            ),
          if (!isImage)
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    value!.isJson ? value!.prettify : value!,
                    style: TextStyle(color: AppColor.getTextColor(context)),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
