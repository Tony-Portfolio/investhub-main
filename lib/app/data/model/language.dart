class Language {
  String _name;
  String _code;

  // Constructor with named parameters
  Language({String name = '', String code = ''})
      : _name = name,
        _code = code;

  // Getter for the name
  String get name => _name;

  // Setter for the name
  set name(String value) {
    _name = value;
  }

  // Getter for the age
  String get code => _code;

  // Setter for the age
  set code(String value) {
    _code = value;
  }
}