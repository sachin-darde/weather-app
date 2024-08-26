import 'package:freezed_annotation/freezed_annotation.dart';

part 'clouds_dto.freezed.dart';
part 'clouds_dto.g.dart';

@freezed
class CloudsDto with _$CloudsDto {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CloudsDto({
    required int all,
  }) = _CloudsDto;

  factory CloudsDto.fromJson(Map<String, dynamic> json) => _$CloudsDtoFromJson(json);
}
