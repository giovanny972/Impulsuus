import 'package:flutter/material.dart';
import 'package:impulsuus/Details/details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imagePath: 'images/1.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/2.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/3.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/4.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/5.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/6.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/7.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/8.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/9.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
  ImageDetails(
      imagePath: 'images/10.jpg',
      photographer: 'Peggy Adelaide',
      title: 'Mme XXX',
      details: 'ce-ci est un portrait'),
];

class GalleryHomePage extends StatelessWidget {
  const GalleryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Impulsuus'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Gallery',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              photographer: _images[index].photographer,
                              title: _images[index].title,
                              details: _images[index].details,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            )),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String photographer;
  final String title;
  final String details;
  ImageDetails(
      {required this.imagePath,
      required this.photographer,
      required this.title,
      required this.details});
}
