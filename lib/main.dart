import 'package:flutter/material.dart';
import 'package:impulsuus/Gallery/Gallery.dart';
import 'package:impulsuus/Gallery/GalleryHomePage.dart';

//Point d'entré de l'application
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Impulsuus',
      home: MyHommepage(),
    );
  }
}

class MyHommepage extends StatelessWidget {
  const MyHommepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar de l'application
      appBar: AppBar(
        title: const Text('Impulsuus'),
      ),
      // Menu Déroulant de la Appbar
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Admin',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              accountEmail: Text('admin@admin.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Ffr.freepik.com%2Fphotos-vecteurs-libre%2Favatar&psig=AOvVaw05n_SHjHlunXbapKZsohCu&ust=1668995134577000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNi4t9S8vPsCFQAAAAAdAAAAABAJ'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text('Password'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
            ),
          ],
        ),
      ),
      // Corps de l'application
      body: Container(
        padding: const EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: const [
            // On appele le menu de l'application avec ses différents parametres
            MyMenu(
              title: 'Recherche',
              icons: Icons.person_search,
              warna: Colors.blue,
            ),
            MyMenu(
              title: 'Artiste',
              icons: Icons.perm_identity,
              warna: Colors.blue,
            ),
            MyMenu(
              title: 'Gallery',
              icons: Icons.space_dashboard,
              warna: Colors.blue,
            ),
            MyMenu(
              title: 'Biographie',
              icons: Icons.edit_square,
              warna: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

// Menu de l'application
class MyMenu extends StatelessWidget {
  const MyMenu({required this.title, required this.icons, required this.warna});

  final String title;
  final IconData icons;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GalleryHomePage(),
            ),
          );
        },
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icons,
                size: 80,
                color: warna,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
