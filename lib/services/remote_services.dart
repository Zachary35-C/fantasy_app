import 'dart:convert';

import '../models/leagues.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  Future<Leagues> getLeagues() async {
    var client = http.Client();

    var uri = Uri.parse('https://v3.football.api-sports.io/leagues?season=2024');
    var response = await client.get(uri, headers: {'x-rapidapi-host': 'v3.football.api-sports.io', 'x-rapidapi-key': '3b5de1b5e7d625131c3d12dbc764df5f', 'Acccept':'application/json'});
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
         return leaguesFromJson(jsonEncode(json));
    }
    else{
      throw Exception(response.statusCode);
    }
  }
}