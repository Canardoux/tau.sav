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
import 'package:tau/tau.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

const pcmAsset =
    'assets/samples-f32/sample-f32-48000-32kb_s.pcm'; // The Raw PCM asset to be played

/// This is a very simple example for τ beginners, that show how to playback a file.
/// Its a translation to Dart from [Mozilla example](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Using_Web_Audio_API)
/// This example is really basic.
class AudioAnalyser extends StatefulWidget {
  const AudioAnalyser({super.key});
  @override
  State<AudioAnalyser> createState() => _AudioAnalyser();
}

class _AudioAnalyser extends State<AudioAnalyser> {
   AudioContext? audioCtx;
   AudioDestinationNode? dest;
   GainNode? gainNode;
   PannerNode? panner;
   AudioBufferSourceNode? sourceNode;
   AnalyserNode? analyserNode;
   ScriptProcessorNode? javascriptNode;

  Future<Float32List> getAssetData(String path) async {
    var asset = await rootBundle.load(path);
    return asset.buffer.asFloat32List();
  }

  // Here is the JS code for initializing the graph
  /*
        audioCtx = new AudioContext();
        track = new MediaElementAudioSourceNode(audioCtx, {
          mediaElement: audioElement,
        });

        // Create the node that controls the volume.
        const gainNode = new GainNode(audioCtx);

        const volumeControl = document.querySelector('[data-action="volume"]');
        volumeControl.addEventListener(
          "input",
          () => {
            gainNode.gain.value = volumeControl.value;
          },
          false
        );

        // Create the node that controls the panning
        const panner = new StereoPannerNode(audioCtx, { pan: 0 });

        const pannerControl = document.querySelector('[data-action="panner"]');
        pannerControl.addEventListener(
          "input",
          () => {
            panner.pan.value = pannerControl.value;
          },
          false
        );

        // connect our graph
        track.connect(gainNode).connect(panner).connect(audioCtx.destination);
  */

  // And here is our dart code
  void initPlatformState() async {
  
    if (mounted) {
      setState(() {});
    }
  }

  bool isPlaying = false;
  bool isStarted = false;
  Future<void> finished(Event event) async {
    Tau.tau.logger.d('lolo');
    await sourceNode!.stop();
    await audioCtx!.close();
    isPlaying = false;
    isStarted = false;
    setState(() {});
  }

