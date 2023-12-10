import 'package:cloney/custom_colors.dart';
import 'package:cloney/text_size.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
                            scale: 1.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: TextSizes.large,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Posts',
                            style: TextStyle(fontSize: TextSizes.large),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: TextSizes.large,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Followers',
                            style: TextStyle(fontSize: TextSizes.large),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: TextSizes.large,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Following',
                            style: TextStyle(fontSize: TextSizes.large),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                          fontSize: TextSizes.medium,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Software Engineer',
                      style: TextStyle(fontSize: TextSizes.medium),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              //follow and message button
              Container(
                margin:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: CustomColors.orange,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(
                              fontSize: TextSizes.medium,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Message',
                          style: TextStyle(
                              fontSize: TextSizes.medium,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.1,
              ),
            ],
          ),
        ),
        SliverPersistentHeader(
          delegate: _SliverAppBarDelegate(
            TabBar(
              controller: _tabController,
              indicatorColor: CustomColors.orange,
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_on),
                ),
                Tab(
                  icon: Icon(Icons.person_pin),
                ),
                Tab(
                  icon: Icon(Icons.bookmark_border),
                ),
              ],
            ),
          ),
          pinned: false,
        ),
        SliverFillRemaining(
          child: TabBarView(
            controller: _tabController,
            children: [
              // Your content for Tab 1
              Container(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.1,
                        ),
                      ),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              // Your content for Tab 2
              Center(
                child: Text('Tab 2 Content'),
              ),
              // Your content for Tab 3
              Center(
                child: Text('Tab 3 Content'),
              ),
              // Add more TabBarView children as needed
            ],
          ),
        ),
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
