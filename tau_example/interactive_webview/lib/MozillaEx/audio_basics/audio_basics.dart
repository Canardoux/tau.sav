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
// For call to setLogLevel()
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:interactive_webview/interactive_webview.dart';

const pcmAsset = 'assets/samples-f32/sample-f32-48000-32kb_s.pcm';
const remoteMP3 = 'https://flutter-sound.canardoux.xyz/extract/05.mp3';

/// This is a very simple example for τ beginners, that show how to playback a file.
/// Its a translation to Dart from [Mozilla example](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Using_Web_Audio_API)
/// This example is really basic.
class AudioBasics extends StatefulWidget {
  const AudioBasics({super.key});
  @override
  State<AudioBasics> createState() => _AudioBasics();
}

class _AudioBasics extends State<AudioBasics> {
  late int audioCtx;
  late int dest;
  late int gainNode;
  late int panner;
  late int src;
  late int audioElement;
  late int track;
  bool running = false;

  // load some sound
  //            <audio src="outfoxing.mp3" crossorigin="anonymous"></audio>
  //            const audioElement = document.querySelector("audio");

  Future<Float32List> getAssetData(String path) async {
    var asset = await rootBundle.load(path);
    return asset.buffer.asFloat32List();
  }

  void loadStop(controller, url) async {
final _webView = new InteractiveWebView();

_webView.evalJavascript("new AudioContext();");
    audioCtx = 
        await controller.evaluateJavascript(source: "new AudioContext();");
        
    audioElement = await controller.evaluateJavascript(
        source: "document.querySelector(\"audio\");");

    audioCtx =
        await controller.evaluateJavascript(source: "new AudioContext();");
    track = await controller.evaluateJavascript(
        source: "new MediaElementAudioSourceNode(audioCtx, {"
            " mediaElement: audioElement,"
            "});");

    // Create the node that controls the volume.
    gainNode =
        await controller.evaluateJavascript(source: "new GainNode(audioCtx);");

    //const volumeControl = document.querySelector('[data-action="volume"]');
    //volumeControl.addEventListener(
    //  "input",
    //  () => {
    //    gainNode.gain.value = volumeControl.value;
    //  },
    //  false
    //);

    // Create the node that controls the panning
    panner = await controller.evaluateJavascript(
        source: "new StereoPannerNode(audioCtx, { pan: 0 });");

    // connect our graph
    await controller.evaluateJavascript(
        source:
            "track.connect(gainNode).connect(panner).connect(audioCtx.destination);");
    //await src.setOnEnded(callback: finished);

    if (mounted) {
      setState(() {});
    }
  }

  void initPlatformState() async {
    //Tau.tau.logger.d('Une bonne journée');

    if (mounted) {
      setState(() {});
    }
  }

  //Future<void> finished(Event event) async {
  //Tau.tau.logger.d('lolo');
  //await stop();
  //}

  Future<void> hitPlayButton() async {
    //String s = await greet(
    //  name: "Tom", /* hint: 'la plume' */
    //);
    //Tau.tau.logger.i(s);
    //Tau().setLogLevel(lg.Level.trace);
    if (!running) {
      running = true;
      //await src.start();
      //await src.setOnEnded(callback: finished);
    } else {
      //AudioContextState state = await audioCtx.state();
      //if (state == AudioContextState.suspended) {
      //  await audioCtx.resumeSync();
      //} else if (state == AudioContextState.running) {
      //  await audioCtx.suspend();
      //} else if (state == AudioContextState.closed) {
      //  await src.start();
      //}
    }
    //Tau.tau.logger.d('C\'est parti mon kiki');
  }

  Future<void> stop() async {
    running = false;
    //await audioCtx.close();
  }

