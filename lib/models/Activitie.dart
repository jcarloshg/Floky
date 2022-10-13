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


/** This is an auto generated class representing the Activitie type in your schema. */
@immutable
class Activitie extends Model {
  static const classType = const _ActivitieModelType();
  final String id;
  final String? _name;
  final ActivityLevel? _activityLevel;
  final String? _topicID;
  final String? _question;
  final String? _questionBody;
  final String? _answers;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

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
  
  ActivityLevel? get activityLevel {
    return _activityLevel;
  }
  
  String get topicID {
    try {
      return _topicID!;
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
  
  String? get questionBody {
    return _questionBody;
  }
  
  String? get answers {
    return _answers;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Activitie._internal({required this.id, required name, activityLevel, required topicID, required question, questionBody, answers, createdAt, updatedAt}): _name = name, _activityLevel = activityLevel, _topicID = topicID, _question = question, _questionBody = questionBody, _answers = answers, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Activitie({String? id, required String name, ActivityLevel? activityLevel, required String topicID, required String question, String? questionBody, String? answers}) {
    return Activitie._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      activityLevel: activityLevel,
      topicID: topicID,
      question: question,
      questionBody: questionBody,
      answers: answers);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activitie &&
      id == other.id &&
      _name == other._name &&
      _activityLevel == other._activityLevel &&
      _topicID == other._topicID &&
      _question == other._question &&
      _questionBody == other._questionBody &&
      _answers == other._answers;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Activitie {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("activityLevel=" + (_activityLevel != null ? enumToString(_activityLevel)! : "null") + ", ");
    buffer.write("topicID=" + "$_topicID" + ", ");
    buffer.write("question=" + "$_question" + ", ");
    buffer.write("questionBody=" + "$_questionBody" + ", ");
    buffer.write("answers=" + "$_answers" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Activitie copyWith({String? id, String? name, ActivityLevel? activityLevel, String? topicID, String? question, String? questionBody, String? answers}) {
    return Activitie._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      activityLevel: activityLevel ?? this.activityLevel,
      topicID: topicID ?? this.topicID,
      question: question ?? this.question,
      questionBody: questionBody ?? this.questionBody,
      answers: answers ?? this.answers);
  }
  
  Activitie.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _activityLevel = enumFromString<ActivityLevel>(json['activityLevel'], ActivityLevel.values),
      _topicID = json['topicID'],
      _question = json['question'],
      _questionBody = json['questionBody'],
      _answers = json['answers'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'activityLevel': enumToString(_activityLevel), 'topicID': _topicID, 'question': _question, 'questionBody': _questionBody, 'answers': _answers, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField ACTIVITYLEVEL = QueryField(fieldName: "activityLevel");
  static final QueryField TOPICID = QueryField(fieldName: "topicID");
  static final QueryField QUESTION = QueryField(fieldName: "question");
  static final QueryField QUESTIONBODY = QueryField(fieldName: "questionBody");
  static final QueryField ANSWERS = QueryField(fieldName: "answers");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Activitie";
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
      key: Activitie.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activitie.ACTIVITYLEVEL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activitie.TOPICID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activitie.QUESTION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activitie.QUESTIONBODY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Activitie.ANSWERS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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
  });
}

class _ActivitieModelType extends ModelType<Activitie> {
  const _ActivitieModelType();
  
  @override
  Activitie fromJson(Map<String, dynamic> jsonData) {
    return Activitie.fromJson(jsonData);
  }
}