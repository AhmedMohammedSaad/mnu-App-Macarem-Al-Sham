import 'package:flutter/material.dart';
import 'package:makarem_alsham/model/modle.dart';

import 'package:url_launcher/url_launcher.dart';

import 'categoryItemsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 200, 0),
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.07,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Makarim AL-Sham',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: screenSize.width * 0.08,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(width: screenSize.width * 0.05),
                IconButton(
                  icon: Icon(Icons.phone, color: Colors.white),
                  onPressed: () {
                    _makePhoneCall('+201205184444');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.facebook, color: Colors.white),
                  onPressed: () {
                    _launchURL(
                        'https://www.facebook.com/Re8efShawerma?mibextid=ZbWKwL');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  margin: EdgeInsets.all(screenSize.width * 0.04),
                  child: ListView.builder(
                    itemCount: menuCategories.length +
                        1, // نضيف 1 لعناصر القائمة للأزرار
                    itemBuilder: (context, index) {
                      if (index == menuCategories.length) {
                        // عند الوصول إلى نهاية القائمة، نضيف الأزرار
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenSize.height * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  _launchURL(
                                      'https://www.facebook.com/Re8efShawerma?mibextid=ZbWKwL');
                                },
                                child: Text('Facebook'),
                              ),
                              SizedBox(width: screenSize.width * 0.05),
                              ElevatedButton(
                                onPressed: () {
                                  _makePhoneCall('+201205184444');
                                },
                                child: Text('Call'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryItemsScreen(
                                  category: menuCategories[index],
                                ),
                              ),
                            );
                          },
                          child: CategoreMenu(
                            menuCategories[index],
                            index,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoreMenu extends StatelessWidget {
  const CategoreMenu(this.menuCategory, this.itemIndex, {super.key});
  final int itemIndex;
  final MenuCategory menuCategory;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      child: Stack(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.02),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(menuCategory.imageUrl),
              ),
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 150, 147, 137),
            ),
            width: double.infinity,
          ),
          Center(
            child: Positioned(
              top: 0.0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Text(
                  menuCategory.category,
                  style: TextStyle(
                    color: Color.fromARGB(255, 234, 162, 8),
                    fontSize: screenSize.width * 0.08,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
