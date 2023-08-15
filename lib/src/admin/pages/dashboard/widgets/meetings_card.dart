import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class meetingsCard extends StatelessWidget {
   meetingsCard({
    super.key,
    required this.size,
     required this.description,
     required this.locPlace,
     required this.locOffice,
     required this.timezone,
     required this.time,
     required this.day,
     required this.date,
     required this.month,
     required this.onTap,
     required this.title
  });

  final Size size;
  final String title, month, date, day, time, timezone, description, locOffice, locPlace;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.03),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: size.width * 0.05,
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                height: size.height * 0.005,
                color: eBoardBlue,
                width: size.width * 0.7,
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * 0.2,
                          height: size.height * 0.04,
                          decoration: const BoxDecoration(
                            color: eBoardBlue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0)),
                          ),
                          child: Center(
                              child: Text(
                                month,
                                style: TextStyle(
                                  fontSize: size.width * 0.047,
                                  fontWeight: FontWeight.bold,
                                  color: eBoardWhite,
                                ),
                              )),
                        ),
                        Container(
                          width: size.width * 0.2,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: eBoardBlue,
                                  width: size.width * 0.005),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0))),
                          child: Center(
                            child: Text(
                              date,
                              style: TextStyle(
                                fontSize: size.width * 0.1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          day,
                          style: TextStyle(fontSize: size.width * 0.045),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          time,
                          style: TextStyle(fontSize: size.width * 0.045),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          timezone,
                          style: TextStyle(fontSize: size.width * 0.045),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    height: size.height * 0.17,
                    color: eBoardGrey,
                    width: size.width * 0.01,
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    children: [
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: size.width * 0.042,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_pin),
                          Column(
                            children: [
                              Text(locOffice),
                              const SizedBox(height: 5.0),
                              Text(locPlace)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}