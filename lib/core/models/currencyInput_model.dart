class QuestionModel {
  String identifier;
  String question;

  QuestionModel({this.identifier, this.question});

  // QuestionModel.fromJson(Map<String, dynamic> json) {
  //   this.identifier = json['id'];
  //   this.question = json['name'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['identifier'] = this.identifier;
  //   data['question'] = this.identifier;
  //   return data;
  // }
}
