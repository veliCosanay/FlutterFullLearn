import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late List<CollectionItem> _item;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _item = [
      CollectionItem(
        imageUrl: 'https://picsum.photos/200',
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionItem(
        imageUrl: 'https://picsum.photos/200',
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionItem(
        imageUrl: 'https://picsum.photos/200',
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionItem(
        imageUrl: 'https://picsum.photos/200',
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionItem(
        imageUrl: 'https://picsum.photos/200',
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionItem(
        imageUrl: 'https://picsum.photos/200',
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionItem(
        imageUrl: 'https://picsum.photos/200',
        title: 'Abstract Art',
        price: 3.4,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Collections Demo')),
      body: ListView.builder(
        itemCount: _item.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: ProjectPaddingUtility().horizontalPadding,
            child: _CollectionCard(item: _item[index]),
          );
        },
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  const _CollectionCard({required CollectionItem item}) : _item = item;

  final CollectionItem _item;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectPaddingUtility().bottomPadding,
      child: SizedBox(
        height: ProjectItemSizes().sizedBoxHeight200,
        child: Column(
          children: [
            Padding(
              padding: ProjectPaddingUtility().normalPadding,
              child: SizedBox(
                width: ProjectItemSizes().sizedBoxWidth350,
                height: ProjectItemSizes().sizedBoxHeight150,
                child: Padding(
                  padding: ProjectPaddingUtility().normalPadding,
                  child: Image.network(_item.imageUrl, fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: ProjectPaddingUtility().horizontalPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_item.title),
                  Text('${_item.price.toString()} eth'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectItemSizes {
  final double sizedBoxHeight150 = 150;
  final double sizedBoxHeight200 = 200;
  final double sizedBoxWidth350 = 350;
}

class ProjectPaddingUtility {
  final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets bottomPadding = EdgeInsets.only(bottom: 10);
  final EdgeInsets normalPadding = EdgeInsets.all(8.0);
}

class CollectionItem {
  final String imageUrl;
  final String title;
  final double price;

  CollectionItem({
    required this.imageUrl,
    required this.title,
    required this.price,
  });
}
