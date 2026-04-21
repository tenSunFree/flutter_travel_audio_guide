import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/activity_page.dart';
import '../../domain/repositories/activity_repository.dart';
import '../datasources/activity_remote_data_source.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  const ActivityRepositoryImpl({
    required ActivityRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final ActivityRemoteDataSource _remoteDataSource;

  @override
  Future<ActivityPage> getActivities({
    required String lang,
    required int page,
    String? begin,
    String? end,
  }) async {
    final pageModel = await _remoteDataSource.getActivities(
      lang: lang,
      page: page,
      begin: begin,
      end: end,
    );
    final items = pageModel.data.map((m) => m.toEntity()).toList();
    // Check if there are more pages: Number loaded < Total
    final loadedCount = (page - 1) * ApiConstants.pageSize + items.length;
    final hasMore = loadedCount < pageModel.total;
    return ActivityPage(
      total: pageModel.total,
      page: pageModel.page,
      items: items,
      hasMore: hasMore,
    );
  }
}
