// Copyright 2019 terrier989@gmail.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
/*
Some source code in this file was adopted from 'dart:html' in Dart SDK. See:
  https://github.com/dart-lang/sdk/tree/master/tools/dom

The source code adopted from 'dart:html' had the following license:

  Copyright 2012, the Dart project authors. All rights reserved.
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of Google Inc. nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import 'dart:async';
import 'webaudio.dart';
//import 'package:web/web.dart';

typedef EventListener = Function(Event event);

class Event {
  /*
  /// This event is being handled by the event target.
  ///
  /// ## Other resources
  ///
  /// * [Target phase](http://www.w3.org/TR/DOM-Level-3-Events/#target-phase)
  ///   from W3C.
  static const int AT_TARGET = 2;

  /// This event is bubbling up through the target's ancestors.
  ///
  /// ## Other resources
  ///
  /// * [Bubble phase](http://www.w3.org/TR/DOM-Level-3-Events/#bubble-phase)
  ///   from W3C.
  static const int BUBBLING_PHASE = 3;

  /// This event is propagating through the target's ancestors, starting from the
  /// document.
  ///
  /// ## Other resources
  ///
  /// * [Bubble phase](http://www.w3.org/TR/DOM-Level-3-Events/#bubble-phase)
  ///   from W3C.
  static const int CAPTURING_PHASE = 1;

  /// This event is propagating through the target's ancestors, starting from the document.
  static const int _INITIAL_PHASE = 0;

  final String type;

  final bool? bubbles;

  final bool? cancelable;

  EventTarget? _currentTarget;

  bool _defaultPrevented = false;

  // ignore: prefer_final_fields
  int _eventPhase = _INITIAL_PHASE;

  final bool _stoppedImmediatePropagation = false;

  bool _stoppedPropagation = false;

  final num? timeStamp;

  // In JS, canBubble and cancelable are technically required parameters to
  // init*Event. In practice, though, if they aren't provided they simply
  // default to false (since that's Boolean(undefined)).
  //
  // Contrary to JS, we default canBubble and cancelable to true, since that's
  // what people want most of the time anyway.
  EventTarget? _target;
  final bool? composed;

  factory Event(String type, {bool canBubble = true, bool cancelable = true}) {
    return Event.eventType(
      'Event',
      type,
      canBubble: canBubble,
      cancelable: cancelable,
    );
  }

  /// Creates a new Event object of the specified type.
  ///
  /// This is analogous to document.createEvent.
  /// Normally events should be created via their constructors, if available.
  ///
  ///     var e = new Event.type('MouseEvent', 'mousedown', true, true);
  ///
  factory Event.eventType(String type, String name,
      {bool canBubble = true, bool cancelable = true}) {
    switch (type) {
      case 'KeyboardEvent':
        return KeyboardEvent(name);
      case 'MessageEvent':
        return MessageEvent(name);
      case 'MouseEvent':
        return MouseEvent(name);
      case 'PopStateEvent':
        return PopStateEvent(name);
      case 'TouchEvent':
        return TouchEvent.constructor(name);
      default:
        return Event.internal(type);
    }
  }

  @visibleForTesting
  Event.internal(
    this.type, {
    EventTarget? target,
    this.composed = false,
    bool canBubble = true,
    this.cancelable = true,
  })  : bubbles = canBubble,
        _target = target,
        timeStamp = DateTime.now().microsecondsSinceEpoch;

  EventTarget? get currentTarget => _currentTarget;

  bool get defaultPrevented => _defaultPrevented;

  int get eventPhase => _eventPhase;

  bool? get isTrusted => true;

  /// A pointer to the element whose CSS selector matched within which an event
  /// was fired. If this Event was not associated with any Event delegation,
  /// accessing this value will throw an [UnsupportedError].
  Element get matchingTarget {
    throw UnsupportedError('No matchingTarget');
  }

  List<EventTarget> get path => const [];

  EventTarget? get target => _target;

  List<EventTarget> composedPath() => const [];

  void internalSetTarget(EventTarget? target) {
    _target = target;
  }

  void preventDefault() {
    if (cancelable ?? true) {
      _defaultPrevented = true;
    }
  }

  void stopImmediatePropagation() {
    if (cancelable ?? true) {
      _stoppedPropagation = true;
    }
  }

  void stopPropagation() {
    if (cancelable ?? true) {
      _stoppedPropagation = true;
    }
  }
  */
}

