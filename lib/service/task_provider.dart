import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_todo/feature/tasks/model/task.dart';

part 'task_provider.g.dart';

@riverpod
class TaskNotifier extends _$TaskNotifier {
  final box = Hive.box<Task>('TaskBox');
  @override
  Future<List<Task>> build() async {
    return box.values.toList();
  }

  Future<void> addTask(String title, String subTitle) async {
    final Task givenTask = Task(title: title, subTitle: subTitle);

    await box.add(givenTask);

    ref.invalidateSelf();
  }

  Future<void> deleteTask(int index) async {
    await box.deleteAt(index);

    ref.invalidateSelf();
  }
}
