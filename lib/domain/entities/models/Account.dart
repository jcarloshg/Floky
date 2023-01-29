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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Account type in your schema. */
@immutable
class Account extends Model {
  static const classType = const _AccountModelType();
  final String id;
  final String? _fullName;
  final String? _email;
  final String? _collegeEnrollment;
  final String? _collegeName;
  final Role? _role;
  final List<Post>? _posts;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get fullName {
    try {
      return _fullName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get collegeEnrollment {
    try {
      return _collegeEnrollment!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get collegeName {
    try {
      return _collegeName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Role get role {
    try {
      return _role!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Post>? get posts {
    return _posts;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Account._internal({required this.id, required fullName, required email, required collegeEnrollment, required collegeName, required role, posts, createdAt, updatedAt}): _fullName = fullName, _email = email, _collegeEnrollment = collegeEnrollment, _collegeName = collegeName, _role = role, _posts = posts, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Account({String? id, required String fullName, required String email, required String collegeEnrollment, required String collegeName, required Role role, List<Post>? posts}) {
    return Account._internal(
      id: id == null ? UUID.getUUID() : id,
      fullName: fullName,
      email: email,
      collegeEnrollment: collegeEnrollment,
      collegeName: collegeName,
      role: role,
      posts: posts != null ? List<Post>.unmodifiable(posts) : posts);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
      id == other.id &&
      _fullName == other._fullName &&
      _email == other._email &&
      _collegeEnrollment == other._collegeEnrollment &&
      _collegeName == other._collegeName &&
      _role == other._role &&
      DeepCollectionEquality().equals(_posts, other._posts);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Account {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fullName=" + "$_fullName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("collegeEnrollment=" + "$_collegeEnrollment" + ", ");
    buffer.write("collegeName=" + "$_collegeName" + ", ");
    buffer.write("role=" + (_role != null ? enumToString(_role)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Account copyWith({String? id, String? fullName, String? email, String? collegeEnrollment, String? collegeName, Role? role, List<Post>? posts}) {
    return Account._internal(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      collegeEnrollment: collegeEnrollment ?? this.collegeEnrollment,
      collegeName: collegeName ?? this.collegeName,
      role: role ?? this.role,
      posts: posts ?? this.posts);
  }
  
  Account.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _fullName = json['fullName'],
      _email = json['email'],
      _collegeEnrollment = json['collegeEnrollment'],
      _collegeName = json['collegeName'],
      _role = enumFromString<Role>(json['role'], Role.values),
      _posts = json['posts'] is List
        ? (json['posts'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Post.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'fullName': _fullName, 'email': _email, 'collegeEnrollment': _collegeEnrollment, 'collegeName': _collegeName, 'role': enumToString(_role), 'posts': _posts?.map((Post? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'fullName': _fullName, 'email': _email, 'collegeEnrollment': _collegeEnrollment, 'collegeName': _collegeName, 'role': _role, 'posts': _posts, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FULLNAME = QueryField(fieldName: "fullName");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField COLLEGEENROLLMENT = QueryField(fieldName: "collegeEnrollment");
  static final QueryField COLLEGENAME = QueryField(fieldName: "collegeName");
  static final QueryField ROLE = QueryField(fieldName: "role");
  static final QueryField POSTS = QueryField(
    fieldName: "posts",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Post).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Account";
    modelSchemaDefinition.pluralName = "Accounts";
    
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
      key: Account.FULLNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.EMAIL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.COLLEGEENROLLMENT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.COLLEGENAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.ROLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Account.POSTS,
      isRequired: false,
      ofModelName: (Post).toString(),
      associatedKey: Post.TUTORACCOUNTID
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

class _AccountModelType extends ModelType<Account> {
  const _AccountModelType();
  
  @override
  Account fromJson(Map<String, dynamic> jsonData) {
    return Account.fromJson(jsonData);
  }
}