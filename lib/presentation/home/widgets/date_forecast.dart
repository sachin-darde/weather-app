import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weather_app/application/home_bloc/home_bloc.dart';
import 'package:weather_app/domain/core/constants/string_constants.dart';

import '../../../domain/core/constants/asset_constants.dart';
import '../../../domain/core/helpers/generic_helpers.dart';

class DateForecast extends StatelessWidget {
  const DateForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
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
                          state.city == null
                              ? 'Loading...'
                              : '${state.city!.name}, ${state.city!.country}',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
                        GestureDetector(
                          onTap: state.currentDateIndex > 0
                              ? () {
                                  BlocProvider.of<HomeBloc>(context).add(
                                    HomeEvent.updateCurrentDate(
                                      newDate: state
                                          .dates[state.currentDateIndex - 1],
                                      newIndex: state.currentDateIndex - 1,
                                    ),
                                  );
                                }
                              : null,
                          child: Container(
                            padding: EdgeInsets.all(1.5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: state.currentDateIndex > 0
                                  ? Theme.of(context)
                                      .scaffoldBackgroundColor
                                      .withOpacity(.5)
                                  : Colors.grey.withOpacity(0.5),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              size: 7.w,
                              color: state.currentDateIndex > 0
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        Text(
                          state.currentDate != null
                              ? GenericHelpers.dateFormatter(
                                  DateTime.parse(state.currentDate!),
                                )
                              : 'Loading...',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16.5.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        GestureDetector(
                          onTap: state.currentDateIndex < state.dates.length - 1
                              ? () {
                                  BlocProvider.of<HomeBloc>(context).add(
                                    HomeEvent.updateCurrentDate(
                                      newDate: state
                                          .dates[state.currentDateIndex + 1],
                                      newIndex: state.currentDateIndex + 1,
                                    ),
                                  );
                                }
                              : null,
                          child: Container(
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: state.currentDateIndex <
                                      state.dates.length - 1
                                  ? Theme.of(context)
                                      .scaffoldBackgroundColor
                                      .withOpacity(.5)
                                  : Colors.grey.withOpacity(0.5),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              size: 7.w,
                              color: state.currentDateIndex <
                                      state.dates.length - 1
                                  ? Colors.black
                                  : Colors.grey,
                            ),
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
                        controller: state.scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.groupedForecasts.isEmpty
                            ? 8
                            : state.groupedForecasts[state.currentDate]!.length,
                        itemBuilder: (context, index) {
                          if (state.groupedForecasts.isEmpty) {
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
                                ));
                          }
                          final forecast =
                              state.groupedForecasts[state.currentDate]![index];
                          final DateTime time =
                              GenericHelpers.convertToLocalTime(
                                  forecast.dt, state.city!.timezone);
                          final String formattedTime =
                              DateFormat('h:00 a').format(time);

                          final String temperature =
                              '${forecast.main.temp.toStringAsFixed(0)}°C';

                          return GestureDetector(
                            onTap: () {
                              context.read<HomeBloc>().add(HomeEvent.switchForecast(forecast: forecast));
                            },
                            child: Padding(
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
                                    border: Border.all(
                                        width: 2,
                                        color: forecast == state.currentForecast
                                            ? Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.5)
                                            : Theme.of(context)
                                                .scaffoldBackgroundColor
                                                .withOpacity(0))),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      GenericHelpers.getWeatherImage(
                                          forecast.weather.first.main),
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
                                            fontSize: 11.0,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                          ),
                                    ),
                                  ],
                                ),
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
                            state.currentForecast == null
                                ? '**'
                                : (state.currentForecast!.main.temp)
                                    .toStringAsFixed(0)
                                    .toString(),
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
                                'High : ${state.currentForecast == null ? '**' : (state.currentForecast!.main.tempMax).toStringAsFixed(0)}${AppConstants.celcious}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
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
                                'Low : ${state.currentForecast == null ? '**' : (state.currentForecast!.main.tempMax).toStringAsFixed(0)}${AppConstants.celcious}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
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
                            'Feels Like : ${state.currentForecast == null ? '**' : (state.currentForecast!.main.feelsLike).toStringAsFixed(0)}${AppConstants.celcious}',
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
              ),
            ),
          );
        });
  }
}
