import 'package:coffee_app/provider/favourites_provider.dart';
import 'package:coffee_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/favourite_card.dart';

class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Text(
            "Favourites",
            style: TextStyle(
              color: kPrimary,
              fontSize: 24,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: context.read<FavouritesProvider>().favourites.map((item) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: favouriteCard(
                    screenWidth: MediaQuery.of(context).size.width,
                    imageUrl: item.imgUrl,
                    name: item.name,
                    shortDescription: item.addition,
                    price: item.price,
                    favouriteButtonPressed: () {
                      setState(() {
                        context
                            .read<FavouritesProvider>()
                            .removeItem(item: item, context: context);
                      });
                    }),
              );
            }).toList(),
          ),
        ));
  }
}
