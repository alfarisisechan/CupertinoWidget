import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: TabScaffoldExample(),
    );
  }
}

class TabScaffoldExample extends StatefulWidget {
  const TabScaffoldExample({super.key});

  @override
  State<TabScaffoldExample> createState() => _TabScaffoldExampleState();
  
}

class _TabScaffoldExampleState extends State<TabScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search_circle_fill),
            label: 'Explore',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Login'),
              ),
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                children: <Widget>[
                SizedBox(
                //Use of SizedBox
                height: 20,
              ),
                Padding(padding: EdgeInsets.all(10)),
                CupertinoTextField(
                  placeholder: "Username",
                ),
                SizedBox(
                //Use of SizedBox
                height: 20,
              ),
                CupertinoTextField(
                  placeholder: "Password",
                  obscureText: true,
                  ),
                const SizedBox(height: 20),
                CupertinoButton.filled(
                  onPressed: () {},
                  child: const Text('Login'),
                  minSize: 10,
                ),
                CupertinoButton(
                  child: Text('Belum Punya Akun ? Daftar'),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (BuildContext context) {
                          return CupertinoPageScaffold(
                            navigationBar: CupertinoNavigationBar(
                              middle: Text('Signup'),
                            ),
                            child: Center(
                              child: CupertinoButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
