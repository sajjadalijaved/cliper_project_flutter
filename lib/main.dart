import 'package:cliper_project/cliper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            iconTheme:
                const IconThemeData(color: Colors.black, opacity: 5, size: 40),
            elevation: 10,
            shadowColor: Colors.amber,
            backgroundColor: Colors.grey,
            expandedHeight: 300,
            leading: const Icon(Icons.home, color: Colors.black),
            title: const Text(
              'Clipper',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
            flexibleSpace: ClipPath(
              clipper: MyCustom(),
              child: Container(
                color: Colors.amber,
                width: 450,
                height: 350,
                child: Image.network(
                  'https://images.unsplash.com/photo-1602374057897-44b0bba8c93b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ClipPath(
                  clipper: MYsliver(),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        const TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          contentPadding: EdgeInsets.all(5),
                          labelText: 'User Name',
                          hintText: 'Please Enter Name Here',
                          prefixIcon: Icon(Icons.account_circle),
                        )),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                contentPadding: EdgeInsets.all(5),
                                labelText: 'User Password',
                                hintText: 'Please Enter Password Here',
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: Icon(Icons.visibility_off_sharp))),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.network(
                          'https://images.unsplash.com/photo-1647601814280-918f9f61aa99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                          fit: BoxFit.cover,
                          height: 245,
                          width: double.infinity,
                        )
                      ],
                    ),
                    color: Colors.purple,
                    width: 400,
                    height: 400,
                  ));
            }, childCount: 1),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ClipPath(
                  clipper: Mylist(),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    color: Colors.amber,
                    width: 400,
                    height: 400,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1647601814280-918f9f61aa99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                      fit: BoxFit.cover,
                    ),
                  ));
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
