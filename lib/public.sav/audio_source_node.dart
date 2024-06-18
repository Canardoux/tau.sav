/*
 * Copyright 2018, 2019, 2020 Dooboolab.
 *
 * This file is part of Flutter-Sound.
 *
 * Flutter-Sound is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License version 3 (LGPL-V3), as published by
 * the Free Software Foundation.
 *
 * Flutter-Sound is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Flutter-Sound.  If not, see <https://www.gnu.org/licenses/>.
 */

/// **THE** Flutter Sound Player
/// {@category Main}
library player;

///  The interface represents an audio source consisting of an HTML5
/// [<audio>] or [<video>] element. It is an [AudioNode] that acts as
/// an audio source.
///  A [MediaElementSourceNode] has no inputs and exactly one output,
/// and is created using the
/// [AudioContext.createMediaElementSource()] method. The amount of
/// channels in the output equals the number of channels of the audio
/// referenced by the [HTMLMediaElement] used in the creation of the
/// node, or is 1 if the [HTMLMediaElement] has no audio.
///
///
///
///    EventTarget
///
///
///
///
///
///    AudioNode
///
///
///
///
///
///    MediaElementAudioSourceNode
///
///
///
///
///
///    Number of inputs
///    [0]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count
///
///     defined by the media in the [HTMLMediaElement]
///     passed to the
///     [AudioContext.createMediaElementSource]
///     method that created it.
///
///
///
///

import 'webaudio.dart';

class MediaElementAudioSourceNode implements AudioNode {
  /* ctor */ MediaElementAudioSourceNode(AudioContext context,
      /*MediaElementAudioSourceOptions*/ MediaElement options);
}

extension PropsMediaElementAudioSourceNode on MediaElementAudioSourceNode {
  /*
  MediaElement get mediaElement =>
      js_util.getProperty(this, 'mediaElement');
      */
}

class MediaElementAudioSourceOptions {
  /* ctor */ MediaElementAudioSourceOptions(
      {required MediaElement mediaElement});
}

extension PropsMediaElementAudioSourceOptions
    on MediaElementAudioSourceOptions {
  /*
  MediaElement get mediaElement =>
      js_util.getProperty(this, 'mediaElement');
  set mediaElement(MediaElement newValue) {
    js_util.setProperty(this, 'mediaElement', newValue);
  }
  */
}
