import 'package:flutter/material.dart';
import 'package:threads/components/HomeAppBar.dart';
import 'package:threads/components/SponsoredWidget.dart';
import 'package:threads/components/ConvoWidget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: HomeAppBar(),
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
                        Text(
                          "Sponsored",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 20.0),
                        SponseredWidget(),
                        SizedBox(height: 20.0),
                        Text(
                          "More Conversations",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Column(
                          children: [
                            ConvoWidget(imageURL: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", recipient: "Brendan Aranoff", date: "Fri", lastMessage: "What's the plan?"),
                            ConvoWidget(imageURL: "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", recipient: "Hailey Cook", date: "Mon", lastMessage: "Thank you!")
                          ],
                        )
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

