import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String details;
  final int flightnumber;
  CardInfo(
      {required this.image,
      required this.name,
      required this.date,
      required this.details,
      required this.flightnumber});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: const Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.all( 16),
                
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Image.network(
                      image,
                    ))),
            Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .5,
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      overflow:  TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      date,
                      maxLines: 1,
                      overflow:  TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      details,
                      maxLines: 1,
                      overflow:  TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      flightnumber.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ))
          ],
        ));
  }
}