  // Here is the JS code executed when click on the button
  /*
       // A user interaction happened we can create the audioContext
        const audioContext = new AudioContext();

        // Load the audio the first time through, otherwise play it from the buffer
        msg.textContent = "Loading audio…";

        fetch("viper.mp3")
          .then((response) => response.arrayBuffer())
          .then((downloadedBuffer) =>
            audioContext.decodeAudioData(downloadedBuffer)
          )
          .then((decodedBuffer) => {
            msg.textContent = "Configuring audio stack…";

            // Set up the AudioBufferSourceNode
            const sourceNode = new AudioBufferSourceNode(audioContext, {
              buffer: decodedBuffer,
              loop: true,
            });

            // Set up the audio analyser and the javascript node
            const analyserNode = new AnalyserNode(audioContext);
            const javascriptNode = audioContext.createScriptProcessor(
              1024,
              1,
              1
            );

            // Connect the nodes together
            sourceNode.connect(audioContext.destination);
            sourceNode.connect(analyserNode);
            analyserNode.connect(javascriptNode);
            javascriptNode.connect(audioContext.destination);

            // Play the audio
            msg.textContent = "Audio playing…";
            sourceNode.start(0); // Play the sound now

            // Set up the event handler that is triggered every time enough samples have been collected
            // then trigger the audio analysis and draw the results
            javascriptNode.onaudioprocess = () => {
              // Read the frequency values
              const amplitudeArray = new Uint8Array(
                analyserNode.frequencyBinCount
              );

              // Get the time domain data for this sample
              analyserNode.getByteTimeDomainData(amplitudeArray);

              // Draw the display when the audio is playing
              if (audioContext.state === "running") {
                // Draw the time domain in the canvas
                requestAnimationFrame(() => {
                  // Get the canvas 2d context
                  const canvasContext = canvasElt.getContext("2d");

                  // Clear the canvas
                  canvasContext.clearRect(
                    0,
                    0,
                    canvasElt.width,
                    canvasElt.height
                  );

                  // Draw the amplitude inside the canvas
                  for (let i = 0; i < amplitudeArray.length; i++) {
                    const value = amplitudeArray[i] / 256;
                    const y = canvasElt.height - canvasElt.height * value;
                    canvasContext.fillStyle = "white";
                    canvasContext.fillRect(i, y, 1, 1);
                  }
                });
              }
            };

            // Set up the event handler to stop playing the audio
            stopBtn.addEventListener("click", (e) => {
              e.preventDefault();
              startBtn.disabled = false;
              stopBtn.disabled = true;
              sourceNode.stop(0);
              msg.textContent = "Audio stopped.";
            });
            stopBtn.disabled = false;
          })
          .catch((e) => {
            console.error(`Error: ${e}`);
          });  */
  // And here is our dart code
  Future<void> start() async {

    audioCtx = AudioContext(
      options: const AudioContextOptions(
      latencyHint: AudioContextLatencyCategory.playback(),
      sinkId: '',
      renderSizeHint: AudioContextRenderSizeCategory.default_,
      sampleRate: 48000,
      )
    );

    Tau.tau.logger.d('Une bonne journée');
    Float32List pcmData = await getAssetData(pcmAsset);

    AudioBuffer audioBuffer = await AudioBuffer.from(
        samples: List<Float32List>.filled(2, pcmData), sampleRate: 48000);

    sourceNode = await audioCtx!.createBufferSource();
    sourceNode!.setBuffer(audioBuffer: audioBuffer);
    sourceNode!.setLoop(value: true);
    dest = await audioCtx!.destination();

        // Load the audio the first time through, otherwise play it from the buffer
        //msg.textContent = "Loading audio…";

        //msg.textContent = "Configuring audio stack…";


        // Set up the audio analyser and the javascript node
        analyserNode = await audioCtx!.createAnalyser( );
        javascriptNode = await audioCtx!.createScriptProcessor(
                    bufferSize: 1024,
                    numberOfInputChannels: 1,
                    numberOfOutputChannels: 1
                  );

                  // Connect the nodes together
        await sourceNode!.connect(dest: dest!);
        await sourceNode!.connect(dest: analyserNode!);
        await analyserNode!.connect(dest: javascriptNode!);
        await javascriptNode!.connect(dest: dest!);

                  // Play the audio
                  //msg.textContent = "Audio playing…";
        sourceNode!.start(); // Play the sound now

                  // Set up the event handler that is triggered every time enough samples have been collected
                  // then trigger the audio analysis and draw the results
                  javascriptNode.onaudioprocess = () => {
                    // Read the frequency values
                    const amplitudeArray = new Uint8Array(
                      analyserNode.frequencyBinCount
                    );

                    // Get the time domain data for this sample
                    analyserNode.getByteTimeDomainData(amplitudeArray);

                    // Draw the display when the audio is playing
                    if (audioContext.state === "running") {
                      // Draw the time domain in the canvas
                      requestAnimationFrame(() => {
                        // Get the canvas 2d context
                        const canvasContext = canvasElt.getContext("2d");

                        // Clear the canvas
                        canvasContext.clearRect(
                          0,
                          0,
                          canvasElt.width,
                          canvasElt.height
                        );

                        // Draw the amplitude inside the canvas
                        for (let i = 0; i < amplitudeArray.length; i++) {
                          const value = amplitudeArray[i] / 256;
                          const y = canvasElt.height - canvasElt.height * value;
                          canvasContext.fillStyle = "white";
                          canvasContext.fillRect(i, y, 1, 1);
                        }
                      });
                    }
                  };
          });


  }

  // Good citizens must dispose nodes and Auddio Context
  @override
  void dispose() {
    Tau.tau.logger.d("dispose");
    audioCtx.dispose();
    dest.dispose();
    gainNode.dispose();
    panner.dispose();
    src.dispose();

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
                  handlerName: 'startHandler',
                  callback: (args) async {
                    // print arguments coming from the JavaScript side!
                    Tau.tau.logger.d(args[0]);
                    await start();

                    // return data to the JavaScript side!
                    return {'bar': 'bar_value', 'baz': 'baz_value'};
                  }
              );

              controller.addJavaScriptHandler(
                handlerName: 'stopHandler',
                callback: (args) async {
                  // print arguments coming from the JavaScript side!
                  Tau.tau.logger.d(args[0]);
                  await sourceNode.stop(0);

                  // return data to the JavaScript side!
                  return {'bar': 'bar_value', 'baz': 'baz_value'};
                }
              );

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
    <meta name="viewport" content="width=device-width" />

    <title>Web Audio API examples: audio analyser</title>

    <style>
      #canvas {
        background-color: black;
      }
    </style>
  </head>

  <body>
    <h1>Web Audio API examples: audio analyser</h1>
    <canvas id="canvas" width="512" height="256"></canvas>

    <div id="controls">
      <input type="button" id="start_button" value="Start" />
      &nbsp; &nbsp;
      <input type="button" id="stop_button" value="Stop" disabled />
      <br /><br />
      <output id="msg"></output>
    </div>

    <script>
      // Useful UI elements
      const msg = document.querySelector("output");
      const startBtn = document.querySelector("#start_button");
      const stopBtn = document.querySelector("#stop_button");
      const canvasElt = document.querySelector("#canvas");

      // When the _Start_ button is clicked, set up the audio nodes, play the sound,
      // gather samples for the analysis, update the canvas.
      startBtn.addEventListener("click", (e) => {
        e.preventDefault();
        startBtn.disabled = true;
        window.flutter_inappwebview.callHandler('starthandler', 'la plume de toto');
        stopBtn.addEventListener("click", (e) => {
            startBtn.disabled = false;
            stopBtn.disabled = true;
            window.flutter_inappwebview.callHandler('stopHandler', 'la plume de toto');
            msg.textContent = "Audio stopped.";
        });
        stopBtn.disabled = false;

  
    </script>
   
  </body>
</html>


''';
}
