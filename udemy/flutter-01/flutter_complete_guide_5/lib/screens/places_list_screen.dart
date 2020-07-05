import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_5/providers/great_places.dart';
import 'package:flutter_complete_guide_5/screens/add_place_screen.dart';
import 'package:flutter_complete_guide_5/screens/place_detail_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: Provider.of<GreatPlaces>(context, listen: false)
              .fetchAndSetPlaces(),
          builder: (ctx, snapshot) => snapshot.connectionState ==
                  ConnectionState.waiting
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Consumer<GreatPlaces>(
                  child: Center(
                    child: const Text('Got on places yet, start adding some!'),
                  ),
                  builder: (ctx, greatePlaces, ch) =>
                      greatePlaces.items.length <= 0
                          ? ch
                          : ListView.builder(
                              itemCount: greatePlaces.items.length,
                              itemBuilder: (ctx, i) => ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      FileImage(greatePlaces.items[i].image),
                                ),
                                title: Text(greatePlaces.items[i].title),
                                subtitle: Text(
                                    greatePlaces.items[i].location.address),
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    PlaceDetailScreen.routeName,
                                    arguments: greatePlaces.items[i].id,
                                  );
                                },
                              ),
                            ),
                ),
        ),
      ),
    );
  }
}
