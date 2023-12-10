import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeroCard extends StatelessWidget {
  final String name;
  final String born;
  final String bio;

  final DateTime bornDateTime;

  HeroCard({
    Key? key,
    this.name = '',
    this.born = '',
    this.bio = '',
  })  : bornDateTime = DateFormat('d MMMM yyyy').parse(born),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      name,
                      style: theme.textTheme.headline6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 4),
                    child: Text(
                      born.isEmpty ? '' : 'Born $born',
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Text(
                    bio,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
