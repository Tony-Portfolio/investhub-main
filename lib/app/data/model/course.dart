
class Course {
  int? _id;
  String? _title;
  String? _description;
  String? _author;
  int? _rating;
  int? _price;
  int? _viewer;
  List<String>? _info;
  String? _image;
  String? _lastUpate;
  String? _level;

  Course({
    int? id, 
    String? title,
    String? description,
    String? author,
    int? rating,
    int? price,
    int? viewer,
    List<String>? info,
    String? image,
    String? lastUpate,
    String? level,
    }) 
    : _id = id, 
    _title = title, 
    _description = description, 
    _author = author, 
    _rating = rating, 
    _price = price,
    _viewer = viewer,
    _info = info,
    _image = image,
    _lastUpate = lastUpate,
    _level = level;

  String? get title => _title;
  String? get description => _description;
  String? get author => _author;
  int? get rating => _rating;
  int? get price => _price;
  List<String>? get info => _info;
  String? get image => _image;
  int? get viewer => _viewer;
  String? get level => _level;
  String? get lastUpate => _lastUpate;

  

  Course.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _author = json['author'];
    _rating = json['rating'];
    _price = json['price'];
    _viewer = json['viewer'];
    _info = json['info'];
    _image = json['image'];
    _level = json['level'];
    _lastUpate = json['last_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['title'] = _title;
    data['description'] = _description;
    data['author'] = _author;
    data['rating'] = _rating;
    data['price'] = _price;
    data['viewer'] = _viewer;
    data['info'] = _info;
    data['image'] = _image;
    data['level'] = _level;
    data['last_update'] = _lastUpate;
    return data;
  }
}
