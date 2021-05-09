import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/Models/TripModel.dart';


class HomePage extends StatelessWidget {

  final List<TripModel> tripList = [
    TripModel("chittagong", DateTime.now(), DateTime.now(), 5000, "Bus"),
    TripModel("rangpur", DateTime.now(), DateTime.now(), 6000, "Train"),
    TripModel("rangamati", DateTime.now(), DateTime.now(), 4000, "Plane"),
    TripModel("dhaka", DateTime.now(), DateTime.now(), 3000, "Rickshaw"),
    TripModel("st. martin", DateTime.now(), DateTime.now(), 8000, "Ship"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: tripList.length,
        itemBuilder: ((BuildContext context, int index){
          return buildTripCard(context, index);
        }),
      ),
    );
  }

  Widget buildTripCard(BuildContext context, int index){
    final TripModel singleTrip = tripList[index];
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: [
                    Text(
                        singleTrip.title,
                      style: TextStyle(
                        fontSize: 30.0
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 70.0),
                child: Row(
                  children: [
                    Text(
                      "${DateFormat('dd/MM/yyyy').format(singleTrip.startDate)} - ${DateFormat('dd/MM/yyyy').format(singleTrip.endDate)}"
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: [
                    Text(
                      "\$${singleTrip.budget.toStringAsFixed(2)}",
                      style: TextStyle(
                          fontSize: 30.0
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.directions_car
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
