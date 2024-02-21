class StudentsModel {
  StudentsModel({
    required this.id,
    required this.name,
    required this.scores,
  });
  late final int id;
  late final String name;
  late final List<Scores> scores;
  
  StudentsModel.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    name = json['name'];
    scores = List.from(json['scores']).map((e)=>Scores.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = id;
    data['name'] = name;
    data['scores'] = scores.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Scores {
  Scores({
    required this.score,
    required this.type,
  });
  late final double score;
  late final String type;
  
  Scores.fromJson(Map<String, dynamic> json){
    score = json['score'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['score'] = score;
    data['type'] = type;
    return data;
  }
}