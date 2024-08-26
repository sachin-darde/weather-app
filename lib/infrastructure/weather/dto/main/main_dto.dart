import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_dto.freezed.dart';
part 'main_dto.g.dart';

@freezed
class MainDto with _$MainDto {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory MainDto({
    required double temp,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required int pressure,
    required int humidity,
  }) = _MainDto;

  factory MainDto.fromJson(Map<String, dynamic> json) => _$MainDtoFromJson(json);
}
