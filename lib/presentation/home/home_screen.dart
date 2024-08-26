import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weather_app/domain/core/constants/asset_constants.dart';
import 'package:weather_app/domain/core/constants/string_constants.dart';
import 'package:weather_app/domain/core/helpers/generic_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Stack(
          children: [DateForecast(), ForecastDetails()],
        ),
      ),
    );
  }
}

class DateForecast extends StatelessWidget {
  const DateForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 100.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            DateTime.now().second % 3 == 0
                ? AssetConstants.night
                : DateTime.now().second % 3 == 1
                    ? AssetConstants.day
                    : AssetConstants.moderateRain,
          ).image,
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AssetConstants.locationIcon,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    'Surat, Gujrat',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  )
                ],
              ),
              SizedBox(
                height: 1.7.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(
                      1.5.w,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(.5)),
                    child: Icon(
                      Icons.arrow_back,
                      size: 7.w,
                    ),
                  ),
                  Text(
                    GenericHelpers.dateFormatter(DateTime.now()),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16.5.sp,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      2.w,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(.5)),
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 7.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 15.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 24, // 24 hours in a day
                  itemBuilder: (context, index) {
                    // Generate the time for each hour
                    final DateTime time = DateTime(2024, 8, 26, index);
                    final String formattedTime =
                        DateFormat('h:00 a').format(time);

                    // Placeholder temperature value (you can replace this with real data)
                    final String temperature = '${24 + index % 5}°C';

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 22.w,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.5),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              AssetConstants
                                  .showerWeather, // Replace with your actual asset path
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Text(
                              temperature,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0,
                                  ),
                            ),
                            const Spacer(),
                            Text(
                              formattedTime,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '24',
                      style: TextStyle(
                        fontFamily: 'Thunder',
                        fontWeight: FontWeight.w700,
                        fontSize: 52.sp,
                      ),
                    ),
                    Text(
                      '${AppConstants.celcious}C',
                      style: TextStyle(
                        fontFamily: 'Thunder',
                        fontSize: 37.sp,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.w,
                      horizontal: 2.w,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          2.w,
                        ),
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(.5)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(AssetConstants.highTemp),
                        SizedBox(
                          width: 1.5.w,
                        ),
                        Text(
                          'High : 28${AppConstants.celcious}',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.w,
                      horizontal: 2.w,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          2.w,
                        ),
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(.5)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(AssetConstants.lowTemp),
                        SizedBox(
                          width: 1.5.w,
                        ),
                        Text(
                          'Low : 20${AppConstants.celcious}',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2.w,
                  horizontal: 2.w,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      2.w,
                    ),
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(.5)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(AssetConstants.feelsLikeTemp),
                    SizedBox(
                      width: 1.5.w,
                    ),
                    Text(
                      'Feels Like : 20${AppConstants.celcious}',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForecastDetails extends StatelessWidget {
  const ForecastDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 67.h),
      // height: 100.h,
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 4.w,
      ),
      width: 100.w,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            5.w,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              WidgetCard(
                title: 'Humidity',
                titleIcon: AssetConstants.humidity,
                description:
                    'The dew point is 24 ${AppConstants.celcious} right now',
                value: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '88',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                    Text(
                      '%',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              WidgetCard(
                title: 'Pressure',
                titleIcon: AssetConstants.pressure,
                value: AnimatedRadialGauge(
                    duration: const Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    radius: 100,

                    /// Gauge value.
                    value: 758 / 1005 * 100,
                    axis: GaugeAxis(
                      /// Provide the [min] and [max] value for the [value] argument.
                      min: 0,
                      max: 100,

                      /// Render the gauge as a 180-degree arc.
                      degrees: 180,

                      /// Set the background color and axis thickness.
                      style: const GaugeAxisStyle(
                        thickness: 20,
                        background: Color(0xFFDFE2EC),
                        segmentSpacing: 4,
                      ),

                      /// Define the pointer that will indicate the progress (optional).
                      pointer: GaugePointer.needle(
                          borderRadius: 16,
                          width: 0.w,
                          height: 10.w,
                          color: Colors.blue),

                      /// Define the progress bar (optional).
                      progressBar: const GaugeProgressBar.rounded(
                        color: Color(0xFFB4C2F8),
                      ),

                      /// Define axis segments (optional).
                      segments: const [
                        GaugeSegment(
                          from: 0,
                          to: 33.3,
                          color: Color(0xFFD9DEEB),
                          cornerRadius: Radius.zero,
                        ),
                        GaugeSegment(
                          from: 33.3,
                          to: 66.6,
                          color: Color(0xFFD9DEEB),
                          cornerRadius: Radius.zero,
                        ),
                        GaugeSegment(
                          from: 66.6,
                          to: 100,
                          color: Color(0xFFD9DEEB),
                          cornerRadius: Radius.zero,
                        ),
                      ],
                    ),
                    builder: (context, child, value) => Column(
                          children: [
                            Text(
                              value.toStringAsFixed(0),
                            ),
                            Text(
                              'pHa',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontSize: 12.sp),
                            ),
                          ],
                        )),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              WidgetCard(
                title: 'Visibility',
                titleIcon: AssetConstants.visibility,
                description: 'Light haze is affecting visibility',
                value: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                    SizedBox(
                      width: 1.5.w,
                    ),
                    Text(
                      'km',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              WidgetCard(
                title: 'Clouds',
                titleIcon: AssetConstants.cloud,
                description: 'Mostly cloudy',
                value: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '75',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.inverseSurface,
                          ),
                    ),
                    Text(
                      '%',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.inverseSurface,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 18.h,
                  padding: EdgeInsets.symmetric(
                    vertical: 0.w,
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
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(.5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(AssetConstants.wind),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Text(
                                  'Wind',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '26',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onInverseSurface,
                                      ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'KPH',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14.5.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                          ),
                                    ),
                                    SizedBox(
                                      height: .5.h,
                                    ),
                                    Text(
                                      'Wind',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 1.h),
                                  height: .2,
                                  width: 45.w,
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '44',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiary,
                                      ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KPH',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14.5.sp,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    SizedBox(
                                      height: .7.h,
                                    ),
                                    Text(
                                      'Gusts',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        AssetConstants.compass,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }
}

class WidgetCard extends StatelessWidget {
  const WidgetCard({
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
