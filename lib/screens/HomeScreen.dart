import 'package:flutter/material.dart';
import 'package:threads/components/HomeAppBar.dart';
import 'package:threads/components/SponsoredWidget.dart';
import 'package:threads/components/ConvoWidget.dart';
import 'package:threads/services/home_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenViewModel viewModel = const HomeScreenViewModel();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sponsored",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 20.0),
                        const SponseredWidget(),
                        const SizedBox(height: 20.0),
                        const Text(
                          "More Conversations",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        FutureBuilder(
                            future: viewModel.fetchFriends(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Column(
                                    children: snapshot.data!
                                        .map((friend) =>
                                            ConvoWidget.fromFriend(friend))
                                        .toList());
                              } else {
                                return const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                        child: CircularProgressIndicator()));
                              }
                            }),
                      ],
                    )
                  ],
                ),
              ),
              Text("Active Screen"),
              Text("Group Screen"),
              Text("Calls Screen")
            ],
          ),
        ),
      ),
    );
  }
}
