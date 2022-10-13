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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ActivitiesProgress type in your schema. */
@immutable
class ActivitiesProgress extends Model {
  static const classType = const _ActivitiesProgressModelType();
  final String id;
  final int? _correctReading;
  final int? _wrongReading;
  final int? _correctWriting;
  final int? _wrongWriting;
  final int? _correctSpeaking;
  final int? _wrongSpeaking;
  final int? _correctListening;
  final int? _wrongListening;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  int? get correctReading {
    return _correctReading;
  }
  
  int? get wrongReading {
    return _wrongReading;
  }
  
  int? get correctWriting {
    return _correctWriting;
  }
  
  int? get wrongWriting {
    return _wrongWriting;
  }
  
  int? get correctSpeaking {
    return _correctSpeaking;
  }
  
  int? get wrongSpeaking {
    return _wrongSpeaking;
  }
  
  int? get correctListening {
    return _correctListening;
  }
  
  int? get wrongListening {
    return _wrongListening;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ActivitiesProgress._internal({required this.id, correctReading, wrongReading, correctWriting, wrongWriting, correctSpeaking, wrongSpeaking, correctListening, wrongListening, createdAt, updatedAt}): _correctReading = correctReading, _wrongReading = wrongReading, _correctWriting = correctWriting, _wrongWriting = wrongWriting, _correctSpeaking = correctSpeaking, _wrongSpeaking = wrongSpeaking, _correctListening = correctListening, _wrongListening = wrongListening, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ActivitiesProgress({String? id, int? correctReading, int? wrongReading, int? correctWriting, int? wrongWriting, int? correctSpeaking, int? wrongSpeaking, int? correctListening, int? wrongListening}) {
    return ActivitiesProgress._internal(
      id: id == null ? UUID.getUUID() : id,
      correctReading: correctReading,
      wrongReading: wrongReading,
      correctWriting: correctWriting,
      wrongWriting: wrongWriting,
      correctSpeaking: correctSpeaking,
      wrongSpeaking: wrongSpeaking,
      correctListening: correctListening,
      wrongListening: wrongListening);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivitiesProgress &&
      id == other.id &&
      _correctReading == other._correctReading &&
      _wrongReading == other._wrongReading &&
      _correctWriting == other._correctWriting &&
      _wrongWriting == other._wrongWriting &&
      _correctSpeaking == other._correctSpeaking &&
      _wrongSpeaking == other._wrongSpeaking &&
      _correctListening == other._correctListening &&
      _wrongListening == other._wrongListening;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ActivitiesProgress {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("correctReading=" + (_correctReading != null ? _correctReading!.toString() : "null") + ", ");
    buffer.write("wrongReading=" + (_wrongReading != null ? _wrongReading!.toString() : "null") + ", ");
    buffer.write("correctWriting=" + (_correctWriting != null ? _correctWriting!.toString() : "null") + ", ");
    buffer.write("wrongWriting=" + (_wrongWriting != null ? _wrongWriting!.toString() : "null") + ", ");
    buffer.write("correctSpeaking=" + (_correctSpeaking != null ? _correctSpeaking!.toString() : "null") + ", ");
    buffer.write("wrongSpeaking=" + (_wrongSpeaking != null ? _wrongSpeaking!.toString() : "null") + ", ");
    buffer.write("correctListening=" + (_correctListening != null ? _correctListening!.toString() : "null") + ", ");
    buffer.write("wrongListening=" + (_wrongListening != null ? _wrongListening!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ActivitiesProgress copyWith({String? id, int? correctReading, int? wrongReading, int? correctWriting, int? wrongWriting, int? correctSpeaking, int? wrongSpeaking, int? correctListening, int? wrongListening}) {
    return ActivitiesProgress._internal(
      id: id ?? this.id,
      correctReading: correctReading ?? this.correctReading,
      wrongReading: wrongReading ?? this.wrongReading,
      correctWriting: correctWriting ?? this.correctWriting,
      wrongWriting: wrongWriting ?? this.wrongWriting,
      correctSpeaking: correctSpeaking ?? this.correctSpeaking,
      wrongSpeaking: wrongSpeaking ?? this.wrongSpeaking,
      correctListening: correctListening ?? this.correctListening,
      wrongListening: wrongListening ?? this.wrongListening);
  }
  
  ActivitiesProgress.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _correctReading = (json['correctReading'] as num?)?.toInt(),
      _wrongReading = (json['wrongReading'] as num?)?.toInt(),
      _correctWriting = (json['correctWriting'] as num?)?.toInt(),
      _wrongWriting = (json['wrongWriting'] as num?)?.toInt(),
      _correctSpeaking = (json['correctSpeaking'] as num?)?.toInt(),
      _wrongSpeaking = (json['wrongSpeaking'] as num?)?.toInt(),
      _correctListening = (json['correctListening'] as num?)?.toInt(),
      _wrongListening = (json['wrongListening'] as num?)?.toInt(),
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'correctReading': _correctReading, 'wrongReading': _wrongReading, 'correctWriting': _correctWriting, 'wrongWriting': _wrongWriting, 'correctSpeaking': _correctSpeaking, 'wrongSpeaking': _wrongSpeaking, 'correctListening': _correctListening, 'wrongListening': _wrongListening, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CORRECTREADING = QueryField(fieldName: "correctReading");
  static final QueryField WRONGREADING = QueryField(fieldName: "wrongReading");
  static final QueryField CORRECTWRITING = QueryField(fieldName: "correctWriting");
  static final QueryField WRONGWRITING = QueryField(fieldName: "wrongWriting");
  static final QueryField CORRECTSPEAKING = QueryField(fieldName: "correctSpeaking");
  static final QueryField WRONGSPEAKING = QueryField(fieldName: "wrongSpeaking");
  static final QueryField CORRECTLISTENING = QueryField(fieldName: "correctListening");
  static final QueryField WRONGLISTENING = QueryField(fieldName: "wrongListening");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ActivitiesProgress";
    modelSchemaDefinition.pluralName = "ActivitiesProgresses";
    
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
      key: ActivitiesProgress.CORRECTREADING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivitiesProgress.WRONGREADING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivitiesProgress.CORRECTWRITING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivitiesProgress.WRONGWRITING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivitiesProgress.CORRECTSPEAKING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivitiesProgress.WRONGSPEAKING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivitiesProgress.CORRECTLISTENING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivitiesProgress.WRONGLISTENING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
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

class _ActivitiesProgressModelType extends ModelType<ActivitiesProgress> {
  const _ActivitiesProgressModelType();
  
  @override
  ActivitiesProgress fromJson(Map<String, dynamic> jsonData) {
    return ActivitiesProgress.fromJson(jsonData);
  }
}