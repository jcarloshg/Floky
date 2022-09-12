import 'dart:convert';

class Student {
  final String _id;
  final String _college;
  final String _emial;
  final String _name;
  final String _picture;
  final String _registerCollege;

  Student(
    this._id,
    this._college,
    this._emial,
    this._name,
    this._picture,
    this._registerCollege,
  );

  String get id => _id;
  String get college => _college;
  String get emial => _emial;
  String get name => _name;
  String get picture => _picture;
  String get registerCollege => _registerCollege;

  Map<String, dynamic> toJson() => {
        'id': _id,
        'college': _college,
        'emial': _emial,
        'name': _name,
        'picture': _picture,
        'registerCollege': _registerCollege,
      };

  @override
  String toString() {
    return json.encode(toJson());
  }

  static getVoidStudent() => Student('', '', '', '', '', '');

  static Student studentByMap(Map<String, dynamic> newData) {
    return Student(
      newData['id'],
      newData['college'],
      newData['emial'],
      newData['name'],
      newData['picture'],
      newData['registerCollege'],
    );
  }
}
