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
library mimi;

///  The interface represents a change in volume. It is an
/// [AudioNode] audio-processing module that causes a given gain to
/// be applied to the input data before its propagation to the
/// output. A always has exactly one input and one output, both with
/// the same number of channels.
///  The gain is a unitless value, changing with time, that is
/// multiplied to each corresponding sample of all input channels. If
/// modified, the new gain is instantly applied, causing unaesthetic
/// 'clicks' in the resulting audio. To prevent this from happening,
/// never change the value directly but use the exponential
/// interpolation methods on the [AudioParam] interface.
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
///    GainNode
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
///    ["max"]
///
///
///    Channel count
///    [2] (not used in the default count mode)
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///

import '../tau.dart';
import 'webaudio.dart';
import 'audio_node_options.dart';

class GainNode implements AudioNode {
  /*
  /* ctor */ GainNode._(BaseAudioContext context, [GainOptions? options]);

  factory GainNode(BaseAudioContext context, [GainOptions? options]) =>
      GainNode._(context, options);
      */
}

/*
extension PropsGainNode on GainNode {
  AudioParam get gain => js_util.getProperty(this, 'gain');
}
*/
class GainOptions implements AudioNodeOptions {
  /* ctor */ GainOptions._({double? gain});

  factory GainOptions({double? gain}) => GainOptions._(gain: gain ?? 1.0);
}

extension PropsGainOptions on GainOptions {
  double get gain => JsUtil.dGetProperty(this, 'gain');
  set gain(double newValue) {
    JsUtil.setProperty(this, 'gain', newValue);
  }
}
