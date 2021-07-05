/// source : {"id":null,"name":"NPR"}
/// author : null
/// title : "Judge Orders Release Of Wisconsin Woman In Slender Man Case - NPR"
/// description : "When she was 12, Anissa Weier and a friend tried to kill another girl to please a fictional character. A judge says officials have 60 days to develop a conditional release plan for Weier."
/// url : "https://www.npr.org/2021/07/01/1012330011/judge-orders-release-of-wisconsin-woman-in-slender-man-case"
/// urlToImage : "https://media.npr.org/assets/img/2021/07/01/ap21182749267350_wide-1a00b6e3ac12246e030b7827fcc90aee0b83e755.jpg?s=1400"
/// publishedAt : "2021-07-01T21:48:16Z"
/// content : "Anissa Weier, pictured in 2017, one of two Wisconsin girls who tried to kill a classmate to win favor with a fictional horror character named Slender Man, has been ordered released by a judge.\r\nMicha… [+2288 chars]"

class Articles {
  Source _source;
  dynamic _author;
  String _title;
  String _description;
  String _url;
  String _urlToImage;
  String _publishedAt;
  String _content;

  Source get source => _source;
  dynamic get author => _author;
  String get title => _title;
  String get description => _description;
  String get url => _url;
  String get urlToImage => _urlToImage;
  String get publishedAt => _publishedAt;
  String get content => _content;

  Articles(
      {Source source,
      dynamic author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content}) {
    _source = source;
    _author = author;
    _title = title;
    _description = description;
    _url = url;
    _urlToImage = urlToImage;
    _publishedAt = publishedAt;
    _content = content;
  }

  Articles.fromJson(dynamic json) {
    try {
      _source = json["source"] != null ? Source.fromJson(json["source"]) : null;
      _author = json["author"];
      _title = json["title"];
      _description = json["description"];
      _url = json["url"];
      _urlToImage = json["urlToImage"];
      _publishedAt = json["publishedAt"];
      _content = json["content"];
    } catch (ex) {
      print("error from Articles.fromJson");
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_source != null) {
      map["source"] = _source.toJson();
    }
    map["author"] = _author;
    map["title"] = _title;
    map["description"] = _description;
    map["url"] = _url;
    map["urlToImage"] = _urlToImage;
    map["publishedAt"] = _publishedAt;
    map["content"] = _content;
    return map;
  }
}

/// id : null
/// name : "NPR"

class Source {
  dynamic _id;
  String _name;

  dynamic get id => _id;
  String get name => _name;

  Source({dynamic id, String name}) {
    _id = id;
    _name = name;
  }

  Source.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    return map;
  }
}
