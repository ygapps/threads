import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.southernliving.com/thmb/9hHz6zqhHZwL9zEU7UBgeGS04Mw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-181126760-207a24c1a6034af8ac75be0e188eec25.jpg"))),
        ),
      ),
      title: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
        child: const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
            icon: const Icon(CupertinoIcons.pencil),
            color: Colors.blue,
            iconSize: 35,
            onPressed: () => Navigator.pop(context),
          ),
        )
      ],
      bottom: const HomeAppBarBottom(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class HomeAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(tabs: [
      Tab(
        child: Text(
          'Messages',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Tab(
        child: Text(
          'Active',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Tab(
        child: Text(
          'Group',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Tab(
        child: Text(
          'Calls',
          style: TextStyle(color: Colors.blue),
        ),
      )
    ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
