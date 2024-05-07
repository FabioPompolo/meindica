import 'package:flutter/material.dart';
import 'package:meindica/chat.dart';

class NearbyWorkerListItem {
  final String name;
  final String avatarUrl;
  final double distance;
  final int rating;
  final String category;

  NearbyWorkerListItem(
      {required this.name,
      required this.avatarUrl,
      required this.distance,
      required this.rating,
      required this.category});

  static where(bool Function(dynamic mockedList) param0) {}
}

final List<NearbyWorkerListItem> mockedList = [
  NearbyWorkerListItem(
    name: 'Arvin Dragen',
    avatarUrl:
        'https://i.pinimg.com/originals/ec/49/fa/ec49fa73a1c51e53c3eb437b96165a52.jpg',
    distance: 1.0,
    rating: 5,
    category: 'pintor',
  ),
  NearbyWorkerListItem(
    name: 'Warrek Archyr',
    avatarUrl:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ22ZtrTy3CurIt0XDGGcnjgiP3Pi_O_5na9ChgbsfA5iGSRpwv',
    distance: 1.0,
    rating: 5,
    category: 'eletricista',
  ),
  NearbyWorkerListItem(
      name: 'Barrian Staedmon',
      avatarUrl:
          'https://pics.craiyon.com/2023-09-11/94f949721ac34f5394a8d1be63247fdc.webp',
      distance: 2.0,
      rating: 4,
      category: 'mecânico')
];

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: const Text('Profissionais perto de você'),
      ),
      backgroundColor: Colors.grey.shade50,
      body: ListView.builder(
          itemBuilder: (context, index) {
            final worker = mockedList[index];
            return ListTile(
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              leading:
                  CircleAvatar(foregroundImage: NetworkImage(worker.avatarUrl)),
              title: Text(worker.name),
              subtitle: Text("${worker.distance}km"),
              trailing: Text("${worker.category} "),
            );
          },
          itemCount: mockedList.length),
    );
  }
}
