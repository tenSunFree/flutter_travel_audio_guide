import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/network_providers.dart';
import '../data/datasources/attraction_remote_data_source.dart';
import '../data/repositories/attraction_repository_impl.dart';
import '../domain/repositories/attraction_repository.dart';
import '../domain/usecases/get_attractions_usecase.dart';
import '../presentation/controllers/attraction_list_controller.dart';

final attractionRemoteDataSourceProvider = Provider<AttractionRemoteDataSource>(
  (ref) {
    return AttractionRemoteDataSource(ref.watch(dioProvider));
  },
);

final attractionRepositoryProvider = Provider<AttractionRepository>((ref) {
  return AttractionRepositoryImpl(
    ref.watch(attractionRemoteDataSourceProvider),
  );
});

final getAttractionsUseCaseProvider = Provider<GetAttractionsUseCase>((ref) {
  return GetAttractionsUseCase(ref.watch(attractionRepositoryProvider));
});

final attractionListControllerProvider =
    StateNotifierProvider<AttractionListController, AttractionListState>((ref) {
      return AttractionListController(ref.watch(getAttractionsUseCaseProvider));
    });
