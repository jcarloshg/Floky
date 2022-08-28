class Student {
  final String _id;
  final String _college;
  final String _emial;
  final String _lastName;
  final String _name;
  final String _picture;
  final String _registerCollege;

  Student(
    this._id,
    this._college,
    this._emial,
    this._lastName,
    this._name,
    this._picture,
    this._registerCollege,
  );

  Map toJson() => {
        'id': _id,
        'college': _college,
        'emial': _emial,
        'lastName': _lastName,
        'name': _name,
        'picture': _picture,
        'registerCollege': _registerCollege,
      };

  static getVoidStudent() => Student('', '', '', '', '', '', '');
}
