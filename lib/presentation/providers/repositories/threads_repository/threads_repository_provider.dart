import 'package:ika_smansara/data/appwrite/appwrite_threads_repository.dart';
import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'threads_repository_provider.g.dart';

@riverpod
ThreadsRepository threadsRepository(ThreadsRepositoryRef ref) =>
    AppwriteThreadsRepository();
