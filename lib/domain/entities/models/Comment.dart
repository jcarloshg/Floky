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


/** This is an auto generated class representing the Comment type in your schema. */
@immutable
class Comment extends Model {
  static const classType = const _CommentModelType();
  final String id;
  final String? _body;
  final String? _postID;
  final Account? _author;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _commentAuthorId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get body {
    try {
      return _body!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get postID {
    try {
      return _postID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Account? get author {
    return _author;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get commentAuthorId {
    return _commentAuthorId;
  }
  
  const Comment._internal({required this.id, required body, required postID, author, createdAt, updatedAt, commentAuthorId}): _body = body, _postID = postID, _author = author, _createdAt = createdAt, _updatedAt = updatedAt, _commentAuthorId = commentAuthorId;
  
  factory Comment({String? id, required String body, required String postID, Account? author, String? commentAuthorId}) {
    return Comment._internal(
      id: id == null ? UUID.getUUID() : id,
      body: body,
      postID: postID,
      author: author,
      commentAuthorId: commentAuthorId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
      id == other.id &&
      _body == other._body &&
      _postID == other._postID &&
      _author == other._author &&
      _commentAuthorId == other._commentAuthorId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("body=" + "$_body" + ", ");
    buffer.write("postID=" + "$_postID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("commentAuthorId=" + "$_commentAuthorId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Comment copyWith({String? id, String? body, String? postID, Account? author, String? commentAuthorId}) {
    return Comment._internal(
      id: id ?? this.id,
      body: body ?? this.body,
      postID: postID ?? this.postID,
      author: author ?? this.author,
      commentAuthorId: commentAuthorId ?? this.commentAuthorId);
  }
  
  Comment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _body = json['body'],
      _postID = json['postID'],
      _author = json['author']?['serializedData'] != null
        ? Account.fromJson(new Map<String, dynamic>.from(json['author']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _commentAuthorId = json['commentAuthorId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'body': _body, 'postID': _postID, 'author': _author?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'commentAuthorId': _commentAuthorId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'body': _body, 'postID': _postID, 'author': _author, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'commentAuthorId': _commentAuthorId
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField BODY = QueryField(fieldName: "body");
  static final QueryField POSTID = QueryField(fieldName: "postID");
  static final QueryField AUTHOR = QueryField(
    fieldName: "author",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Account).toString()));
  static final QueryField COMMENTAUTHORID = QueryField(fieldName: "commentAuthorId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["postID"], name: "byPost")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.BODY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.POSTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Comment.AUTHOR,
      isRequired: false,
      ofModelName: (Account).toString(),
      associatedKey: Account.ID
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
      key: Comment.COMMENTAUTHORID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CommentModelType extends ModelType<Comment> {
  const _CommentModelType();
  
  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
}