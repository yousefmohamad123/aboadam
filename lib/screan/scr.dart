import 'package:flutter/material.dart';
import 'package:untitled3/wdgit/wadgt.dart';

import '../proved/Provider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider providerObject = Provider.of<Providerss>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Users",style: TextStyle(fontSize: 35),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: Consumer<Providerss>(
        builder: (context, userProvider, child) {
          final result = userProvider.userData?.result;

          if (result == null) {
            userProvider.fetchUsers();
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                final user = result[index];
                return UserItem(
                  name: user["name"],
                  email: user["email"],
                  image: user["image"],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}