import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingActionButtonWidget(),
      bottomNavigationBar: BottomNavBarWidget(),
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          ChatWidget(),
        ],
      ),
    );
  }
}

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Vx.hexToColor("#075E54"),
      child: const Icon(
        Icons.comment,
        color: Vx.white,
      ),
    );
  }
}

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Vx.gray700,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.circle),
          label: "Status",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_3),
          label: "Communities",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.phone),
          label: "Calls",
        ),
      ],
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return [
          ClipOval(
            child: Image.asset(
              "assets/images/image.jpg",
              width: 60,
            ),
          ).pOnly(right: 10),
          [
            [
              "Shivang Srivastava".text.fade.lg.make(),
              "1:32 pm".text.sm.ellipsis.gray500.make(),
            ].hStack(
              alignment: MainAxisAlignment.spaceBetween,
            ),
            "Hello".text.gray500.make(),
          ]
              .vStack(
                crossAlignment: CrossAxisAlignment.start,
              )
              .expand(),
        ].hStack().p16();
      },
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: Vx.hexToColor("#128C7E"),
      title: [
        "WhatsApp".text.ellipsis.white.make(),
        const Spacer(),
        const Icon(
          CupertinoIcons.camera,
          color: Vx.white,
        ).px8(),
        const Icon(
          CupertinoIcons.search,
          color: Vx.white,
        ).px8(),
        const Icon(
          CupertinoIcons.ellipsis_vertical,
          color: Vx.white,
        ).pOnly(left: 8),
      ].hStack(),
    );
  }
}
