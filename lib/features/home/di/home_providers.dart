import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/database/database_provider.dart';
import '../data/repositories/home_repository.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return HomeRepository(
    attractionDao: db.attractionDao,
    activityDao: db.activityDao,
  );
});
