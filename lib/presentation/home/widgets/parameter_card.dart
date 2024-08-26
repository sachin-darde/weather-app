import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ParameterCard extends StatelessWidget {
  const ParameterCard({
    super.key,
    required this.title,
    required this.titleIcon,
    this.description,
    required this.value,
  });

  final String title;
  final String titleIcon;
  final String? description;
  final Widget value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 21.h,
        padding: EdgeInsets.symmetric(
          vertical: 4.w,
          horizontal: 4.w,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5.w,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(.05),
                spreadRadius: 10,
                blurRadius: 30,
              ),
            ],
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(.5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(titleIcon),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            value,
            const Spacer(),
            if (description != null)
              Text(
                description!,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
              )
          ],
        ),
      ),
    );
  }
}
