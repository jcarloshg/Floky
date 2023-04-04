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


/** This is an auto generated class representing the Answer type in your schema. */
@immutable
class Answer {
  final String? _correct;
  final String? _incorrect_1;
  final String? _incorrect_2;
  final String? _incorrect_3;
  final String? _pronunciation;

  String get correct {
    try {
      return _correct!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get incorrect_1 {
    return _incorrect_1;
  }
  
  String? get incorrect_2 {
    return _incorrect_2;
  }
  
  String? get incorrect_3 {
    return _incorrect_3;
  }
  
  String get pronunciation {
    try {
      return _pronunciation!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Answer._internal({required correct, incorrect_1, incorrect_2, incorrect_3, required pronunciation}): _correct = correct, _incorrect_1 = incorrect_1, _incorrect_2 = incorrect_2, _incorrect_3 = incorrect_3, _pronunciation = pronunciation;
  
  factory Answer({required String correct, String? incorrect_1, String? incorrect_2, String? incorrect_3, required String pronunciation}) {
    return Answer._internal(
      correct: correct,
      incorrect_1: incorrect_1,
      incorrect_2: incorrect_2,
      incorrect_3: incorrect_3,
      pronunciation: pronunciation);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Answer &&
      _correct == other._correct &&
      _incorrect_1 == other._incorrect_1 &&
      _incorrect_2 == other._incorrect_2 &&
      _incorrect_3 == other._incorrect_3 &&
      _pronunciation == other._pronunciation;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Answer {");
    buffer.write("correct=" + "$_correct" + ", ");
    buffer.write("incorrect_1=" + "$_incorrect_1" + ", ");
    buffer.write("incorrect_2=" + "$_incorrect_2" + ", ");
    buffer.write("incorrect_3=" + "$_incorrect_3" + ", ");
    buffer.write("pronunciation=" + "$_pronunciation");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Answer copyWith({String? correct, String? incorrect_1, String? incorrect_2, String? incorrect_3, String? pronunciation}) {
    return Answer._internal(
      correct: correct ?? this.correct,
      incorrect_1: incorrect_1 ?? this.incorrect_1,
      incorrect_2: incorrect_2 ?? this.incorrect_2,
      incorrect_3: incorrect_3 ?? this.incorrect_3,
      pronunciation: pronunciation ?? this.pronunciation);
  }
  
  Answer.fromJson(Map<String, dynamic> json)  
    : _correct = json['correct'],
      _incorrect_1 = json['incorrect_1'],
      _incorrect_2 = json['incorrect_2'],
      _incorrect_3 = json['incorrect_3'],
      _pronunciation = json['pronunciation'];
  
  Map<String, dynamic> toJson() => {
    'correct': _correct, 'incorrect_1': _incorrect_1, 'incorrect_2': _incorrect_2, 'incorrect_3': _incorrect_3, 'pronunciation': _pronunciation
  };
  
  Map<String, Object?> toMap() => {
    'correct': _correct, 'incorrect_1': _incorrect_1, 'incorrect_2': _incorrect_2, 'incorrect_3': _incorrect_3, 'pronunciation': _pronunciation
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Answer";
    modelSchemaDefinition.pluralName = "Answers";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'correct',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'incorrect_1',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'incorrect_2',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'incorrect_3',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'pronunciation',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}