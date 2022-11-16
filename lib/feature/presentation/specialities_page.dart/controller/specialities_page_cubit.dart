import 'package:schedule_mpt/constants.dart';
import 'package:schedule_mpt/feature/domain/usecases/schedule.dart';

import 'specialities_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialitiesCubit extends Cubit<SpecialitiesState> {
  final GetSpecialities getSpecialities;

  SpecialitiesCubit({required this.getSpecialities})
      : super(SpecialitiesEmptyState());

  Future<void> fetchSpecialities(String endpoint) async {
    try {
      emit(SpecialitiesEmptyState());
      final loadedSpecialitiesOrFailure =
          await getSpecialities.call(EndpointParams(endpoint: endpoint));
      loadedSpecialitiesOrFailure.fold(
        (error) =>
            emit(SpecialitiesErrorState(message: SERVER_FAILURE_MESSAGE)),
        (loadedData) => emit(SpecialitiesLoadedState(loadedData)),
      );
    } catch (_) {
      emit(
        SpecialitiesErrorState(message: SERVER_FAILURE_MESSAGE),
      );
    }
  }
}