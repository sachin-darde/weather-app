import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weather_app/application/home_bloc/home_bloc.dart';
import 'package:weather_app/domain/core/constants/asset_constants.dart';
import 'package:weather_app/domain/core/constants/string_constants.dart';
import 'package:weather_app/domain/core/helpers/generic_helpers.dart';
import 'package:weather_app/presentation/home/widgets/parameter_card.dart';

class ForecastDetails extends StatelessWidget {
  const ForecastDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 67.h),
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
                    ParameterCard(
                      title: 'Humidity',
                      titleIcon: AssetConstants.humidity,
                      description:
                          'The dew point is ${state.currentForecast == null ? '**' : GenericHelpers.calculateDewPoint(state.currentForecast!.main.temp, state.currentForecast!.main.humidity.toDouble()).toStringAsFixed(0)} ${AppConstants.celcious} right now',
                      value: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.currentForecast == null
                                ? '**'
                                : (state.currentForecast!.main.humidity)
                                    .toStringAsFixed(0),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                          Text(
                            '%',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    ParameterCard(
                      title: 'Pressure',
                      titleIcon: AssetConstants.pressure,
                      description: state.currentForecast == null
                          ? '**'
                          : (state.currentForecast!.main.pressure) < 1013
                              ? 'Current pressure is ${state.currentForecast!.main.pressure} hPa, which may lead to unsettled weather.'
                              : 'Current pressure is ${state.currentForecast!.main.pressure} hPa, suggesting calm and clear weather.',
                      value: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.currentForecast == null
                                ? '**'
                                : (state.currentForecast!.main.pressure)
                                    .toStringAsFixed(0),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                          ),
                          Text(
                            'hPa',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
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
                    ParameterCard(
                      title: 'Visibility',
                      titleIcon: AssetConstants.visibility,
                      description: state.currentForecast == null
                          ? 'Loading...'
                          : GenericHelpers.getVisibilityDescription(
                              state.currentForecast!.visibility / 1000),
                      value: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.currentForecast == null
                                ? '**'
                                : (state.currentForecast!.visibility / 1000)
                                    .toStringAsFixed(1),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
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
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
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
                    ParameterCard(
                      title: 'Clouds',
                      titleIcon: AssetConstants.cloud,
                      description: state.currentForecast == null
                          ? 'Loading...'
                          : GenericHelpers.getCloudCoverageDescription(
                              state.currentForecast!.clouds.all),
                      value: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.currentForecast == null
                                ? '**'
                                : (state.currentForecast!.clouds.all)
                                    .toStringAsFixed(0),
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 23.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inverseSurface,
                                    ),
                          ),
                          Text(
                            '%',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inverseSurface,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.currentForecast == null
                                            ? '**'
                                            : (state.currentForecast!.wind
                                                    .speed)
                                                .toStringAsFixed(0),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.h),
                                        height: .2,
                                        width: 35.w,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiary,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.currentForecast == null
                                            ? '**'
                                            : (state.currentForecast!.wind.gust)
                                                .toStringAsFixed(0),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                            // I WANT SHOW Angle
                          ],
                        ),
                      ),
                    ),
                    if (state.currentForecast != null)
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wind Direction',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              state.currentForecast == null
                                  ? '**'
                                  : GenericHelpers.getWindDirection(
                                      state.currentForecast!.wind.deg),
                              style: TextStyle(
                                fontFamily: 'Thunder',
                                fontWeight: FontWeight.w700,
                                fontSize: 30.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            ),
          );
        });
  }
}
