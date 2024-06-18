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
library roro;

///  The interface of the Web Audio API represents a simple stereo
/// panner node that can be used to pan an audio stream left or
/// right. It is an [AudioNode] audio-processing module that
/// positions an incoming audio stream in a stereo image using a
/// low-cost equal-power panning algorithm.
///  The [pan] property takes a unitless value between [-1] (full
/// left pan) and [1] (full right pan). This interface was introduced
/// as a much simpler way to apply a simple panning effect than
/// having to use a full [PannerNode].
///
///
///
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
///    StereoPannerNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["clamped-max"]
///
///
///    Channel count
///    [2]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///

import '../tau.dart';
import 'webaudio.dart';

class StereoPannerNode implements AudioNode {
  /* ctor */ StereoPannerNode._(BaseAudioContext context,
      /*[StereoPannerOptions? options]*/ {double? pan});

  factory StereoPannerNode(BaseAudioContext context,
          /*[StereoPannerOptions? options]*/ {double? pan}) =>
      StereoPannerNode._(context, /*options ?? undefined*/ pan: pan);
}

/*
extension PropsStereoPannerNode on StereoPannerNode {
  AudioParam get pan => js_util.getProperty(this, 'pan');
}
*/

class StereoPannerOptions implements AudioNodeOptions {
  /* ctor */ StereoPannerOptions._({double? pan});

  factory StereoPannerOptions({double? pan}) =>
      StereoPannerOptions._(pan: pan ?? 0);
}

extension PropsStereoPannerOptions on StereoPannerOptions {
  double get pan => JsUtil.dGetProperty(this, 'pan');
  set pan(double newValue) {
    JsUtil.setProperty(this, 'pan', newValue);
  }
}

enum OverSampleType {
  none('none'),
  value2x('2x'),
  value4x('4x');

  final String value;
  static OverSampleType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<OverSampleType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const OverSampleType(this.value);
}
