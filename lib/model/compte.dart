class Compte {
  String? id, telephone, codeSecret, solde;
  Compte(
      {required this.id,
      required this.solde,
      required this.codeSecret,
      required this.telephone});
  factory Compte.fromJson(Map<String, dynamic> json) => Compte(
        id: json["id"],
        codeSecret: json["codeSecret"],
        solde: json["solde"],
        telephone: json["telephone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "telephone": telephone,
        "codeSecret": codeSecret,
        "solde": solde
      };
}
