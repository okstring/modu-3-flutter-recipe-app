import 'package:json_annotation/json_annotation.dart';

part 'procedure_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ProcedureDto {
  List<String> descriptions;

  ProcedureDto({
    required this.descriptions,
  });

  factory ProcedureDto.fromJson(Map<String, dynamic> json) => _$ProcedureDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProcedureDtoToJson(this);
}