import 'package:schedule_mpt/feature/domain/entiti/specialities_entiti.dart';

class SpecialitiesModel extends SpecialitiesEntiti {
  SpecialitiesModel({required final List<String> specialities})
      : super(
          specialities: specialities,
        );
  factory SpecialitiesModel.fromJson(Map<String, dynamic> json) =>
      SpecialitiesModel(
        specialities: List<String>.from(
          (json['specialities'] as List<dynamic>).map((json) => json),
        ).toList(),
      );
}
