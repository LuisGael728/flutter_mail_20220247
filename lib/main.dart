import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Browse'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search in Browse',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Locations',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  LocationListItem(
                    title: 'iCloud Drive',
                    icon: Icons.cloud,
                  ),
                  LocationListItem(
                    title: 'On My iPhone',
                    icon: Icons.phone_iphone,
                  ),
                  LocationListItem(
                    title: 'Drive',
                    icon: Icons.drive_eta,
                  ),
                  LocationListItem(
                    title: 'pCloud',
                    icon: Icons.cloud_circle,
                  ),
                  LocationListItem(
                    title: 'Recently Deleted',
                    icon: Icons.delete,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Favorites',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            FavoriteListItem(
              title: 'Downloads',
              icon: Icons.file_download,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Shared',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Browse',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class LocationListItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const LocationListItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
        onTap: () {
          // Puedes agregar lógica específica para cada elemento de la lista aquí
          print('Tapped on $title');
        },
      ),
    );
  }
}

class FavoriteListItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const FavoriteListItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
        onTap: () {
          // Puedes agregar lógica específica para la lista de favoritos aquí
          print('Tapped on $title');
        },
      ),
    );
  }
}








