/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Activity type in your schema. */
@immutable
class Activity extends Model {
  static const classType = const _ActivityModelType();
  final String id;
  final String? _name;
  final ActivityLevel? _activityLevel;
  final ActivityType? _activityType;
  final String? _question;
  final String? _questionBody;
  final Answer? _answers;
  final Topic? _topic;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _activityTopicId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  ActivityLevel get activityLevel {
    try {
      return _activityLevel!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  ActivityType get activityType {
    try {
      return _activityType!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get question {
    try {
      return _question!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get questionBody {
    try {
      return _questionBody!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Answer get answers {
    try {
      return _answers!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Topic get topic {
    try {
      return _topic!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String get activityTopicId {
    try {
      return _activityTopicId!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Activity._internal({required this.id, required name, required activityLevel, required activityType, required question, required questionBody, required answers, required topic, createdAt, updatedAt, required activityTopicId}): _name = name, _activityLevel = activityLevel, _activityType = activityType, _question = question, _questionBody = questionBody, _answers = answers, _topic = topic, _createdAt = createdAt, _updatedAt = updatedAt, _activityTopicId = activityTopicId;
  
  factory Activity({String? id, required String name, required ActivityLevel activityLevel, required ActivityType activityType, required String question, required String questionBody, required Answer answers, required Topic topic, required String activityTopicId}) {
    return Activity._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      activityLevel: activityLevel,
      activityType: activityType,
      question: question,
      questionBody: questionBody,
      answers: answers,
      topic: topic,
      activityTopicId: activityTopicId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activity &&
      id == other.id &&
      _name == other._name &&
      _activityLevel == other._activityLevel &&
      _activityType == other._activityType &&
      _question == other._question &&
      _questionBody == other._questionBody &&
      _answers == other._answers &&
      _topic == other._topic &&
      _activityTopicId == other._activityTopicId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Activity {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("activityLevel=" + (_activityLevel != null ? enumToString(_activityLevel)! : "null") + ", ");
    buffer.write("activityType=" + (_activityType != null ? enumToString(_activityType)! : "null") + ", ");
    buffer.write("question=" + "$_question" + ", ");
    buffer.write("questionBody=" + "$_questionBody" + ", ");
    buffer.write("answers=" + (_answers != null ? _answers!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("activityTopicId=" + "$_activityTopicId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Activity copyWith({String? id, String? name, ActivityLevel? activityLevel, ActivityType? activityType, String? question, String? questionBody, Answer? answers, Topic? topic, String? activityTopicId}) {
    return Activity._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      activityLevel: activityLevel ?? this.activityLevel,
      activityType: activityType ?? this.activityType,
      question: question ?? this.question,
      questionBody: questionBody ?? this.questionBody,
      answers: answers ?? this.answers,
      topic: topic ?? this.topic,
      activityTopicId: activityTopicId ?? this.activityTopicId);
  }
  
  Activity.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _activityLevel = enumFromString<ActivityLevel>(json['activityLevel'], ActivityLevel.values),
      _activityType = enumFromString<ActivityType>(json['activityType'], ActivityType.values),
      _question = json['question'],
      _questionBody = json['questionBody'],
      _answers = json['answers']?['serializedData'] != null
        ? Answer.fromJson(new Map<String, dynamic>.from(json['answers']['serializedData']))
        : null,
      _topic = json['topic']?['serializedData'] != null
        ? Topic.fromJson(new Map<String, dynamic>.from(json['topic']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _activityTopicId = json['activityTopicId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'activityLevel': enumToString(_activityLevel), 'activityType': enumToString(_activityType), 'question': _question, 'questionBody': _questionBody, 'answers': _answers?.toJson(), 'topic': _topic?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'activityTopicId': _activityTopicId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'activityLevel': _activityLevel, 'activityType': _activityType, 'question': _question, 'questionBody': _questionBody, 'answers': _answers, 'topic': _topic, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'activityTopicId': _activityTopicId
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField ACTIVITYLEVEL = QueryField(fieldName: "activityLevel");
  static final QueryField ACTIVITYTYPE = QueryField(fieldName: "activityType");
  static final QueryField QUESTION = QueryField(fieldName: "question");
  static final QueryField QUESTIONBODY = QueryField(fieldName: "questionBody");
  static final QueryField ANSWERS = QueryField(fieldName: "answers");
  static final QueryField TOPIC = QueryField(
    fieldName: "topic",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Topic'));
  static final QueryField ACTIVITYTOPICID = QueryField(fieldName: "activityTopicId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Activity";
    modelSchemaDefinition.pluralName = "Activities";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activity.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activity.ACTIVITYLEVEL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activity.ACTIVITYTYPE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activity.QUESTION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activity.QUESTIONBODY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'answers',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Answer')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Activity.TOPIC,
      isRequired: true,
      ofModelName: 'Topic',
      associatedKey: Topic.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activity.ACTIVITYTOPICID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ActivityModelType extends ModelType<Activity> {
  const _ActivityModelType();
  
  @override
  Activity fromJson(Map<String, dynamic> jsonData) {
    return Activity.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Activity';
  }
}