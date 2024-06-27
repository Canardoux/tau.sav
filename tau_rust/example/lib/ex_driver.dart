/*
 * Copyright 2024 Canardoux.
 *
 * This file is part of the τ Project.
 *
 * τ (Tau) is free software: you can redistribute it and/or modify
 * it under the terms of the Mozilla Public License version 2 (MPL2.0),
 * as published by the Mozilla organization.
 *
 * τ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * MPL General Public License for more details.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

import 'package:flutter/material.dart';
import 'display_graph.dart';

import 'RustEx/StereoPanner/StereoPanner.dart';
import 'MozillaEx/AudioBasics/AudioBasics.dart';
import 'MozillaEx/AudioAnalyser/AudioAnalyser.dart';

/*
    This APP is just a driver to call the various Tau examples.
    Please refer to the examples/README.md and all the examples located under the examples/lib directory.
*/

///
final List<Example> rustExampleTable = [
  Example(
      title: 'Stereo Panner',
      subTitle: 'Stereo Panner Example',
      flags: 0,
      route: (_) => const StereoPanner(),
      graphImage: 'StereoPanner',
      mod: 'Rust',
      description: '''This is an example from Web Audio Api Rust.
Un superbe example
'''),
];
final List<Example> mozillaExampleTable = [
  Example(
      title: 'Simples',
      subTitle: 'Mozilla Audio-basics Example',
      flags: 0,
      route: (_) => const AudioBasics(),
      mod: 'Mozilla',
      graphImage: 'AudioBasics',
      description: '''This is an example from mozilla.
'''),
  Example(
      title: 'Audio Analyser',
      subTitle: 'Stereo Panner Example',
      flags: 0,
      route: (_) => const AudioAnalyser(),
      graphImage: 'AudioAnalyser',
      mod: 'Mozilla',
      description: '''This is an other example from Mozilla.
'''),
];

///
class Example {
  ///
  final String? title;

  ///
  final String? subTitle;

  ///
  final String? description;

  ///
  final WidgetBuilder? route;

  ///
  final int? flags;

  ///
  final String? graphImage;

  final String? mod;

  ///
  /* ctor */ Example(
      {this.title,
      this.subTitle,
      this.description,
      this.flags,
      this.route,
      this.graphImage,
      this.mod});

  ///
  void go(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute<void>(builder: route!),
      );

  void displayGraph(BuildContext context) => Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => DisplayGraph(
          mod,
          graphImage,
        ),
      ));
}

class ExDriver extends StatefulWidget {
  final String mod;

  const ExDriver({super.key, required this.mod});
  @override
  State<ExDriver> createState() => _ExDriverState();
}

class _ExDriverState extends State<ExDriver> {
  ///
  List<Example> exampleTable = rustExampleTable;

  Example? selectedExample;

  // This widget is the root of your application.
  @override
  void initState() {
    switch (widget.mod) {
      case 'Rust':
        exampleTable = rustExampleTable;
      case 'Mozilla':
        exampleTable = mozillaExampleTable;
    }
    selectedExample = exampleTable[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget cardBuilder(BuildContext context, int index) {
      var isSelected = (exampleTable[index] == selectedExample);
      return GestureDetector(
        onTap: () => setState(() {
          selectedExample = exampleTable[index];
        }),
        child: Card(
          shape: const RoundedRectangleBorder(),
          borderOnForeground: false,
          elevation: 3.0,
          child: Container(
            height: 55,
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: isSelected ? Colors.indigo : const Color(0xFFFAF0E6),
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),

            //color: isSelected ? Colors.indigo : Colors.cyanAccent,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(exampleTable[index].title!,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black)),
              Text(exampleTable[index].subTitle!,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black)),
            ]),
          ),
        ),
      );
    }

    Widget makeBody() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(3),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: const Color(0xFFFAF0E6),
                border: Border.all(
                  color: Colors.indigo,
                  width: 3,
                ),
              ),
              child: ListView.builder(
                  itemCount: exampleTable.length, itemBuilder: cardBuilder),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(3),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: const Color(0xFFFAF0E6),
                border: Border.all(
                  color: Colors.indigo,
                  width: 3,
                ),
              ),
              child: SingleChildScrollView(
                child: Text(selectedExample!.description!),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('${widget.mod} Examples'),
      ),
      body: makeBody(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(3),
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFFAF0E6),
              border: Border.all(
                color: Colors.indigo,
                width: 3,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => selectedExample!.displayGraph(context),
                  //color: Colors.indigo,
                  child: const Text(
                    'Show Graph',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () => selectedExample!.go(context),
                  //color: Colors.indigo,
                  child: const Text(
                    'GO',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
