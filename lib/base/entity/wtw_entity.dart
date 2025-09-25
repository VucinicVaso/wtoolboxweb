abstract class WTWEntity<T> {
  
  WTWEntity({
    this.key, 
    this.date
  });

  int? key;
  void setKey(int? v) { key = v; }

  String? date;
  void setDate(String? v) { date = v; }

  Map<String, dynamic>? toJson();

  T? fromJson(Map<dynamic, dynamic>? json);

  T? empty();

}