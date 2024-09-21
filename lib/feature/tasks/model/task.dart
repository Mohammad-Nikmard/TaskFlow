import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
@HiveType(typeId: 0)
class Task with _$Task {
  const factory Task({
    @HiveField(0) required String title,
    @HiveField(1) required String subTitle,
  }) = _Task;
}
