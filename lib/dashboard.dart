import 'package:assignment/dashboard_controller/dashboard_controller_bloc.dart';
import 'package:assignment/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageBloc = context.read<HomePageBloc>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                backgroundImage: NetworkImage("url"),
              ),
            )
          ],
        ),
        drawer: Drawer(
          width: 300,
          child: Column(
            children: [
              Container(
                  color: const Color.fromRGBO(35, 35, 35, 1),
                  width: 300,
                  height: 93,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hein Htet San",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .appBarTheme
                                      .foregroundColor),
                            ),
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Theme.of(context)
                                        .appBarTheme
                                        .foregroundColor),
                                height: 17,
                                width: 154,
                                child: Text(
                                  "junior developer",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .appBarTheme
                                          .backgroundColor),
                                )),
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                child: ListView(
                  children: [
                    title(label: "Research", icon: Icons.search_outlined),
                    title(label: "Team", icon: Icons.groups_outlined),
                    title(label: "Laboratory", icon: Icons.science_outlined),
                    title(
                      label: "Task",
                      icon: Icons.task,
                    ),
                    title(label: "Data", icon: Icons.data_exploration_outlined),
                    title(label: "Discussion", icon: Icons.chat_outlined),
                    title(label: "Publish", icon: Icons.publish_outlined),
                    title(label: "Expense", icon: Icons.attach_money_outlined),
                    title(label: "Settings", icon: Icons.settings_outlined),
                    title(label: "Ticketing", icon: Icons.airplane_ticket),
                  ],
                ),
              ),
              Container(
                color: const Color.fromRGBO(35, 35, 35, 1),
                height: 54,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 21,
                      color: Color.fromRGBO(180, 180, 180, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign Out",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(180, 180, 180, 1)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: PageView.builder(
          controller: homePageBloc.controller,
          itemBuilder: (_, i) {
            return [
              const HomePage(),
              const HomePage(),
              const HomePage(),
              const HomePage(),
            ][i];
          },
          itemCount: 4,
        ),
        bottomNavigationBar:
            BlocBuilder<HomePageBloc, int>(builder: (_, state) {
          print("this is state $state");
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: (i) {
                homePageBloc.add(homePageBloc.activate(i));
              },
              currentIndex: state,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.rocket_launch_outlined),
                    label: "Quick Action"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.directions_bus_sharp),
                    label: "Recent Discussion"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.help_outline_sharp), label: "Need Help"),
              ]);
        }),
      ),
    );
  }
}

class title extends StatelessWidget {
  String label;
  IconData icon;
  title({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> expanded = ValueNotifier<bool>(false);
    return ExpansionTile(
      onExpansionChanged: (value) {
        expanded.value = value;
      },
      trailing: ValueListenableBuilder(
          valueListenable: expanded,
          builder: (_, v, __) {
            return IconButton(
                onPressed: () {},
                icon: v == true
                    ? Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Theme.of(context).appBarTheme.foregroundColor,
                      )
                    : Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Theme.of(context).appBarTheme.foregroundColor,
                      ));
          }),
      leading: Icon(
        icon,
        size: 22,
        color: Theme.of(context).appBarTheme.foregroundColor,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontSize: 16, color: Theme.of(context).appBarTheme.foregroundColor),
      ),
      children: const [
        subMenu(icon: Icon(Icons.rocket_launch_outlined), label: "New Project"),
        subMenu(icon: Icon(Icons.receipt_long_outlined), label: "My Project")
      ],
    );
  }
}

class subMenu extends StatelessWidget {
  final Icon icon;
  final String label;
  const subMenu({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      color: Theme.of(context).appBarTheme.foregroundColor,
      child: Row(
        children: [
          icon,
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