// =====================================  Event Stream  =======================================

// Copyright 2019 terrier989@gmail.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
/*
Some source code in this file was adopted from 'dart:html' in Dart SDK. See:
  https://github.com/dart-lang/sdk/tree/master/tools/dom

The source code adopted from 'dart:html' had the following license:

  Copyright 2012, the Dart project authors. All rights reserved.
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of Google Inc. nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/// A specialized Stream available to [Element]s to enable event delegation.
abstract class ElementStream<T extends Event> implements Stream<T> {
  /*
  /// Adds a capturing subscription to this stream.
  ///
  /// If the target of the event is a descendant of the element from which this
  /// stream derives then [onData] is called before the event propagates down to
  /// the target. This is the opposite of bubbling behavior, where the event
  /// is first processed for the event target and then bubbles upward.
  ///
  /// ## Other resources
  ///
  /// * [Event Capture](http://www.w3.org/TR/DOM-Level-2-Events/events.html#Events-flow-capture)
  ///   from the W3C DOM Events specification.
  StreamSubscription<T> capture(void Function(T event) onData);

  /// Return a stream that only fires when the particular event fires for
  /// elements matching the specified CSS selector.
  ///
  /// This is the Dart equivalent to jQuery's
  /// [delegate](http://api.jquery.com/delegate/).
  Stream<T> matches(String selector);
  */
}

/// A factory to expose DOM events as Streams.
class EventStreamProvider<T extends Event> {
  /*
  final String _eventType;

  const EventStreamProvider(this._eventType);

  /// Gets an [ElementEventStream] for this event type, on the specified element.
  ///
  /// This will always return a broadcast stream so multiple listeners can be
  /// used simultaneously.
  ///
  /// This may be used to capture DOM events:
  ///
  ///     Element.keyDownEvent.forElement(element, useCapture: true).listen(...);
  ///
  ///     // Alternate method:
  ///     Element.keyDownEvent.forElement(element).capture(...);
  ///
  /// Or for listening to an event which will bubble through the DOM tree:
  ///
  ///     MediaElement.pauseEvent.forElement(document.body).listen(...);
  ///
  /// See also:
  ///
  /// * [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
  ///   from MDN.
  ElementStream<T> forElement(Element e, {bool useCapture = false}) {
    return _ElementEventStreamImpl<T>(e, _eventType, useCapture);
  }

  /// Gets a [Stream] for this event type, on the specified target.
  ///
  /// This will always return a broadcast stream so multiple listeners can be
  /// used simultaneously.
  ///
  /// This may be used to capture DOM events:
  ///
  ///     Element.keyDownEvent.forTarget(element, useCapture: true).listen(...);
  ///
  ///     // Alternate method:
  ///     Element.keyDownEvent.forTarget(element).capture(...);
  ///
  /// Or for listening to an event which will bubble through the DOM tree:
  ///
  ///     MediaElement.pauseEvent.forTarget(document.body).listen(...);
  ///
  /// See also:
  ///
  /// * [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
  ///   from MDN.
  Stream<T> forTarget(EventTarget e, {bool useCapture = false}) =>
      _EventStream<T>(e, _eventType, useCapture);

  /// Gets the type of the event which this would listen for on the specified
  /// event target.
  ///
  /// The target is necessary because some browsers may use different event names
  /// for the same purpose and the target allows differentiating browser support.
  String getEventType(EventTarget target) {
    return _eventType;
  }

  /// Gets an [ElementEventStream] for this event type, on the list of elements.
  ///
  /// This will always return a broadcast stream so multiple listeners can be
  /// used simultaneously.
  ///
  /// This may be used to capture DOM events:
  ///
  ///     Element.keyDownEvent._forElementList(element, useCapture: true).listen(...);
  ///
  /// See also:
  ///
  /// * [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
  ///   from MDN.
  ElementStream<T> _forElementList(ElementList<Element> e) {
    throw UnimplementedError();
  }
  */
}

