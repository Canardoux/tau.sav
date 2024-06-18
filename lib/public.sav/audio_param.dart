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
library rust_api;

///  The Web Audio API's interface represents an audio-related
/// parameter, usually a parameter of an [AudioNode] (such as
/// [GainNode.gain]).
///  An can be set to a specific value or a change in value, and can
/// be scheduled to happen at a specific time and following a
/// specific pattern.
///  Each has a list of events, initially empty, that define when and
/// how values change. When this list is not empty, changes using the
/// [AudioParam.value] attributes are ignored. This list of events
/// allows us to schedule changes that have to happen at very precise
/// times, using arbitrary timeline-based automation curves. The time
/// used is the one defined in [AudioContext.currentTime].

import '../tau.dart';
import 'webaudio.dart';

class AudioParam {
  /* ctor */ AudioParam();
}

extension PropsAudioParam on AudioParam {
  double get value => JsUtil.dGetProperty(this, 'value');
  set value(double newValue) {
    JsUtil.setProperty(this, 'value', newValue);
  }

  AutomationRate get automationRate =>
      AutomationRate.fromValue(JsUtil.sGetProperty(this, 'automationRate'));
  set automationRate(AutomationRate newValue) {
    JsUtil.setProperty(this, 'automationRate', newValue.value);
  }

  double get defaultValue => JsUtil.dGetProperty(this, 'defaultValue');
  double get minValue => JsUtil.dGetProperty(this, 'minValue');
  double get maxValue => JsUtil.dGetProperty(this,
      'maxValue'); /*
  AudioParam setValueAtTime(double value, double startTime) =>
      js_util.callMethod(this, 'setValueAtTime', [value, startTime]);

  AudioParam linearRampToValueAtTime(double value, double endTime) =>
      js_util.callMethod(this, 'linearRampToValueAtTime', [value, endTime]);

  AudioParam exponentialRampToValueAtTime(double value, double endTime) =>
      js_util
          .callMethod(this, 'exponentialRampToValueAtTime', [value, endTime]);

  AudioParam setTargetAtTime(
          double target, double startTime, double timeConstant) =>
      js_util.callMethod(
          this, 'setTargetAtTime', [target, startTime, timeConstant]);

  AudioParam setValueCurveAtTime(
          Iterable<double> values, double startTime, double duration) =>
      js_util.callMethod(
          this, 'setValueCurveAtTime', [values, startTime, duration]);

  AudioParam cancelScheduledValues(double cancelTime) =>
      js_util.callMethod(this, 'cancelScheduledValues', [cancelTime]);

  AudioParam cancelAndHoldAtTime(double cancelTime) =>
      js_util.callMethod(this, 'cancelAndHoldAtTime', [cancelTime]);
           */
}