  @override
  void dispose() {
    /*
    Tau.tau.logger.d("dispose");
    audioCtx.dispose();
    dest.dispose();
    gainNode.dispose();
    panner.dispose();
    src.dispose();
    */

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    Widget makeBody() {
      return InAppWebView(
        initialData: InAppWebViewInitialData(data: _htmlData),
        onWebViewCreated: (controller) {
          // register a JavaScript handler with name "myHandlerName"
          controller.addJavaScriptHandler(
              handlerName: 'myHandlerName',
              callback: (args) async {
                // print arguments coming from the JavaScript side!
                //Tau.tau.logger.d(args[0]);
                await hitPlayButton();

                // return data to the JavaScript side!
                return {'bar': 'bar_value', 'baz': 'baz_value'};
              });

          controller.addJavaScriptHandler(
              handlerName: 'gainHandler',
              callback: (args) async {
                // print arguments coming from the JavaScript side!
                //Tau.tau.logger.d(args[0]);
                //gainNode.gain.value = double.parse(args[0]);

                // return data to the JavaScript side!
                //return {'bar': 'bar_value', 'baz': 'baz_value'};
              });

          controller.addJavaScriptHandler(
              handlerName: 'pannerHandler',
              callback: (args) async {
                // print arguments coming from the JavaScript side!
                //Tau.tau.logger.d(args);
                //panner.pan.value = args[0];

                // return data to the JavaScript side!
                //return {'bar': 'bar_value', 'baz': 'baz_value'};
              });

          controller.addJavaScriptHandler(
              handlerName: 'finishedHandler',
              callback: (args) async {
                // print arguments coming from the JavaScript side!
                //Tau.tau.logger.d(args[0]);
                await stop();

                // return data to the JavaScript side!
                return {'bar': 'bar_value', 'baz': 'baz_value'};
              });
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Mozilla Audio Basics'),
        actions: const <Widget>[],
      ),
      body: makeBody(),
    );
  }

  final String _htmlData = '''
  <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Web Audio API examples: Basics</title>
    <meta name="description" content="Audio basics demo for Web Audio API" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="stylesheet" type="text/css" href="style.css" />

  <!-- This script adds the flutter initialization JS code -->
  <script src="flutter.js" defer></script>
  <!-- Load flutter_inappwebview web_support js library -->
  <script type="application/javascript" src="/assets/packages/flutter_inappwebview_web/assets/web/web_support.js" defer></script>
</head>


    <style>
    :root {
  --orange: hsla(32, 100%, 50%, 1);
  --yellow: hsla(49, 99%, 50%, 1);
  --lime: hsla(82, 90%, 45%, 1);
  --green: hsla(127, 81%, 41%, 1);
  --red: hsla(342, 93%, 53%, 1);
  --pink: hsla(314, 85%, 45%, 1);
  --blue: hsla(211, 92%, 52%, 1);
  --purple: hsla(283, 92%, 44%, 1);
  --cyan: hsla(195, 98%, 55%, 1);
  --white: hsla(0, 0%, 95%, 1);
  --black: hsla(0, 0%, 10%, 1);

  /* abstract our colours */
  --boxMain: var(--blue);
  --boxSecond: var(--cyan);
  --boxHigh: var(--orange);

  --border: 1vmin solid var(--black);
  --borderRad: 2px;
}
* {
  box-sizing: border-box;
}
body {
  background-color: var(--white);
  padding: 4vmax;
  font-family: system-ui;
  color: var(--black);
}

#boombox {
  width: 82vw;
  max-width: 800px;
  margin: 0px auto;
}
@media screen and (max-width: 570px) {
  #boombox {
    max-width: 600px;
  }
}
.boombox-handle {
  margin: 0px 5vw;
  height: 12vh;
  background: var(--white)
    linear-gradient(
      180deg,
      var(--boxHigh) 4vmin,
      var(--black) 4vmin,
      var(--black) 5vmin,
      var(--white) 5vmin
    )
    no-repeat;
  border: var(--border);
  border-bottom-width: 0px;
  border-radius: var(--borderRad);
}
.boombox-body {
  /*gradient with two circles for speakers*/
  /* 	padding-top: 3vh; */
  background: var(--boxMain) repeat-x bottom left;
  background-image: radial-gradient(
    circle,
    var(--boxMain) 2vmin,
    var(--black) 2vmin,
    var(--black) 3vmin,
    var(--boxSecond) 3vmin,
    var(--boxSecond) 9vmin,
    var(--black) 9vmin,
    var(--black) 9.5vmin,
    var(--boxSecond) 9.5vmin,
    var(--boxSecond) 12vmin,
    var(--black) 12vmin,
    var(--black) 13vmin,
    var(--boxMain) 13vmin
  );
  background-size: 33.3% 70%;
  border: 6px solid var(--black);
  border-radius: var(--borderRad);
}
/*small screen with one circle*/
@media screen and (max-width: 570px) {
  .boombox-body {
    background-repeat: no-repeat;
    background-position: center top;
    background-size: 70% 70%;
    background-image: radial-gradient(
      circle,
      var(--boxMain) 4vmin,
      var(--black) 4vmin,
      var(--black) 5vmin,
      var(--boxSecond) 5vmin,
      var(--boxSecond) 21vmin,
      var(--black) 21vmin,
      var(--black) 21.5vmin,
      var(--boxSecond) 21.5vmin,
      var(--boxSecond) 24vmin,
      var(--black) 24vmin,
      var(--black) 25vmin,
      var(--boxMain) 25vmin
    );
  }
}

.master-controls {
  display: grid;
  grid-template-rows: repeat(2, auto);
  grid-template-columns: repeat(2, 1fr);
  /*name our grid areas so they are more manipulative later*/
  grid-template-areas:
    "volin panin power"
    "vollab panlab power";
  justify-items: center;
  align-items: center;
  padding: 2vmax;
  background-color: var(--boxSecond);
  border-bottom: var(--border);
}
/* change control grid areas for smaller boom box */
@media screen and (max-width: 570px) {
  .master-controls {
    grid-gap: 10px;
    grid-template-columns: 16% 1fr 12%;
    grid-template-areas:
      "vollab volin power"
      "panlab panin power";
  }
}

.master-controls input,
.master-controls label {
  display: block;
}
.master-controls input::before,
.master-controls input::after {
  line-height: 5vh;
  color: var(--black);
}
.master-controls input::before {
  padding-right: 1vw;
}
.master-controls input::after {
  padding-left: 1vw;
}

.control-volume {
  grid-area: volin;
}
.control-volume::before {
  content: "min";
}
.control-volume::after {
  content: "max";
}
label[for="volume"] {
  grid-area: vollab;
  margin-top: 15px;
}
.control-panner {
  grid-area: panin;
}
.control-panner::before {
  content: "left";
}
.control-panner::after {
  content: "right";
}
label[for="panner"] {
  grid-area: panlab;
  margin-top: 15px;
}
@media screen and (max-width: 570px) {
  label[for="volume"],
  label[for="panner"] {
    margin-top: 0px;
  }
  .control-volume {
    margin-bottom: 20px;
  }
}

.control-power {
  grid-area: power;
  align-self: center;
  width: 40px;
  height: 40px;
  border: 3px solid var(--black);
  border-radius: 20px;
  cursor: pointer;
}
.control-power span {
  display: none;
}

/* tape area ~~~~~~~~~~~~~~~~~~~~~~ */
.tape {
  display: grid;
  grid-template-rows: 24vh 6vh;
  grid-template-columns: repeat(5, 1fr);
  grid-template-areas:
    "tape tape tape tape tape"
    "back rewind play ff next";

  width: 26vw;
  margin: 0px auto;
  background: var(--boxMain) no-repeat center center;
  background-image: radial-gradient(
      circle at 30%,
      var(--boxSecond) 2vh,
      var(--black) 2vh,
      var(--black) 2.5vh,
      transparent 2.5vh
    ),
    radial-gradient(
      circle at 70%,
      var(--boxSecond) 2vh,
      var(--black) 2vh,
      var(--black) 2.5vh,
      transparent 2.5vh
    ),
    linear-gradient(
      180deg,
      transparent 9.1vh,
      var(--black) 9.1vh,
      var(--black) 10.1vh,
      var(--boxHigh) 10.1vh,
      var(--boxHigh) 20vh,
      var(--black) 20vh,
      var(--black) 21vh,
      transparent 21vh
    ),
    radial-gradient(
      circle at 30%,
      var(--boxHigh) 5vh,
      var(--black) 5vh,
      var(--black) 6vh,
      transparent 6vh
    ),
    radial-gradient(
      circle at 70%,
      var(--boxHigh) 5vh,
      var(--black) 5vh,
      var(--black) 6vh,
      transparent 6vh
    );
  background-size: 100% 100%, 100% 100%, 40% 100%, 100% 100%, 100% 100%;
  border: var(--border);
  border-bottom-width: 0px;
  border-radius: var(--borderRad);
  max-width: 300px;
}
@media screen and (max-width: 570px) {
  .tape {
    width: 80%;
    margin-top: 30vh;
  }
}
audio {
  grid-area: tape;
}
/*TODO GIVE BUTTONS CLASSES*/
[class^="tape-controls"] {
  border: none;
}
[class^="tape-controls"] span {
  display: none;
}
.tape-controls-play {
  grid-area: play;
}

/* ~~~~~~~~~~~~~~~~ All the crazy range styling */
input[type="range"] {
  -webkit-appearance: none;
  width: 30vw;
  background: transparent;
}
/* set min & max for different screen sizes */
@media screen and (min-width: 1100px) {
  input[type="range"] {
    width: 270px;
  }
}
@media (max-width: 680px) {
  input[type="range"] {
    width: 180px;
  }
}
@media (max-width: 380px) {
  input[type="range"] {
    width: 130px;
  }
}

input[type="range"]::-ms-track {
  width: 100%;
  cursor: pointer;
  background: transparent;
  border-color: transparent;
  color: transparent;
}
input[type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none;
  margin-top: -1vh;
  height: 4vh;
  width: 2vw;
  border: 0.5vmin solid var(--black);
  border-radius: var(--borderRad);
  background-color: var(--boxMain);
  cursor: pointer;
}
input[type="range"]::-moz-range-thumb {
  height: 4vh;
  width: 2vw;
  border: 0.5vmin solid var(--black);
  border-radius: var(--borderRad);
  background-color: var(--boxMain);
  cursor: pointer;
}
input[type="range"]::-ms-thumb {
  height: 4vh;
  width: 2vw;
  border: 0.5vmin solid var(--black);
  border-radius: var(--borderRad);
  background-color: var(--boxMain);
  cursor: pointer;
}

input[type="range"]::-webkit-slider-runnable-track {
  height: 2vh;
  cursor: pointer;
  background-color: var(--black);
  border-radius: var(--borderRad);
}
input[type="range"]::-moz-range-track {
  height: 2vh;
  cursor: pointer;
  background-color: var(--black);
  border-radius: var(--borderRad);
}
input[type="range"]::-ms-track {
  height: 2vh;
  cursor: pointer;
  background-color: var(--black);
  border-radius: var(--borderRad);
}

input[type="range"]:focus {
  outline: none;
}
input[type="range"]:focus::-webkit-slider-runnable-track {
  background: var(--boxMain);
}

/*~~~~~~~~~~~~~~~~ the play pause & power icons*/
[data-playing] {
  background: transparent
    url('data:image/svg+xml;charset=utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M424.4 214.7L72.4 6.6C43.8-10.3 0 6.1 0 47.9V464c0 37.5 40.7 60.1 72.4 41.3l352-208c31.4-18.5 31.5-64.1 0-82.6z" fill="black" /></svg>')
    no-repeat center center;
  background-size: 60% 60%;
  cursor: pointer;
}
[data-playing]:hover {
  background: transparent
    url('data:image/svg+xml;charset=utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M424.4 214.7L72.4 6.6C43.8-10.3 0 6.1 0 47.9V464c0 37.5 40.7 60.1 72.4 41.3l352-208c31.4-18.5 31.5-64.1 0-82.6z" fill="hsla(32, 100%, 50%, 1)" /></svg>')
    no-repeat center center;
  background-size: 60% 60%;
}
[data-playing="true"] {
  background: transparent
    url('data:image/svg+xml;charset=utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M144 479H48c-26.5 0-48-21.5-48-48V79c0-26.5 21.5-48 48-48h96c26.5 0 48 21.5 48 48v352c0 26.5-21.5 48-48 48zm304-48V79c0-26.5-21.5-48-48-48h-96c-26.5 0-48 21.5-48 48v352c0 26.5 21.5 48 48 48h96c26.5 0 48-21.5 48-48z" fill="black" /></svg>')
    no-repeat center center;
  background-size: 60% 60%;
}
[data-playing="true"]:hover {
  background: transparent
    url('data:image/svg+xml;charset=utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M144 479H48c-26.5 0-48-21.5-48-48V79c0-26.5 21.5-48 48-48h96c26.5 0 48 21.5 48 48v352c0 26.5-21.5 48-48 48zm304-48V79c0-26.5-21.5-48-48-48h-96c-26.5 0-48 21.5-48 48v352c0 26.5 21.5 48 48 48h96c26.5 0 48-21.5 48-48z" fill="hsla(32, 100%, 50%, 1)" /></svg>')
    no-repeat center center;
  background-size: 60% 60%;
}
[data-power] {
  background: var(--boxSecond)
    url('data:image/svg+xml; charset=utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M400 54.1c63 45 104 118.6 104 201.9 0 136.8-110.8 247.7-247.5 248C120 504.3 8.2 393 8 256.4 7.9 173.1 48.9 99.3 111.8 54.2c11.7-8.3 28-4.8 35 7.7L162.6 90c5.9 10.5 3.1 23.8-6.6 31-41.5 30.8-68 79.6-68 134.9-.1 92.3 74.5 168.1 168 168.1 91.6 0 168.6-74.2 168-169.1-.3-51.8-24.7-101.8-68.1-134-9.7-7.2-12.4-20.5-6.5-30.9l15.8-28.1c7-12.4 23.2-16.1 34.8-7.8zM296 264V24c0-13.3-10.7-24-24-24h-32c-13.3 0-24 10.7-24 24v240c0 13.3 10.7 24 24 24h32c13.3 0 24-10.7 24-24z" fill="black" /></svg>')
    no-repeat center center;
  background-size: 60% 60%;
}
[data-power]:hover,
[data-power="on"] {
  background: var(--boxHigh)
    url('data:image/svg+xml; charset=utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M400 54.1c63 45 104 118.6 104 201.9 0 136.8-110.8 247.7-247.5 248C120 504.3 8.2 393 8 256.4 7.9 173.1 48.9 99.3 111.8 54.2c11.7-8.3 28-4.8 35 7.7L162.6 90c5.9 10.5 3.1 23.8-6.6 31-41.5 30.8-68 79.6-68 134.9-.1 92.3 74.5 168.1 168 168.1 91.6 0 168.6-74.2 168-169.1-.3-51.8-24.7-101.8-68.1-134-9.7-7.2-12.4-20.5-6.5-30.9l15.8-28.1c7-12.4 23.2-16.1 34.8-7.8zM296 264V24c0-13.3-10.7-24-24-24h-32c-13.3 0-24 10.7-24 24v240c0 13.3 10.7 24 24 24h32c13.3 0 24-10.7 24-24z" fill="black" /></svg>')
    no-repeat center center;
  background-size: 60% 60%;
}

</style>
</head>
<body>

      <div id="boombox">
      <div class="boombox-handle"></div>

      <div class="boombox-body">
        <section class="master-controls">
          <input
            type="range"
            id="volume"
            class="control-volume"
            min="0"
            max="2"
            value="1"
            list="gain-vals"
            step="0.01"
            data-action="volume"
          />
          <datalist id="gain-vals">
            <option value="0" label="min"></option>
            <option value="2" label="max"></option>
          </datalist>

          <label for="volume">VOL</label>

          <input
            type="range"
            id="panner"
            class="control-panner"
            list="pan-vals"
            min="-1"
            max="1"
            value="0"
            step="0.01"
            data-action="panner"
          />
          <datalist id="pan-vals">
            <option value="-1" label="left"></option>
            <option value="1" label="right"></option>
          </datalist>

          <label for="panner">PAN</label>

        </section>

        <section class="tape">
          <audio src="https://flutter-sound.canardoux.xyz/extract/05.mp3" crossorigin="anonymous"></audio>

          <!-- 			type="audio/mpeg" -->

          <button
            data-playing="false"
            class="tape-controls-play"
            role="switch"
            aria-checked="false"
          >
            <span>Play/Pause</span>
          </button>
        </section>
      </div>
      <!-- boombox-body -->
    </div>

   <script type="text/javascript">
      console.clear();
      const audioElement = document.querySelector("audio");
 
      const playButton = document.querySelector(".tape-controls-play");
            // play pause audio
      playButton.addEventListener(
        "click",
        () => {
        window.flutter_inappwebview.callHandler('myHandlerName', 'la plume de toto');
        },
        false
      );
      
        const volumeControl = document.querySelector('[data-action="volume"]');
        volumeControl.addEventListener(
          "input",
          () => {
            window.flutter_inappwebview.callHandler('gainHandler',  volumeControl.value);
          },
        false
        );

        const pannerControl = document.querySelector('[data-action="panner"]');
        pannerControl.addEventListener(
          "input",
          () => {
            window.flutter_inappwebview.callHandler('pannerHandler',  pannerControl.value);
          },
        false
        );


      // If track ends
      audioElement.addEventListener(
        "ended",
        () => {
          playButton.dataset.playing = "false";
          playButton.setAttribute("aria-checked", "false");
          window.flutter_inappwebview.callHandler('finishedHandler',  'My Taylor is rich');
        },
        false
      );

  </script>
  </body>
</html>


''';
}