/// Adapter for exposing DOM Element events as streams, while also allowing
/// event delegation.
class _ElementEventStreamImpl<T extends Event> extends _EventStream<T>
    implements ElementStream<T> {
  _ElementEventStreamImpl(super.target, super.eventType, super.useCapture);

  //@override
  StreamSubscription<T> capture(void Function(T event) onData) =>
      throw UnimplementedError();

  //@override
  Stream<T> matches(String selector) => throw UnimplementedError();
}

class _EventStream<T extends Event> extends Stream<T> {
  final EventTarget target;
  final String type;
  final bool useCapture;

  _EventStream(this.target, this.type, this.useCapture);

  @override
  StreamSubscription<T> listen(
    void Function(T event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    final controller = StreamController<T>();
    /*
    listener(Event event) {
      if (event is T) {
        controller.add(event);
      }
    }
    */

    /*

    target.addEventListener(type, listener, useCapture);
    controller.onCancel = () {
      target.removeEventListener(type, listener, useCapture);
    };
    */
    return controller.stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}

// ===========================  EventTarget  =====================================

// Copyright 2019 terrier989@gmail.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
/*
Some source code in this file was adopted from 'dart:html' in Dart SDK. See:
  https://github.com/dart-lang/sdk/tree/master/tools/dom

The source code adopted from 'dart:html' had the following license:

  Copyright 2012, the Dart project authors. All rights reserved.
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of Google Inc. nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//part of universal_html.internal;

class ElementEvents extends Events {
  static final webkitEvents = {
    'animationend': 'webkitAnimationEnd',
    'animationiteration': 'webkitAnimationIteration',
    'animationstart': 'webkitAnimationStart',
    'fullscreenchange': 'webkitfullscreenchange',
    'fullscreenerror': 'webkitfullscreenerror',
    'keyadded': 'webkitkeyadded',
    'keyerror': 'webkitkeyerror',
    'keymessage': 'webkitkeymessage',
    'needkey': 'webkitneedkey',
    'pointerlockchange': 'webkitpointerlockchange',
    'pointerlockerror': 'webkitpointerlockerror',
    'resourcetimingbufferfull': 'webkitresourcetimingbufferfull',
    'transitionend': 'webkitTransitionEnd',
    'speechchange': 'webkitSpeechChange'
  };

  ElementEvents(super.ptr);

  @override
  Stream<Event> operator [](String type) {
    if (webkitEvents.keys.contains(type.toLowerCase())) {
      /*
      if (_Device.isWebKit) {
        return _ElementEventStreamImpl(
          _ptr,
          webkitEvents[type.toLowerCase()],
          false,
        );
      }
      */
    }
    return _ElementEventStreamImpl(_ptr, type, false);
  }
}

/// Base class that supports listening for and dispatching browser events.
///
/// Normally events are accessed via the Stream getter:
///
///     element.onMouseOver.listen((e) => print('Mouse over!'));
///
/// To access bubbling events which are declared on one element, but may bubble
/// up to another element type (common for MediaElement events):
///
///     MediaElement.pauseEvent.forTarget(document.body).listen(...);
///
/// To useCapture on events:
///
///     Element.keyDownEvent.forTarget(element, useCapture: true).listen(...);
///
/// Custom events can be declared as:
///
///     class DataGenerator {
///       static EventStreamProvider<Event> dataEvent =
///           new EventStreamProvider('data');
///     }
///
/// Then listeners should access the event with:
///
///     DataGenerator.dataEvent.forTarget(element).listen(...);
///
/// Custom events can also be accessed as:
///
///     element.on['some_event'].listen(...);
///
/// This approach is generally discouraged as it loses the event typing and
/// some DOM events may have multiple platform-dependent event names under the
/// covers. By using the standard Stream getters you will get the platform
/// specific event name automatically.
class Events {
  /* Raw event target. */
  final EventTarget _ptr;

  Events(this._ptr);

  Stream<Event> operator [](String type) {
    return _EventStream(_ptr, type, false);
  }
}

