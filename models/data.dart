class Leagues {
  final String logo;
  final String name;

  Leagues({
    required this.logo,
    required this.name,
  });
}

List<Leagues> listOfLeagues = [
  Leagues(logo: 'assets/images/pl_logo.png', name: 'Primer League'),
  Leagues(logo: 'assets/images/LaLiga.png', name: 'LaLiga'),
  Leagues(logo: 'assets/images/seria_a.png', name: 'Serie A - Italy'),
];

class LiveMatches {
  final String team1;
  final String team2;
  final String logo1;
  final String logo2;
  final String resulte;
  final String time;

  LiveMatches(
      {required this.team1,
      required this.team2,
      required this.logo1,
      required this.logo2,
      required this.resulte,
      required this.time});
}

List<LiveMatches> listOfLivematches = [
  LiveMatches(
      team1: 'Liverpool',
      team2: 'Mancity',
      logo1: 'assets/images/lfc.png',
      logo2: 'assets/images/Manchester_City.png',
      resulte: '2 : 2',
      time: '85'),
  LiveMatches(
      team1: 'Arsenal',
      team2: 'Tottenham',
      logo1: 'assets/images/Arsenal_FC.png',
      logo2: 'assets/images/everton.png',
      resulte: '1 : 0',
      time: '30'),
  LiveMatches(
      team1: 'Chelsea',
      team2: 'Lester',
      logo1: 'assets/images/chealse.png',
      logo2: 'assets/images/lester.png',
      resulte: '2 : 0',
      time: '45'),
  LiveMatches(
      team1: 'Man untd',
      team2: 'Newcastle',
      logo1: 'assets/images/manuntd.png',
      logo2: 'assets/images/newcastle.png',
      resulte: '0 : 2',
      time: '62'),
];

class Matches {
  final String team1;
  final String team2;
  final String logo1;
  final String logo2;
  final String date;
  final String time;

  Matches(
      {required this.team1,
      required this.team2,
      required this.logo1,
      required this.logo2,
      required this.date,
      required this.time});
}

List<Matches> listOfMatches = [
  Matches(
      team1: 'Arsenal',
      team2: 'Tottenham',
      logo1: 'assets/images/Arsenal_FC.png',
      logo2: 'assets/images/everton.png',
      date: '10DEC',
      time: '3:00'),
  Matches(
      team1: 'Chelsea',
      team2: 'Lester',
      logo1: 'assets/images/chealse.png',
      logo2: 'assets/images/lester.png',
      date: '20OCT',
      time: '4:45'),
  Matches(
      team1: 'Man untd',
      team2: 'Newcastle',
      logo1: 'assets/images/manuntd.png',
      logo2: 'assets/images/newcastle.png',
      date: '1DEC',
      time: '6:00'),
  Matches(
      team1: 'Liverpool',
      team2: 'Mancity',
      logo1: 'assets/images/lfc.png',
      logo2: 'assets/images/Manchester_City.png',
      date: '15OCT',
      time: '5:00'),
];
