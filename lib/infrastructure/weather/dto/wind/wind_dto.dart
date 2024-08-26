import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_dto.freezed.dart';
part 'wind_dto.g.dart';

@freezed
class WindDto with _$WindDto {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory WindDto({
    required double speed,
    required int deg,
    required double gust,
  }) = _WindDto;

  factory WindDto.fromJson(Map<String, dynamic> json) => _$WindDtoFromJson(json);
}