abstract class EventTarget {
  /*
  List<_AddedEventListener>? _listeners;

  EventTarget.internal(){Tau.tau.logger.t('ctor: EventTarget'); return EventTarget();}

  Events get on => Events(this);

  EventTarget? get _parentEventTarget => null;
 
  void addEventListener(String type, EventListener listener,
      [bool? useCapture]) {
    final eventListener = _AddedEventListener(
      type,
      listener,
      useCapture ?? false,
    );
    final eventListeners = _listeners ?? (_listeners = []);
    eventListeners.add(eventListener);
  }


  bool dispatchEvent(Event event) {
    if (event._eventPhase != Event._INITIAL_PHASE) {
      throw ArgumentError('Event.eventPhase is not Event._INITIAL_PHASE');
    }
    event._eventPhase = Event.AT_TARGET;
    event.internalSetTarget(this);

    // Capturing phase
    event._eventPhase = Event.CAPTURING_PHASE;
    _invokeCapturingListeners(event);

    // Was the event stopped?
    if (event._stoppedPropagation) {
      return event._defaultPrevented;
    }

    // Bubbling phase
    if (event.bubbles ?? true) {
      event._eventPhase = Event.BUBBLING_PHASE;
      _invokeBubblingListeners(event);
    }

    // Invoke default behavior
    if (!event._defaultPrevented) {
      Window? usedWindow;
      final self = this;
      if (self is Node) {
        usedWindow = self.ownerDocument?.window;
      }
      // TODO: How to determine WindowController when there are many?
      usedWindow ??= window;

      // ignore: invalid_use_of_protected_member
      usedWindow.internalWindowController.windowBehavior.handleEventDefault(
        this as universal_html_in_browser_or_vm.EventTarget,
        event as universal_html_in_browser_or_vm.Event,
      );
    }

    // Return
    return event._defaultPrevented;
  }

  void removeEventListener(String type, EventListener listener,
      [bool? useCapture]) {
    useCapture ??= false;
    _listeners?.removeWhere((e) =>
        e._type == type &&
        e._listener == listener &&
        e._useCapture == useCapture);
  }

  /// Called by [BrowserImplementation].
  void _invokeBubblingListeners(Event event) {
    // Does this target have event listeners?
    final listeners = _listeners;
    if (listeners != null) {
      // Set current target
      event._currentTarget = this;

      // For each matching listener
      final eventType = event.type;
      for (var listener in listeners) {
        // Does the event type match?
        if (listener._type != eventType) {
          continue;
        }

        // Is it a capturing listener?
        if (listener._useCapture) {
          continue;
        }

        // Call listener
        listener._listener(event);

        // Did the listener stop immediate propagation?
        if (event._stoppedImmediatePropagation) {
          break;
        }

        // Did the listener stop propagation?
        if (event._stoppedPropagation) {
          return;
        }
      }
    }

    // Does the target have a parent?
    final parent = _parentEventTarget;
    if (parent != null) {
      parent._invokeBubblingListeners(event);
    }
  }

  /// Called by [BrowserImplementation].
  void _invokeCapturingListeners(Event event) {
    // Call parent target
    final parent = _parentEventTarget;
    if (parent != null) {
      parent._invokeCapturingListeners(event);
      if (event._stoppedPropagation) {
        return;
      }
    }

    // Did a parent target stop propagation?
    if (event._stoppedPropagation) {
      return;
    }

    // Do we have listeners?
    final listeners = _listeners;
    if (listeners == null) {
      return;
    }

    // Set current target
    event._currentTarget = this;

    // For each listener
    final eventType = event.type;
    for (var listener in listeners) {
      // Is it a bubbling listener?
      if (!listener._useCapture) {
        // Yes, skip
        continue;
      }

      // Is the even type the same?
      if (listener._type != eventType) {
        continue;
      }

      // Call it
      listener._listener(event);

      // Did the listener stop propagation?
      if (event._stoppedImmediatePropagation || event._stoppedPropagation) {
        return;
      }
    }
  }
  */
}

/*
class _AddedEventListener {
  final String _type;
  final EventListener _listener;
  final bool _useCapture;

  _AddedEventListener(this._type, this._listener, this._useCapture);
}
*/
