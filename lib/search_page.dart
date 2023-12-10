import 'package:cloney/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  String _searchText = "";
  List searchResult = [];
  List _recentSearch = [];

  @override
  void initState() {
    super.initState();
    _recentSearch = [
      "Flutter",
      "React",
      "React Native",
      "Ionic",
      "Xamarin",
      "PhoneGap",
      "Cordova",
      "Ionic 2",
      "Ionic 3",
      "Ionic 4",
      "Ionic 5"
    ];
  }

  _SearchPageState() {
    _searchController.addListener(() {
      if (_searchController.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _searchController.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MySearchBar(
            (value) {},
          ),
          Expanded(child: ExploreView(),
          ),
        ],
      )),
    );
  }
}



class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      shrinkWrap: true,
      primary: false,
      physics: AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 20,
      padding: const EdgeInsets.all(0),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            children: [
              Image.network(
                "https://picsum.photos/250?image=9",
              ),
            ],
          ),
        );
      },
    );
  }
}
