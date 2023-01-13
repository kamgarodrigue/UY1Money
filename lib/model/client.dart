import 'package:uy1money/model/compte.dart';

class Client {
  String? id, nom, prenom, telephone, login, password;
  Compte? compte;
  Client(
      {required id,
      required this.login,
      required this.nom,
      required this.password,
      required this.prenom,
      required this.compte,
      required this.telephone});
  factory Client.fromJson(Map<String, dynamic> json) => Client(
      id: json["id"],
      login: json["login"],
      nom: json["nom"],
      password: json["password"],
      prenom: json["prenom"],
      compte: json["compte"],
      telephone: json["elephone"]);
  Map<String, dynamic> toJson() => {
        "id": id,
        "login": login,
        "nom": nom,
        "password": password,
        "prenom": prenom,
        "compte": compte,
        "telephone": telephone
      };
}
