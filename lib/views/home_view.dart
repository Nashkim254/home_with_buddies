import 'package:flutter/material.dart';
import 'package:home_with_friends/constants/constants.dart';
import 'appbar_details.dart';
import 'bottom_appbar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150.0,
        title: AppBarDetails(),
        flexibleSpace: Image(
          image: AssetImage('assets/images/bgImage.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 15.0,
            left: 20.0,
            right: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Friends',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Community',
                      style: TextStyle(color: Colors.grey, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Image.asset('assets/images/resting.jpg',
                              fit: BoxFit.fill, height: 100),
                        ),
                        Text('Sharon', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset('assets/images/sundown.jpg',
                                fit: BoxFit.fill, height: 100)),
                        Text('Dave', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Image.asset('assets/images/woman_fist.jpg',
                              fit: BoxFit.fill, height: 100),
                        ),
                        Text('Grace', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Image.asset('assets/images/women.jpg',
                              fit: BoxFit.fill, height: 100),
                        ),
                        Text('Kelvin', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Image.asset('assets/images/fly.jpg',
                                fit: BoxFit.fill, height: 100)),
                        Text('Dalvin', style: kFriendsTextStyle)
                      ],
                    ),
                  ],
                ),
              ),
              Text('Discover',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              Expanded(
                flex: 2,
                child: StaggeredGridView.count(
                  crossAxisCount: 4,
                  staggeredTiles: cardTile,
                  children: imageTile,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Colors.black,
        notchedShape: CircularNotchedRectangle(),
        items: [
          FABBottomAppBarItem(
            iconData: Icons.home_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.folder_open_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.add_circle_outline_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.notifications_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.picture_in_picture_outlined,
            text: '',
          ),
        ],
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final String image;

  BackGroundTile({this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Image.asset(
          'assets/images/$image.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
