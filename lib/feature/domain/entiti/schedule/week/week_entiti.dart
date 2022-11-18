import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_entiti.freezed.dart';

@freezed
class WeekEntiti with _$WeekEntiti {
  const factory WeekEntiti({required final String week}) = _WeekEntiti;
}
