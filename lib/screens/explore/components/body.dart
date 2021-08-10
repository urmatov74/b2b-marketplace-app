import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          child: InkWell(
            onTap: () {},
            child: EntryItem(
              data[index],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}

class Entry {
  final String title;
  final List<Entry> children;
  Entry(this.title, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry(
    'Женщинам',
    <Entry>[
      Entry('Made in KG'),
      Entry('Made in Turkey'),
      Entry('Made in China'),
    ],
  ),
  Entry(
    'Мужчинам',
    <Entry>[
      Entry('Made in KG'),
      Entry('Made in Turkey'),
      Entry('Made in China'),
    ],
  ),
  Entry(
    'Детям',
    <Entry>[
      Entry('Made in KG'),
      Entry('Made in Turkey'),
      Entry('Made in China'),
    ],
  ),
  Entry('Обувь'),
  Entry('Аксессуары'),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }

    return ExpansionTile(
      title: Text(root.title),
      key: PageStorageKey<Entry>(root),
      children: root.children.map<Widget>(buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildTiles(entry);
  }
}
