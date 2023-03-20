class PlayerModel {
  String playerFullName;
  String playerId;
  DateTime playerBirthDate;
  String playerCountry;
  String playerPosition;
  int _age = 0;

  PlayerModel(
      {required this.playerFullName,
      required this.playerId,
      required this.playerBirthDate,
      required this.playerCountry,
      required this.playerPosition}) {
    _age = (DateTime.now().year - playerBirthDate.year);
  }

  int get age {
    return _age;
  }
}
