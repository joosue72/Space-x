import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:space_x/Models/Launch.dart';


//Recipe API class to communicate between the web server and our app.


class LaunchApi {
  static Future<List<Launch>> getLaunch() async {
    var uri = Uri.https('api.spacexdata.com', '/v4/launches');


    final response = await http.get(uri);

    List data = jsonDecode(response.body);
  
  
    

    return Launch.launchsFromSnapshot(data);
  }
}