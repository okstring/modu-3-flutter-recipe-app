import 'package:recipe_app/data/dto/procedure_dto.dart';
import 'package:recipe_app/domain/model/procedure.dart';

extension ProcedureMapper on ProcedureDto {
  Procedure toProcedure() {
    return Procedure(descriptions: descriptions);
  }
}
