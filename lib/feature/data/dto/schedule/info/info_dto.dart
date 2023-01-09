import 'package:schedule_mpt/feature/domain/entiti/schedule/info/info_entiti.dart';

class InfoDto extends InfoEntiti {
  InfoDto({
    required final String day,
    required final String place,
  }) : super(
          day: day,
          place: place,
        );
  factory InfoDto.fromJson(Map<String, dynamic> json) => InfoDto(
        day: json['day'],
        place: json["place"],
      );
  Map<String, dynamic> toJson() {
    return {
      "day": day,
      "place": place,
    };
  }
}
