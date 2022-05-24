class Launch {
  final String image;
  final String name;
  final String date;
  final String details;
  final int flightnumber;

  Launch( {required this.image,
      required this.name,
      required this.date,
      required this.details,
      required this.flightnumber});
  

  factory Launch.fromJson(dynamic json) {
    return Launch(

      
      image: json['links']['patch']['small']  ?? json['links']['patch']['large'] ?? "https://icon-library.com/images/null-icon/null-icon-1.jpg" ,
      name: json['name'],
      date: json['date_local'],
      details: json['details'] ?? "No hay información",
      flightnumber: json['flight_number'],

        );

        
  }

  static List<Launch> launchsFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Launch.fromJson(data);
    }).toList();
  }


  
}