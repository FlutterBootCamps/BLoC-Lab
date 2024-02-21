class StudentModel {
  int? iId;
  String? name;
  List<Scores>? scores;

  StudentModel({this.iId, this.name, this.scores});

  StudentModel.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    name = json['name'];
    if (json['scores'] != null) {
      scores = <Scores>[];
      json['scores'].forEach((v) {
        scores!.add(new Scores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.iId;
    data['name'] = this.name;
    if (this.scores != null) {
      data['scores'] = this.scores!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Scores {
  double? score;
  String? type;

  Scores({this.score, this.type});

  Scores.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['score'] = this.score;
    data['type'] = this.type;
    return data;
  }
}