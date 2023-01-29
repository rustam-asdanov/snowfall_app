import 'package:flutter/material.dart';
import 'package:snowfall_app/routes/bluetooth_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snowfall Home"),
      ),
      // there we have column with Title and also 4 button
      // for choosing which route use want to open
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text("Snowfall"),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Sign In (in progress...)")),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Sign Up (in progress...)")),
            // if (BluetoothDataState.isConnected)
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/messages");
                },
                child: Text("Messages")),
            ElevatedButton(
                onPressed: () => {Navigator.pushNamed(context, "/blue_data")},
                child: const Text("Bluetooth Device")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/about");
                },
                child: const Text("About")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/exit");
                },
                child: const Text("Exit")),
          ]),
    );
  }
}
