class DataModel {
  final int? id;
  String name;
  String email;
  String course;
  String adm_num;
  String phonenum;
  String password;

  DataModel({
    this.id,
    required this.name,
    required this.email,
    required this.course,
    required this.adm_num,
    required this.phonenum,
    required this.password,
  });
  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      course: json["course"],
      adm_num: json["adm_num"],
      phonenum: json["phonenum"],
      password: json["password"]);
  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "course": course,
        "adm_num": adm_num,
        "phonenum": phonenum,
        "password": password
      };
}
