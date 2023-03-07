import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '+movi2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Placeholder(),
    pasos(),
    ejercicios(),
    ajustes(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Casa',
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Información',
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics_rounded),
            label: 'Ejercicios',
            backgroundColor: Theme.of(context).colorScheme.tertiary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Ajustes',
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.onSecondary,
        onTap: _onItemTapped,
      ),
    );
  }
}

class pasos extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Historial Atlético",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary)),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Ejercicios",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    AspectRatio(
                      aspectRatio: 2,
                      child: LineChart(
                        LineChartData(
                          lineBarsData: [
                            LineChartBarData(
                              show: true,
                              isCurved: true,
                              spots: const [
                                FlSpot(1, 57),
                                FlSpot(2, 100),
                                FlSpot(3, 130),
                                FlSpot(4, 231),
                                FlSpot(5, 200),
                                FlSpot(6, 100),
                              ], // dotData: FlDotData(
                              //   show: false,
                              // ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Pasos",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    AspectRatio(
                      aspectRatio: 2,
                      child: LineChart(
                        LineChartData(
                          lineBarsData: [
                            LineChartBarData(
                              show: true,
                              isCurved: true,
                              spots: const [
                                FlSpot(1, 57),
                                FlSpot(2, 100),
                                FlSpot(3, 13),
                                FlSpot(4, 231),
                                FlSpot(5, 22),
                                FlSpot(6, 100),
                              ], // dotData: FlDotData(
                              //   show: false,
                              // ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// example of bar chart due to time concern

class ejercicios extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicios Extra",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary)),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Card(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Entry A',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ajustes extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajustes",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
