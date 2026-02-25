// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => _TodoModel(
  uuid: json['uuid'] as String,
  title: json['title'] as String,
  isCompleted: json['isCompleted'] as bool,
);

Map<String, dynamic> _$TodoModelToJson(_TodoModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'isCompleted': instance.isCompleted,
    };
