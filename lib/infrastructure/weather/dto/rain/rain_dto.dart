import 'package:freezed_annotation/freezed_annotation.dart';

part 'rain_dto.freezed.dart';
part 'rain_dto.g.dart';

@freezed
class RainDto with _$RainDto {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory RainDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: '3h') required double threeH,
  }) = _RainDto;

  factory RainDto.fromJson(Map<String, dynamic> json) => _$RainDtoFromJson(json);
}
