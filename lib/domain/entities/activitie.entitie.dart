class Activitie {
  final String _name;
  final String _category;

  Activitie(this._name, this._category);

  Map toJson() {
    return {
      'name': _name,
      'category': _category,
    };
  }
}
