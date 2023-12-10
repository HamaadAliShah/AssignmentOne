import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_and_device_feature/main.dart';
import 'package:localization_and_device_feature/widget/hero_card.dart';

class HeroList extends StatelessWidget {
  final String title;

  const HeroList({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context);
    var items = [
      'en',
      'ar',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          DropdownButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              MyApp.setLocale(context, Locale(newValue!));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(t!.heroCount(6)),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  HeroCard(
                    name: t.hopperName,
                    born: '9 December 1906',
                    bio: t.hopperBio,
                  ),
                  HeroCard(
                    name: t.turingName,
                    born: '23 June 1912',
                    bio: t.turingBio,
                  ),
                  HeroCard(
                    name: t.liskovName,
                    born: '7 November 1939',
                    bio: t.liskovBio,
                  ),
                  HeroCard(
                    name: t.wozniakName,
                    born: '11 August 1950',
                    bio: t.wozniakBio('Apple I', 'Apple II'),
                  ),
                  HeroCard(
                    name: t.bernersLeeName,
                    born: '8 June 1955',
                    bio: t.bernersLeeBio,
                  ),
                  HeroCard(
                    name: t.gatesName,
                    born: '28 October 1955',
                    bio: t.gatesBio('Microsoft Corporation'),
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
