



            @sealed class AnalyserNodeImpl extends RustOpaque implements AnalyserNode {
                // Not to be used by end users
                AnalyserNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AnalyserNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AnalyserNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AnalyserNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AnalyserNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeDisconnectOutput(that: this, output: output);


/// The size of the FFT used for frequency-domain analysis (in sample-frames)
///
/// # Panics
///
/// This method may panic if the lock to the inner analyser is poisoned
 Future<int>  fftSize()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeFftSize(that: this, );


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeFrbOverrideConnect(that: this, dest: dest);


/// Number of bins in the FFT results, is half the FFT size
///
/// # Panics
///
/// This method may panic if the lock to the inner analyser is poisoned
 Future<int>  frequencyBinCount()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeFrequencyBinCount(that: this, );


/// Maximum power value in the scaling range for the FFT analysis data for
/// conversion to unsigned byte values. The default value is -30.
///
/// # Panics
///
/// This method may panic if the lock to the inner analyser is poisoned
 Future<double>  maxDecibels()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeMaxDecibels(that: this, );


/// Minimum power value in the scaling range for the FFT analysis data for
/// conversion to unsigned byte values. The default value is -100.
///
/// # Panics
///
/// This method may panic if the lock to the inner analyser is poisoned
 Future<double>  minDecibels()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeMinDecibels(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetChannelInterpretation(that: this, v: v);


/// Set FFT size
///
/// # Panics
///
/// This function panics if fft_size is not a power of two or not in the range [32, 32768]
 Future<void>  setFftSize({required int fftSize })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetFftSize(that: this, fftSize: fftSize);


/// Set max decibels
///
/// # Panics
///
/// This function panics if the value is set to a value less than or equal
/// to min decibels.
 Future<void>  setMaxDecibels({required double value })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetMaxDecibels(that: this, value: value);


/// Set min decibels
///
/// # Panics
///
/// This function panics if the value is set to a value more than or equal
/// to max decibels.
 Future<void>  setMinDecibels({required double value })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetMinDecibels(that: this, value: value);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetOnProcessorError(that: this, callback: callback);


/// Set smoothing time constant
///
/// # Panics
///
/// This function panics if the value is set to a value less than 0 or more than 1.
 Future<void>  setSmoothingTimeConstant({required double value })=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSetSmoothingTimeConstant(that: this, value: value);


/// Time averaging parameter with the last analysis frame.
/// A value from 0 -> 1 where 0 represents no time averaging with the last
/// analysis frame. The default value is 0.8.
///
/// # Panics
///
/// This method may panic if the lock to the inner analyser is poisoned
 Future<double>  smoothingTimeConstant()=>RustLib.instance.api.webAudioApiNodeAnalyserNodeSmoothingTimeConstant(that: this, );


            }
            @sealed class AudioBufferImpl extends RustOpaque implements AudioBuffer {
                // Not to be used by end users
                AudioBufferImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioBufferImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioBuffer,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioBuffer,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioBufferPtr,
                );

                /// Duration in seconds of the `AudioBuffer`
 Future<double>  duration()=>RustLib.instance.api.webAudioApiAudioBufferDuration(that: this, );


/// Return a read-only copy of the underlying data of the channel
///
/// # Panics
///
/// This function will panic if:
/// - the given channel number is greater than or equal to the given number of channels.
 Future<void>  getChannelData({required int channelNumber })=>RustLib.instance.api.webAudioApiAudioBufferGetChannelData(that: this, channelNumber: channelNumber);


/// Return a mutable slice of the underlying data of the channel
///
/// # Panics
///
/// This function will panic if:
/// - the given channel number is greater than or equal to the given number of channels.
 Future<void>  getChannelDataMut({required int channelNumber })=>RustLib.instance.api.webAudioApiAudioBufferGetChannelDataMut(that: this, channelNumber: channelNumber);


/// Number of samples per channel in this `AudioBuffer`
 Future<int>  length()=>RustLib.instance.api.webAudioApiAudioBufferLength(that: this, );


/// Number of channels in this `AudioBuffer`
 Future<int>  numberOfChannels()=>RustLib.instance.api.webAudioApiAudioBufferNumberOfChannels(that: this, );


/// Sample rate of this `AudioBuffer` in Hertz
 Future<double>  sampleRate()=>RustLib.instance.api.webAudioApiAudioBufferSampleRate(that: this, );


            }
            @sealed class AudioBufferSourceNodeImpl extends RustOpaque implements AudioBufferSourceNode {
                // Not to be used by end users
                AudioBufferSourceNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioBufferSourceNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioBufferSourceNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioBufferSourceNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioBufferSourceNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeChannelInterpretation(that: this, );


/// Unset the callback to run when the source node has stopped playing
 Future<void>  clearOnended()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeClearOnended(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeClearOnprocessorerror(that: this, );


/// K-rate [`AudioParam`] that defines a pitch transposition of the file,
/// expressed in cents
///
/// see <https://en.wikipedia.org/wiki/Cent_(music)>
 AudioParam get detune=>AudioParamProxyVariantAudioBufferSourceNodeDetune(this);


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeFrbOverrideConnect(that: this, dest: dest);


/// Defines if the playback the [`AudioBuffer`] should be looped
 Future<bool>  loop()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeLoop(that: this, );


/// Defines the loop end point, in the time reference of the [`AudioBuffer`]
 Future<double>  loopEnd()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeLoopEnd(that: this, );


/// Defines the loop start point, in the time reference of the [`AudioBuffer`]
 Future<double>  loopStart()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeLoopStart(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeNumberOfOutputs(that: this, );


/// K-rate [`AudioParam`] that defines the speed at which the [`AudioBuffer`]
/// will be played, e.g.:
/// - `0.5` will play the file at half speed
/// - `-1` will play the file in reverse
///
/// Note that playback rate will also alter the pitch of the [`AudioBuffer`]
 AudioParam get playbackRate=>AudioParamProxyVariantAudioBufferSourceNodePlaybackRate(this);


/// Current playhead position in seconds within the [`AudioBuffer`].
///
/// This value is updated at the end of each render quantum.
///
/// Unofficial v2 API extension, not part of the spec yet.
/// See also: <https://github.com/WebAudio/web-audio-api/issues/2397#issuecomment-709478405>
 Future<double>  position()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodePosition(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeRegistration(that: this, );


/// Provide an [`AudioBuffer`] as the source of data to be played bask
///
/// # Panics
///
/// Panics if a buffer has already been given to the source (though `new` or through
/// `set_buffer`)
 Future<void>  setBuffer({required AudioBuffer audioBuffer })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetBuffer(that: this, audioBuffer: audioBuffer);


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setLoop({required bool value })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetLoop(that: this, value: value);


 Future<void>  setLoopEnd({required double value })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetLoopEnd(that: this, value: value);


 Future<void>  setLoopStart({required double value })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetLoopStart(that: this, value: value);


 Future<void>  setOnEnded({required FutureOr<void> Function(Event) callback })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetOnEnded(that: this, callback: callback);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeSetOnProcessorError(that: this, callback: callback);


 Future<void>  start()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeStart(that: this, );


 Future<void>  startAt({required double when })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeStartAt(that: this, when: when);


/// Start the playback at the given time and with a given offset
///
/// # Panics
///
/// Panics if the source was already started
 Future<void>  startAtWithOffset({required double start , required double offset })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeStartAtWithOffset(that: this, start: start, offset: offset);


/// Start the playback at the given time, with a given offset, for a given duration
///
/// # Panics
///
/// Panics if the source was already started
 Future<void>  startAtWithOffsetAndDuration({required double start , required double offset , required double duration })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeStartAtWithOffsetAndDuration(that: this, start: start, offset: offset, duration: duration);


 Future<void>  stop()=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeStop(that: this, );


 Future<void>  stopAt({required double when })=>RustLib.instance.api.webAudioApiNodeAudioBufferSourceNodeStopAt(that: this, when: when);


            }
            @sealed class AudioContextImpl extends RustOpaque implements AudioContext {
                // Not to be used by end users
                AudioContextImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioContextImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioContext,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioContext,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioContextPtr,
                );

                /// This represents the number of seconds of processing latency incurred by
/// the `AudioContext` passing the audio from the `AudioDestinationNode`
/// to the audio subsystem.
 Future<double>  baseLatency()=>RustLib.instance.api.webAudioApiContextAudioContextBaseLatency(that: this, );


/// Unset the callback to run when the audio sink has changed
 Future<void>  clearOnsinkchange()=>RustLib.instance.api.webAudioApiContextAudioContextClearOnsinkchange(that: this, );


/// Unset the callback to run when the state of the AudioContext has changed
 Future<void>  clearOnstatechange()=>RustLib.instance.api.webAudioApiContextAudioContextClearOnstatechange(that: this, );


/// Closes the `AudioContext`, releasing the system resources being used.
///
/// This will not automatically release all `AudioContext`-created objects, but will suspend
/// the progression of the currentTime, and stop processing audio data.
///
/// # Panics
///
/// Will panic when this function is called multiple times
 Future<void>  close()=>RustLib.instance.api.webAudioApiContextAudioContextClose(that: this, );


/// Closes the `AudioContext`, releasing the system resources being used.
///
/// This will not automatically release all `AudioContext`-created objects, but will suspend
/// the progression of the currentTime, and stop processing audio data.
///
/// This function operates synchronously and blocks the current thread until the audio thread
/// has stopped processing.
///
/// # Panics
///
/// Will panic when this function is called multiple times
 Future<void>  closeSync()=>RustLib.instance.api.webAudioApiContextAudioContextCloseSync(that: this, );


/// Creates a `AnalyserNode`
 Future<AnalyserNode>  createAnalyser()=>RustLib.instance.api.webAudioApiContextAudioContextCreateAnalyser(that: this, );


/// Create an `AudioParam`.
///
/// Call this inside the `register` closure when setting up your `AudioNode`
 Future<(AudioParam,AudioParamId)>  createAudioParam({required AudioParamDescriptor opts , required AudioContextRegistration dest })=>RustLib.instance.api.webAudioApiContextAudioContextCreateAudioParam(that: this, opts: opts, dest: dest);


/// Creates an `BiquadFilterNode` which implements a second order filter
 Future<BiquadFilterNode>  createBiquadFilter()=>RustLib.instance.api.webAudioApiContextAudioContextCreateBiquadFilter(that: this, );


/// Create an new "in-memory" `AudioBuffer` with the given number of channels,
/// length (i.e. number of samples per channel) and sample rate.
///
/// Note: In most cases you will want the sample rate to match the current
/// audio context sample rate.
 Future<AudioBuffer>  createBuffer({required int numberOfChannels , required int length , required double sampleRate })=>RustLib.instance.api.webAudioApiContextAudioContextCreateBuffer(that: this, numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);


/// Creates an `AudioBufferSourceNode`
 Future<AudioBufferSourceNode>  createBufferSource()=>RustLib.instance.api.webAudioApiContextAudioContextCreateBufferSource(that: this, );


/// Creates a `ChannelMergerNode`
 Future<ChannelMergerNode>  createChannelMerger({required int numberOfInputs })=>RustLib.instance.api.webAudioApiContextAudioContextCreateChannelMerger(that: this, numberOfInputs: numberOfInputs);


/// Creates a `ChannelSplitterNode`
 Future<ChannelSplitterNode>  createChannelSplitter({required int numberOfOutputs })=>RustLib.instance.api.webAudioApiContextAudioContextCreateChannelSplitter(that: this, numberOfOutputs: numberOfOutputs);


/// Creates an `ConstantSourceNode`, a source representing a constant value
 Future<ConstantSourceNode>  createConstantSource()=>RustLib.instance.api.webAudioApiContextAudioContextCreateConstantSource(that: this, );


/// Creates an `ConvolverNode`, a processing node which applies linear convolution
 Future<ConvolverNode>  createConvolver()=>RustLib.instance.api.webAudioApiContextAudioContextCreateConvolver(that: this, );


/// Creates a `DelayNode`, delaying the audio signal
 Future<DelayNode>  createDelay({required double maxDelayTime })=>RustLib.instance.api.webAudioApiContextAudioContextCreateDelay(that: this, maxDelayTime: maxDelayTime);


/// Creates a `DynamicsCompressorNode`, compressing the audio signal
 Future<DynamicsCompressorNode>  createDynamicsCompressor()=>RustLib.instance.api.webAudioApiContextAudioContextCreateDynamicsCompressor(that: this, );


/// Creates an `GainNode`, to control audio volume
 Future<GainNode>  createGain()=>RustLib.instance.api.webAudioApiContextAudioContextCreateGain(that: this, );


/// Creates an `IirFilterNode`
///
/// # Arguments
///
/// * `feedforward` - An array of the feedforward (numerator) coefficients for the transfer function of the IIR filter.
/// The maximum length of this array is 20
/// * `feedback` - An array of the feedback (denominator) coefficients for the transfer function of the IIR filter.
/// The maximum length of this array is 20
 Future<IirFilterNode>  createIirFilter({required List<double> feedforward , required List<double> feedback })=>RustLib.instance.api.webAudioApiContextAudioContextCreateIirFilter(that: this, feedforward: feedforward, feedback: feedback);


/// Creates a [`MediaStreamAudioDestinationNode`](node::MediaStreamAudioDestinationNode)
 Future<MediaStreamAudioDestinationNode>  createMediaStreamDestination()=>RustLib.instance.api.webAudioApiContextAudioContextCreateMediaStreamDestination(that: this, );


/// Creates a [`MediaStreamAudioSourceNode`](node::MediaStreamAudioSourceNode) from a
/// [`MediaStream`]
 Future<MediaStreamAudioSourceNode>  createMediaStreamSource({required MediaStream media })=>RustLib.instance.api.webAudioApiContextAudioContextCreateMediaStreamSource(that: this, media: media);


/// Creates a [`MediaStreamTrackAudioSourceNode`](node::MediaStreamTrackAudioSourceNode) from a
/// [`MediaStreamTrack`]
 Future<MediaStreamTrackAudioSourceNode>  createMediaStreamTrackSource({required MediaStreamTrack media })=>RustLib.instance.api.webAudioApiContextAudioContextCreateMediaStreamTrackSource(that: this, media: media);


/// Creates an `OscillatorNode`, a source representing a periodic waveform.
 Future<OscillatorNode>  createOscillator()=>RustLib.instance.api.webAudioApiContextAudioContextCreateOscillator(that: this, );


/// Creates a `PannerNode`
 Future<PannerNode>  createPanner()=>RustLib.instance.api.webAudioApiContextAudioContextCreatePanner(that: this, );


/// Creates a periodic wave
///
/// Please note that this constructor deviates slightly from the spec by requiring a single
/// argument with the periodic wave options.
 Future<PeriodicWave>  createPeriodicWave({required PeriodicWaveOptions options })=>RustLib.instance.api.webAudioApiContextAudioContextCreatePeriodicWave(that: this, options: options);


/// Creates an `ScriptProcessorNode` for custom audio processing (deprecated);
///
/// # Panics
///
/// This function panics if:
/// - `buffer_size` is not 256, 512, 1024, 2048, 4096, 8192, or 16384
/// - the number of input and output channels are both zero
/// - either of the channel counts exceed [`crate::MAX_CHANNELS`]
 Future<ScriptProcessorNode>  createScriptProcessor({required int bufferSize , required int numberOfInputChannels , required int numberOfOutputChannels })=>RustLib.instance.api.webAudioApiContextAudioContextCreateScriptProcessor(that: this, bufferSize: bufferSize, numberOfInputChannels: numberOfInputChannels, numberOfOutputChannels: numberOfOutputChannels);


/// Creates an `StereoPannerNode` to pan a stereo output
 Future<StereoPannerNode>  createStereoPanner()=>RustLib.instance.api.webAudioApiContextAudioContextCreateStereoPanner(that: this, );


/// Creates a `WaveShaperNode`
 Future<WaveShaperNode>  createWaveShaper()=>RustLib.instance.api.webAudioApiContextAudioContextCreateWaveShaper(that: this, );


/// This is the time in seconds of the sample frame immediately following the last sample-frame
/// in the block of audio most recently processed by the context’s rendering graph.
 Future<double>  currentTime()=>RustLib.instance.api.webAudioApiContextAudioContextCurrentTime(that: this, );


/// Returns an `AudioDestinationNode` representing the final destination of all audio in the
/// context. It can be thought of as the audio-rendering device.
 Future<AudioDestinationNode>  destination()=>RustLib.instance.api.webAudioApiContextAudioContextDestination(that: this, );


 Future<MediaElementAudioSourceNode>  createMediaElementSource({required MyMediaElement mediaElement })=>RustLib.instance.api.webAudioApiContextAudioContextFrbOverrideCreateMediaElementSource(that: this, mediaElement: mediaElement);


 Future<AudioBuffer>  decodeAudioDataSync({required String inputPath })=>RustLib.instance.api.webAudioApiContextAudioContextFrbOverrideDecodeAudioDataSync(that: this, inputPath: inputPath);


/// Returns the `AudioListener` which is used for 3D spatialization
 Future<AudioListener>  listener()=>RustLib.instance.api.webAudioApiContextAudioContextListener(that: this, );


/// The estimation in seconds of audio output latency, i.e., the interval
/// between the time the UA requests the host system to play a buffer and
/// the time at which the first sample in the buffer is actually processed
/// by the audio output device.
 Future<double>  outputLatency()=>RustLib.instance.api.webAudioApiContextAudioContextOutputLatency(that: this, );


/// Returns an [`AudioRenderCapacity`] instance associated with an AudioContext.
 Future<AudioRenderCapacity>  renderCapacity()=>RustLib.instance.api.webAudioApiContextAudioContextRenderCapacity(that: this, );


/// Resumes the progression of time in an audio context that has previously been
/// suspended/paused.
///
/// This function operates synchronously and blocks the current thread until the audio thread
/// has started processing again.
///
/// # Panics
///
/// Will panic if:
///
/// * The audio device is not available
/// * For a `BackendSpecificError`
 Future<void>  resumeSync()=>RustLib.instance.api.webAudioApiContextAudioContextResumeSync(that: this, );


/// The sample rate (in sample-frames per second) at which the `AudioContext` handles audio.
 Future<double>  sampleRate()=>RustLib.instance.api.webAudioApiContextAudioContextSampleRate(that: this, );


 Future<void>  setOnStateChange({required FutureOr<void> Function(Event) callback })=>RustLib.instance.api.webAudioApiContextAudioContextSetOnStateChange(that: this, callback: callback);


 Future<void>  setSinkId({required String sinkId })=>RustLib.instance.api.webAudioApiContextAudioContextSetSinkId(that: this, sinkId: sinkId);


/// Identifier or the information of the current audio output device.
///
/// The initial value is `""`, which means the default audio output device.
 Future<String>  sinkId()=>RustLib.instance.api.webAudioApiContextAudioContextSinkId(that: this, );


/// Returns state of current context
 Future<AudioContextState>  state()=>RustLib.instance.api.webAudioApiContextAudioContextState(that: this, );


/// Suspends the progression of time in the audio context.
///
/// This will temporarily halt audio hardware access and reducing CPU/battery usage in the
/// process.
///
/// # Panics
///
/// Will panic if:
///
/// * The audio device is not available
/// * For a `BackendSpecificError`
 Future<void>  suspend()=>RustLib.instance.api.webAudioApiContextAudioContextSuspend(that: this, );


/// Suspends the progression of time in the audio context.
///
/// This will temporarily halt audio hardware access and reducing CPU/battery usage in the
/// process.
///
/// This function operates synchronously and blocks the current thread until the audio thread
/// has stopped processing.
///
/// # Panics
///
/// Will panic if:
///
/// * The audio device is not available
/// * For a `BackendSpecificError`
 Future<void>  suspendSync()=>RustLib.instance.api.webAudioApiContextAudioContextSuspendSync(that: this, );


            }
            @sealed class AudioContextRegistrationImpl extends RustOpaque implements AudioContextRegistration {
                // Not to be used by end users
                AudioContextRegistrationImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioContextRegistrationImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioContextRegistration,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioContextRegistration,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioContextRegistrationPtr,
                );

                
            }
            @sealed class AudioDestinationNodeImpl extends RustOpaque implements AudioDestinationNode {
                // Not to be used by end users
                AudioDestinationNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioDestinationNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioDestinationNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioDestinationNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioDestinationNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeFrbOverrideConnect(that: this, dest: dest);


/// The maximum number of channels that the channelCount attribute can be set to (the max
/// number of channels that the hardware is capable of supporting).
/// <https://www.w3.org/TR/webaudio/#dom-audiodestinationnode-maxchannelcount>
 Future<int>  maxChannelCount()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeMaxChannelCount(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeRegistration(that: this, );


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeAudioDestinationNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class AudioListenerImpl extends RustOpaque implements AudioListener {
                // Not to be used by end users
                AudioListenerImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioListenerImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioListener,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioListener,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioListenerPtr,
                );

                 AudioParam get forwardX=>AudioParamProxyVariantAudioListenerForwardX(this);


 AudioParam get forwardY=>AudioParamProxyVariantAudioListenerForwardY(this);


 AudioParam get forwardZ=>AudioParamProxyVariantAudioListenerForwardZ(this);


 AudioParam get positionX=>AudioParamProxyVariantAudioListenerPositionX(this);


 AudioParam get positionY=>AudioParamProxyVariantAudioListenerPositionY(this);


 AudioParam get positionZ=>AudioParamProxyVariantAudioListenerPositionZ(this);


 AudioParam get upX=>AudioParamProxyVariantAudioListenerUpX(this);


 AudioParam get upY=>AudioParamProxyVariantAudioListenerUpY(this);


 AudioParam get upZ=>AudioParamProxyVariantAudioListenerUpZ(this);


            }
            @sealed class AudioParamIdImpl extends RustOpaque implements AudioParamId {
                // Not to be used by end users
                AudioParamIdImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioParamIdImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioParamId,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioParamId,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioParamIdPtr,
                );

                
            }
            @sealed class AudioParamImpl extends RustOpaque implements AudioParam {
                // Not to be used by end users
                AudioParamImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioParamImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioParam,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioParam,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioParamPtr,
                );

                /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


            }
            @sealed class AudioProcessingEventImpl extends RustOpaque implements AudioProcessingEvent {
                // Not to be used by end users
                AudioProcessingEventImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioProcessingEventImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioProcessingEvent,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioProcessingEvent,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioProcessingEventPtr,
                );

                 AudioBuffer get inputBuffer=>RustLib.instance.api.webAudioApiAudioProcessingEventAutoAccessorGetInputBuffer(that: this, );


 AudioBuffer get outputBuffer=>RustLib.instance.api.webAudioApiAudioProcessingEventAutoAccessorGetOutputBuffer(that: this, );


 double get playbackTime=>RustLib.instance.api.webAudioApiAudioProcessingEventAutoAccessorGetPlaybackTime(that: this, );


  set inputBuffer(AudioBuffer inputBuffer)=>RustLib.instance.api.webAudioApiAudioProcessingEventAutoAccessorSetInputBuffer(that: this, inputBuffer: inputBuffer);


  set outputBuffer(AudioBuffer outputBuffer)=>RustLib.instance.api.webAudioApiAudioProcessingEventAutoAccessorSetOutputBuffer(that: this, outputBuffer: outputBuffer);


  set playbackTime(double playbackTime)=>RustLib.instance.api.webAudioApiAudioProcessingEventAutoAccessorSetPlaybackTime(that: this, playbackTime: playbackTime);


            }
            @sealed class AudioRenderCapacityEventImpl extends RustOpaque implements AudioRenderCapacityEvent {
                // Not to be used by end users
                AudioRenderCapacityEventImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioRenderCapacityEventImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioRenderCapacityEvent,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioRenderCapacityEvent,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioRenderCapacityEventPtr,
                );

                 double get averageLoad=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorGetAverageLoad(that: this, );


 Event get event=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorGetEvent(that: this, );


 double get peakLoad=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorGetPeakLoad(that: this, );


 double get timestamp=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorGetTimestamp(that: this, );


 double get underrunRatio=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorGetUnderrunRatio(that: this, );


  set averageLoad(double averageLoad)=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorSetAverageLoad(that: this, averageLoad: averageLoad);


  set event(Event event)=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorSetEvent(that: this, event: event);


  set peakLoad(double peakLoad)=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorSetPeakLoad(that: this, peakLoad: peakLoad);


  set timestamp(double timestamp)=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorSetTimestamp(that: this, timestamp: timestamp);


  set underrunRatio(double underrunRatio)=>RustLib.instance.api.webAudioApiAudioRenderCapacityEventAutoAccessorSetUnderrunRatio(that: this, underrunRatio: underrunRatio);


            }
            @sealed class AudioRenderCapacityImpl extends RustOpaque implements AudioRenderCapacity {
                // Not to be used by end users
                AudioRenderCapacityImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioRenderCapacityImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioRenderCapacity,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioRenderCapacity,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioRenderCapacityPtr,
                );

                /// Unset the EventHandler for [`AudioRenderCapacityEvent`].
 Future<void>  clearOnupdate()=>RustLib.instance.api.webAudioApiAudioRenderCapacityClearOnupdate(that: this, );


/// Start metric collection and analysis
 Future<void>  start({required AudioRenderCapacityOptions options })=>RustLib.instance.api.webAudioApiAudioRenderCapacityStart(that: this, options: options);


/// Stop metric collection and analysis
 Future<void>  stop()=>RustLib.instance.api.webAudioApiAudioRenderCapacityStop(that: this, );


            }
            @sealed class AudioWorkletNodeImpl extends RustOpaque implements AudioWorkletNode {
                // Not to be used by end users
                AudioWorkletNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                AudioWorkletNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_AudioWorkletNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_AudioWorkletNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_AudioWorkletNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeDisconnectOutput(that: this, output: output);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeNumberOfOutputs(that: this, );


/// Collection of AudioParam objects with associated names of this node
///
/// This map is populated from a list of [`AudioParamDescriptor`]s in the
/// [`AudioWorkletProcessor`] class constructor at the instantiation.
 Future<void>  parameters()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeParameters(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiWorkletAudioWorkletNodeSetChannelInterpretation(that: this, v: v);


            }
            @sealed class BiquadFilterNodeImpl extends RustOpaque implements BiquadFilterNode {
                // Not to be used by end users
                BiquadFilterNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                BiquadFilterNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_BiquadFilterNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_BiquadFilterNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_BiquadFilterNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeClearOnprocessorerror(that: this, );


/// Returns the detune audio parameter
 AudioParam get detune=>AudioParamProxyVariantBiquadFilterNodeDetune(this);


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeFrbOverrideConnect(that: this, dest: dest);


/// Returns the frequency audio parameter
 AudioParam get frequency=>AudioParamProxyVariantBiquadFilterNodeFrequency(this);


/// Returns the gain audio parameter
 AudioParam get gain=>AudioParamProxyVariantBiquadFilterNodeGain(this);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeNumberOfOutputs(that: this, );


/// Returns the Q audio parameter
 AudioParam get q=>AudioParamProxyVariantBiquadFilterNodeQ(this);


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeSetOnProcessorError(that: this, callback: callback);


/// biquad filter type setter
///
/// # Arguments
///
/// * `type_` - the biquad filter type (lowpass, highpass,...)
 Future<void>  setType({required BiquadFilterType type })=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeSetType(that: this, type: type);


/// Returns the biquad filter type
 Future<BiquadFilterType>  type()=>RustLib.instance.api.webAudioApiNodeBiquadFilterNodeType(that: this, );


            }
            @sealed class BlobEventImpl extends RustOpaque implements BlobEvent {
                // Not to be used by end users
                BlobEventImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                BlobEventImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_BlobEvent,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_BlobEvent,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_BlobEventPtr,
                );

                 Uint8List get blob=>RustLib.instance.api.webAudioApiMediaRecorderBlobEventAutoAccessorGetBlob(that: this, );


 Event get event=>RustLib.instance.api.webAudioApiMediaRecorderBlobEventAutoAccessorGetEvent(that: this, );


 double get timecode=>RustLib.instance.api.webAudioApiMediaRecorderBlobEventAutoAccessorGetTimecode(that: this, );


  set blob(Uint8List blob)=>RustLib.instance.api.webAudioApiMediaRecorderBlobEventAutoAccessorSetBlob(that: this, blob: blob);


  set event(Event event)=>RustLib.instance.api.webAudioApiMediaRecorderBlobEventAutoAccessorSetEvent(that: this, event: event);


  set timecode(double timecode)=>RustLib.instance.api.webAudioApiMediaRecorderBlobEventAutoAccessorSetTimecode(that: this, timecode: timecode);


            }
            @sealed class ChannelConfigImpl extends RustOpaque implements ChannelConfig {
                // Not to be used by end users
                ChannelConfigImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                ChannelConfigImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ChannelConfig,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ChannelConfig,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ChannelConfigPtr,
                );

                
            }
            @sealed class ChannelMergerNodeImpl extends RustOpaque implements ChannelMergerNode {
                // Not to be used by end users
                ChannelMergerNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                ChannelMergerNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ChannelMergerNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ChannelMergerNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ChannelMergerNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeRegistration(that: this, );


 Future<void>  setChannelCount({required int count })=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeSetChannelCount(that: this, count: count);


 Future<void>  setChannelCountMode({required ChannelCountMode mode })=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeSetChannelCountMode(that: this, mode: mode);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeChannelMergerNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class ChannelSplitterNodeImpl extends RustOpaque implements ChannelSplitterNode {
                // Not to be used by end users
                ChannelSplitterNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                ChannelSplitterNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ChannelSplitterNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ChannelSplitterNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ChannelSplitterNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeRegistration(that: this, );


 Future<void>  setChannelCount({required int count })=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeSetChannelCount(that: this, count: count);


 Future<void>  setChannelCountMode({required ChannelCountMode mode })=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeSetChannelCountMode(that: this, mode: mode);


 Future<void>  setChannelInterpretation({required ChannelInterpretation interpretation })=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeSetChannelInterpretation(that: this, interpretation: interpretation);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeChannelSplitterNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class ConcreteBaseAudioContextImpl extends RustOpaque implements ConcreteBaseAudioContext {
                // Not to be used by end users
                ConcreteBaseAudioContextImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                ConcreteBaseAudioContextImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ConcreteBaseAudioContext,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ConcreteBaseAudioContext,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ConcreteBaseAudioContextPtr,
                );

                /// Unset the callback to run when the state of the AudioContext has changed
 Future<void>  clearOnstatechange()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextClearOnstatechange(that: this, );


/// Creates a `AnalyserNode`
 Future<AnalyserNode>  createAnalyser()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateAnalyser(that: this, );


/// Create an `AudioParam`.
///
/// Call this inside the `register` closure when setting up your `AudioNode`
 Future<(AudioParam,AudioParamId)>  createAudioParam({required AudioParamDescriptor opts , required AudioContextRegistration dest })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateAudioParam(that: this, opts: opts, dest: dest);


/// Creates an `BiquadFilterNode` which implements a second order filter
 Future<BiquadFilterNode>  createBiquadFilter()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateBiquadFilter(that: this, );


/// Create an new "in-memory" `AudioBuffer` with the given number of channels,
/// length (i.e. number of samples per channel) and sample rate.
///
/// Note: In most cases you will want the sample rate to match the current
/// audio context sample rate.
 Future<AudioBuffer>  createBuffer({required int numberOfChannels , required int length , required double sampleRate })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateBuffer(that: this, numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);


/// Creates an `AudioBufferSourceNode`
 Future<AudioBufferSourceNode>  createBufferSource()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateBufferSource(that: this, );


/// Creates a `ChannelMergerNode`
 Future<ChannelMergerNode>  createChannelMerger({required int numberOfInputs })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateChannelMerger(that: this, numberOfInputs: numberOfInputs);


/// Creates a `ChannelSplitterNode`
 Future<ChannelSplitterNode>  createChannelSplitter({required int numberOfOutputs })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateChannelSplitter(that: this, numberOfOutputs: numberOfOutputs);


/// Creates an `ConstantSourceNode`, a source representing a constant value
 Future<ConstantSourceNode>  createConstantSource()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateConstantSource(that: this, );


/// Creates an `ConvolverNode`, a processing node which applies linear convolution
 Future<ConvolverNode>  createConvolver()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateConvolver(that: this, );


/// Creates a `DelayNode`, delaying the audio signal
 Future<DelayNode>  createDelay({required double maxDelayTime })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateDelay(that: this, maxDelayTime: maxDelayTime);


/// Creates a `DynamicsCompressorNode`, compressing the audio signal
 Future<DynamicsCompressorNode>  createDynamicsCompressor()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateDynamicsCompressor(that: this, );


/// Creates an `GainNode`, to control audio volume
 Future<GainNode>  createGain()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateGain(that: this, );


/// Creates an `IirFilterNode`
///
/// # Arguments
///
/// * `feedforward` - An array of the feedforward (numerator) coefficients for the transfer function of the IIR filter.
/// The maximum length of this array is 20
/// * `feedback` - An array of the feedback (denominator) coefficients for the transfer function of the IIR filter.
/// The maximum length of this array is 20
 Future<IirFilterNode>  createIirFilter({required List<double> feedforward , required List<double> feedback })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateIirFilter(that: this, feedforward: feedforward, feedback: feedback);


/// Creates an `OscillatorNode`, a source representing a periodic waveform.
 Future<OscillatorNode>  createOscillator()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateOscillator(that: this, );


/// Creates a `PannerNode`
 Future<PannerNode>  createPanner()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreatePanner(that: this, );


/// Creates a periodic wave
///
/// Please note that this constructor deviates slightly from the spec by requiring a single
/// argument with the periodic wave options.
 Future<PeriodicWave>  createPeriodicWave({required PeriodicWaveOptions options })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreatePeriodicWave(that: this, options: options);


/// Creates an `ScriptProcessorNode` for custom audio processing (deprecated);
///
/// # Panics
///
/// This function panics if:
/// - `buffer_size` is not 256, 512, 1024, 2048, 4096, 8192, or 16384
/// - the number of input and output channels are both zero
/// - either of the channel counts exceed [`crate::MAX_CHANNELS`]
 Future<ScriptProcessorNode>  createScriptProcessor({required int bufferSize , required int numberOfInputChannels , required int numberOfOutputChannels })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateScriptProcessor(that: this, bufferSize: bufferSize, numberOfInputChannels: numberOfInputChannels, numberOfOutputChannels: numberOfOutputChannels);


/// Creates an `StereoPannerNode` to pan a stereo output
 Future<StereoPannerNode>  createStereoPanner()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateStereoPanner(that: this, );


/// Creates a `WaveShaperNode`
 Future<WaveShaperNode>  createWaveShaper()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCreateWaveShaper(that: this, );


/// This is the time in seconds of the sample frame immediately following the last sample-frame
/// in the block of audio most recently processed by the context’s rendering graph.
 Future<double>  currentTime()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextCurrentTime(that: this, );


/// Returns an `AudioDestinationNode` representing the final destination of all audio in the
/// context. It can be thought of as the audio-rendering device.
 Future<AudioDestinationNode>  destination()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextDestination(that: this, );


/// Returns the `AudioListener` which is used for 3D spatialization
 Future<AudioListener>  listener()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextListener(that: this, );


/// Inform render thread that this node can act as a cycle breaker
 Future<void>  markCycleBreaker({required AudioContextRegistration reg })=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextMarkCycleBreaker(that: this, reg: reg);


/// The sample rate (in sample-frames per second) at which the `AudioContext` handles audio.
 Future<double>  sampleRate()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextSampleRate(that: this, );


/// Returns state of current context
 Future<AudioContextState>  state()=>RustLib.instance.api.webAudioApiContextConcreteBaseAudioContextState(that: this, );


            }
            @sealed class ConstantSourceNodeImpl extends RustOpaque implements ConstantSourceNode {
                // Not to be used by end users
                ConstantSourceNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                ConstantSourceNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ConstantSourceNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ConstantSourceNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ConstantSourceNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeChannelInterpretation(that: this, );


/// Unset the callback to run when the source node has stopped playing
 Future<void>  clearOnended()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeClearOnended(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeNumberOfOutputs(that: this, );


 AudioParam get offset=>AudioParamProxyVariantConstantSourceNodeOffset(this);


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnEnded({required FutureOr<void> Function(Event) callback })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeSetOnEnded(that: this, callback: callback);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeSetOnProcessorError(that: this, callback: callback);


 Future<void>  start()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeStart(that: this, );


 Future<void>  startAt({required double when })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeStartAt(that: this, when: when);


 Future<void>  stop()=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeStop(that: this, );


 Future<void>  stopAt({required double when })=>RustLib.instance.api.webAudioApiNodeConstantSourceNodeStopAt(that: this, when: when);


            }
            @sealed class ConvolverNodeImpl extends RustOpaque implements ConvolverNode {
                // Not to be used by end users
                ConvolverNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                ConvolverNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ConvolverNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ConvolverNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ConvolverNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeConvolverNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeConvolverNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeConvolverNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeConvolverNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeConvolverNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeConvolverNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeConvolverNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeConvolverNodeFrbOverrideConnect(that: this, dest: dest);


/// Denotes if the response buffer will be scaled with an equal-power normalization
 Future<bool>  normalize()=>RustLib.instance.api.webAudioApiNodeConvolverNodeNormalize(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeConvolverNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeConvolverNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeConvolverNodeRegistration(that: this, );


/// Set or update the impulse response buffer
///
/// # Panics
///
/// Panics when the sample rate of the provided AudioBuffer differs from the audio context
/// sample rate.
 Future<void>  setBuffer({required AudioBuffer buffer })=>RustLib.instance.api.webAudioApiNodeConvolverNodeSetBuffer(that: this, buffer: buffer);


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeConvolverNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeConvolverNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeConvolverNodeSetChannelInterpretation(that: this, v: v);


/// Update the `normalize` setting. This will only have an effect when `set_buffer` is called.
 Future<void>  setNormalize({required bool value })=>RustLib.instance.api.webAudioApiNodeConvolverNodeSetNormalize(that: this, value: value);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeConvolverNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class DelayNodeImpl extends RustOpaque implements DelayNode {
                // Not to be used by end users
                DelayNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                DelayNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_DelayNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_DelayNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_DelayNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeDelayNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeDelayNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeDelayNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeDelayNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeDelayNodeClearOnprocessorerror(that: this, );


/// A-rate [`AudioParam`] representing the amount of delay (in seconds) to apply.
 AudioParam get delayTime=>AudioParamProxyVariantDelayNodeDelayTime(this);


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeDelayNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeDelayNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeDelayNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeDelayNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeDelayNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeDelayNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeDelayNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeDelayNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeDelayNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeDelayNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class DynamicsCompressorNodeImpl extends RustOpaque implements DynamicsCompressorNode {
                // Not to be used by end users
                DynamicsCompressorNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                DynamicsCompressorNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_DynamicsCompressorNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_DynamicsCompressorNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_DynamicsCompressorNodePtr,
                );

                 AudioParam get attack=>AudioParamProxyVariantDynamicsCompressorNodeAttack(this);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeFrbOverrideConnect(that: this, dest: dest);


 AudioParam get knee=>AudioParamProxyVariantDynamicsCompressorNodeKnee(this);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeNumberOfOutputs(that: this, );


 AudioParam get ratio=>AudioParamProxyVariantDynamicsCompressorNodeRatio(this);


 Future<double>  reduction()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeReduction(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeRegistration(that: this, );


 AudioParam get release=>AudioParamProxyVariantDynamicsCompressorNodeRelease(this);


 Future<void>  setChannelCount({required int count })=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeSetChannelCount(that: this, count: count);


 Future<void>  setChannelCountMode({required ChannelCountMode mode })=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeSetChannelCountMode(that: this, mode: mode);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeDynamicsCompressorNodeSetOnProcessorError(that: this, callback: callback);


 AudioParam get threshold=>AudioParamProxyVariantDynamicsCompressorNodeThreshold(this);


            }
            @sealed class EventImpl extends RustOpaque implements Event {
                // Not to be used by end users
                EventImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                EventImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_Event,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_Event,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_EventPtr,
                );

                 String get type=>RustLib.instance.api.webAudioApiEventType(that: this, );


            }
            @sealed class GainNodeImpl extends RustOpaque implements GainNode {
                // Not to be used by end users
                GainNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                GainNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_GainNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_GainNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_GainNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeGainNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeGainNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeGainNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeGainNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeGainNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeGainNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeGainNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeGainNodeFrbOverrideConnect(that: this, dest: dest);


 AudioParam get gain=>AudioParamProxyVariantGainNodeGain(this);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeGainNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeGainNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeGainNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeGainNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeGainNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeGainNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeGainNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class IirFilterNodeImpl extends RustOpaque implements IirFilterNode {
                // Not to be used by end users
                IirFilterNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                IirFilterNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_IirFilterNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_IirFilterNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_IirFilterNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeIirFilterNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeIirFilterNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeIirFilterNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeIirFilterNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeIirFilterNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeIirFilterNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeIirFilterNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class MediaElementAudioSourceNodeImpl extends RustOpaque implements MediaElementAudioSourceNode {
                // Not to be used by end users
                MediaElementAudioSourceNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaElementAudioSourceNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaElementAudioSourceNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaElementAudioSourceNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaElementAudioSourceNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeMediaElementAudioSourceNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class MediaRecorderImpl extends RustOpaque implements MediaRecorder {
                // Not to be used by end users
                MediaRecorderImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaRecorderImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaRecorder,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaRecorder,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaRecorderPtr,
                );

                 Future<void>  clearOndataavailable()=>RustLib.instance.api.webAudioApiMediaRecorderMediaRecorderClearOndataavailable(that: this, );


 Future<void>  clearOnerror()=>RustLib.instance.api.webAudioApiMediaRecorderMediaRecorderClearOnerror(that: this, );


 Future<void>  clearOnstop()=>RustLib.instance.api.webAudioApiMediaRecorderMediaRecorderClearOnstop(that: this, );


/// Begin recording media
///
/// # Panics
///
/// Will panic when the recorder has already started
 Future<void>  start()=>RustLib.instance.api.webAudioApiMediaRecorderMediaRecorderStart(that: this, );


 Future<void>  stop()=>RustLib.instance.api.webAudioApiMediaRecorderMediaRecorderStop(that: this, );


            }
            @sealed class MediaStreamAudioDestinationNodeImpl extends RustOpaque implements MediaStreamAudioDestinationNode {
                // Not to be used by end users
                MediaStreamAudioDestinationNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaStreamAudioDestinationNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaStreamAudioDestinationNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamAudioDestinationNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamAudioDestinationNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioDestinationNodeSetOnProcessorError(that: this, callback: callback);


/// A [`MediaStream`] producing audio buffers with the same number of channels as the node
/// itself
 Future<MediaStream>  stream()=>Future.value(MediaStreamProxyVariantMediaStreamAudioDestinationNodeStream(this));


            }
            @sealed class MediaStreamAudioSourceNodeImpl extends RustOpaque implements MediaStreamAudioSourceNode {
                // Not to be used by end users
                MediaStreamAudioSourceNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaStreamAudioSourceNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaStreamAudioSourceNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamAudioSourceNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamAudioSourceNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeMediaStreamAudioSourceNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class MediaStreamConstraintsImpl extends RustOpaque implements MediaStreamConstraints {
                // Not to be used by end users
                MediaStreamConstraintsImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaStreamConstraintsImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaStreamConstraints,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamConstraints,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamConstraintsPtr,
                );

                
            }
            @sealed class MediaStreamImpl extends RustOpaque implements MediaStream {
                // Not to be used by end users
                MediaStreamImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaStreamImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaStream,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStream,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamPtr,
                );

                 Future<List<MediaStreamTrack>>  getTracks()=>RustLib.instance.api.webAudioApiMediaStreamsMediaStreamFrbOverrideGetTracks(that: this, );


            }
            @sealed class MediaStreamTrackAudioSourceNodeImpl extends RustOpaque implements MediaStreamTrackAudioSourceNode {
                // Not to be used by end users
                MediaStreamTrackAudioSourceNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaStreamTrackAudioSourceNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaStreamTrackAudioSourceNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamTrackAudioSourceNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamTrackAudioSourceNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeMediaStreamTrackAudioSourceNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class MediaStreamTrackImpl extends RustOpaque implements MediaStreamTrack {
                // Not to be used by end users
                MediaStreamTrackImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MediaStreamTrackImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MediaStreamTrack,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamTrack,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MediaStreamTrackPtr,
                );

                 Future<void>  close()=>RustLib.instance.api.webAudioApiMediaStreamsMediaStreamTrackClose(that: this, );


 Future<MediaStreamTrackState>  readyState()=>RustLib.instance.api.webAudioApiMediaStreamsMediaStreamTrackReadyState(that: this, );


            }
            @sealed class MyMediaElementImpl extends RustOpaque implements MyMediaElement {
                // Not to be used by end users
                MyMediaElementImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                MyMediaElementImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_MyMediaElement,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_MyMediaElement,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_MyMediaElementPtr,
                );

                 Future<double>  currentTime()=>RustLib.instance.api.crateApiMediaElementMyMediaElementCurrentTime(that: this, );


 Future<bool>  loop()=>RustLib.instance.api.crateApiMediaElementMyMediaElementLoop(that: this, );


 Future<void>  pause()=>RustLib.instance.api.crateApiMediaElementMyMediaElementPause(that: this, );


 Future<bool>  paused()=>RustLib.instance.api.crateApiMediaElementMyMediaElementPaused(that: this, );


 Future<void>  play()=>RustLib.instance.api.crateApiMediaElementMyMediaElementPlay(that: this, );


 Future<double>  playbackRate()=>RustLib.instance.api.crateApiMediaElementMyMediaElementPlaybackRate(that: this, );


 Future<void>  setCurrentTime({required double value })=>RustLib.instance.api.crateApiMediaElementMyMediaElementSetCurrentTime(that: this, value: value);


 Future<void>  setLoop({required bool value })=>RustLib.instance.api.crateApiMediaElementMyMediaElementSetLoop(that: this, value: value);


 Future<void>  setPlaybackRate({required double value })=>RustLib.instance.api.crateApiMediaElementMyMediaElementSetPlaybackRate(that: this, value: value);


            }
            @sealed class OfflineAudioCompletionEventImpl extends RustOpaque implements OfflineAudioCompletionEvent {
                // Not to be used by end users
                OfflineAudioCompletionEventImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                OfflineAudioCompletionEventImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_OfflineAudioCompletionEvent,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_OfflineAudioCompletionEvent,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_OfflineAudioCompletionEventPtr,
                );

                 Event get event=>RustLib.instance.api.webAudioApiOfflineAudioCompletionEventAutoAccessorGetEvent(that: this, );


 AudioBuffer get renderedBuffer=>RustLib.instance.api.webAudioApiOfflineAudioCompletionEventAutoAccessorGetRenderedBuffer(that: this, );


  set event(Event event)=>RustLib.instance.api.webAudioApiOfflineAudioCompletionEventAutoAccessorSetEvent(that: this, event: event);


  set renderedBuffer(AudioBuffer renderedBuffer)=>RustLib.instance.api.webAudioApiOfflineAudioCompletionEventAutoAccessorSetRenderedBuffer(that: this, renderedBuffer: renderedBuffer);


            }
            @sealed class OfflineAudioContextImpl extends RustOpaque implements OfflineAudioContext {
                // Not to be used by end users
                OfflineAudioContextImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                OfflineAudioContextImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_OfflineAudioContext,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_OfflineAudioContext,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_OfflineAudioContextPtr,
                );

                /// Unset the callback to run when the rendering has completed
 Future<void>  clearOncomplete()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextClearOncomplete(that: this, );


/// Unset the callback to run when the state of the AudioContext has changed
 Future<void>  clearOnstatechange()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextClearOnstatechange(that: this, );


/// Creates a `AnalyserNode`
 Future<AnalyserNode>  createAnalyser()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateAnalyser(that: this, );


/// Create an `AudioParam`.
///
/// Call this inside the `register` closure when setting up your `AudioNode`
 Future<(AudioParam,AudioParamId)>  createAudioParam({required AudioParamDescriptor opts , required AudioContextRegistration dest })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateAudioParam(that: this, opts: opts, dest: dest);


/// Creates an `BiquadFilterNode` which implements a second order filter
 Future<BiquadFilterNode>  createBiquadFilter()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateBiquadFilter(that: this, );


/// Create an new "in-memory" `AudioBuffer` with the given number of channels,
/// length (i.e. number of samples per channel) and sample rate.
///
/// Note: In most cases you will want the sample rate to match the current
/// audio context sample rate.
 Future<AudioBuffer>  createBuffer({required int numberOfChannels , required int length , required double sampleRate })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateBuffer(that: this, numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);


/// Creates an `AudioBufferSourceNode`
 Future<AudioBufferSourceNode>  createBufferSource()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateBufferSource(that: this, );


/// Creates a `ChannelMergerNode`
 Future<ChannelMergerNode>  createChannelMerger({required int numberOfInputs })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateChannelMerger(that: this, numberOfInputs: numberOfInputs);


/// Creates a `ChannelSplitterNode`
 Future<ChannelSplitterNode>  createChannelSplitter({required int numberOfOutputs })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateChannelSplitter(that: this, numberOfOutputs: numberOfOutputs);


/// Creates an `ConstantSourceNode`, a source representing a constant value
 Future<ConstantSourceNode>  createConstantSource()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateConstantSource(that: this, );


/// Creates an `ConvolverNode`, a processing node which applies linear convolution
 Future<ConvolverNode>  createConvolver()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateConvolver(that: this, );


/// Creates a `DelayNode`, delaying the audio signal
 Future<DelayNode>  createDelay({required double maxDelayTime })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateDelay(that: this, maxDelayTime: maxDelayTime);


/// Creates a `DynamicsCompressorNode`, compressing the audio signal
 Future<DynamicsCompressorNode>  createDynamicsCompressor()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateDynamicsCompressor(that: this, );


/// Creates an `GainNode`, to control audio volume
 Future<GainNode>  createGain()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateGain(that: this, );


/// Creates an `IirFilterNode`
///
/// # Arguments
///
/// * `feedforward` - An array of the feedforward (numerator) coefficients for the transfer function of the IIR filter.
/// The maximum length of this array is 20
/// * `feedback` - An array of the feedback (denominator) coefficients for the transfer function of the IIR filter.
/// The maximum length of this array is 20
 Future<IirFilterNode>  createIirFilter({required List<double> feedforward , required List<double> feedback })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateIirFilter(that: this, feedforward: feedforward, feedback: feedback);


/// Creates an `OscillatorNode`, a source representing a periodic waveform.
 Future<OscillatorNode>  createOscillator()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateOscillator(that: this, );


/// Creates a `PannerNode`
 Future<PannerNode>  createPanner()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreatePanner(that: this, );


/// Creates a periodic wave
///
/// Please note that this constructor deviates slightly from the spec by requiring a single
/// argument with the periodic wave options.
 Future<PeriodicWave>  createPeriodicWave({required PeriodicWaveOptions options })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreatePeriodicWave(that: this, options: options);


/// Creates an `ScriptProcessorNode` for custom audio processing (deprecated);
///
/// # Panics
///
/// This function panics if:
/// - `buffer_size` is not 256, 512, 1024, 2048, 4096, 8192, or 16384
/// - the number of input and output channels are both zero
/// - either of the channel counts exceed [`crate::MAX_CHANNELS`]
 Future<ScriptProcessorNode>  createScriptProcessor({required int bufferSize , required int numberOfInputChannels , required int numberOfOutputChannels })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateScriptProcessor(that: this, bufferSize: bufferSize, numberOfInputChannels: numberOfInputChannels, numberOfOutputChannels: numberOfOutputChannels);


/// Creates an `StereoPannerNode` to pan a stereo output
 Future<StereoPannerNode>  createStereoPanner()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateStereoPanner(that: this, );


/// Creates a `WaveShaperNode`
 Future<WaveShaperNode>  createWaveShaper()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCreateWaveShaper(that: this, );


/// This is the time in seconds of the sample frame immediately following the last sample-frame
/// in the block of audio most recently processed by the context’s rendering graph.
 Future<double>  currentTime()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextCurrentTime(that: this, );


/// Returns an `AudioDestinationNode` representing the final destination of all audio in the
/// context. It can be thought of as the audio-rendering device.
 Future<AudioDestinationNode>  destination()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextDestination(that: this, );


/// get the length of rendering audio buffer
 Future<int>  length()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextLength(that: this, );


/// Returns the `AudioListener` which is used for 3D spatialization
 Future<AudioListener>  listener()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextListener(that: this, );


/// Resumes the progression of the OfflineAudioContext's currentTime when it has been suspended
///
/// # Panics
///
/// Panics when the context is closed or rendering has not started
 Future<void>  resume()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextResume(that: this, );


/// The sample rate (in sample-frames per second) at which the `AudioContext` handles audio.
 Future<double>  sampleRate()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextSampleRate(that: this, );


 Future<void>  setOnComplete({required FutureOr<void> Function(OfflineAudioCompletionEvent) callback })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextSetOnComplete(that: this, callback: callback);


/// Given the current connections and scheduled changes, starts rendering audio.
///
/// Rendering is purely CPU bound and contains no `await` points, so calling this method will
/// block the executor until completion or until the context is suspended.
///
/// This method will only adhere to scheduled suspensions via [`Self::suspend`] and will
/// ignore those provided via [`Self::suspend_sync`].
///
/// # Panics
///
/// Panics if this method is called multiple times.
 Future<AudioBuffer>  startRendering()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextStartRendering(that: this, );


/// Given the current connections and scheduled changes, starts rendering audio.
///
/// This function will block the current thread and returns the rendered `AudioBuffer`
/// synchronously.
///
/// This method will only adhere to scheduled suspensions via [`Self::suspend_sync`] and
/// will ignore those provided via [`Self::suspend`].
///
/// # Panics
///
/// Panics if this method is called multiple times
 Future<AudioBuffer>  startRenderingSync()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextStartRenderingSync(that: this, );


/// Returns state of current context
 Future<AudioContextState>  state()=>RustLib.instance.api.webAudioApiContextOfflineAudioContextState(that: this, );


/// Schedules a suspension of the time progression in the audio context at the specified time
/// and returns a promise
///
/// The specified time is quantized and rounded up to the render quantum size.
///
/// # Panics
///
/// Panics if the quantized frame number
///
/// - is negative or
/// - is less than or equal to the current time or
/// - is greater than or equal to the total render duration or
/// - is scheduled by another suspend for the same time
///
/// # Example usage
///
/// ```rust
/// use futures::{executor, join};
/// use futures::FutureExt as _;
/// use std::sync::Arc;
///
/// use web_audio_api::context::BaseAudioContext;
/// use web_audio_api::context::OfflineAudioContext;
/// use web_audio_api::node::{AudioNode, AudioScheduledSourceNode};
///
/// let context = Arc::new(OfflineAudioContext::new(1, 512, 44_100.));
/// let context_clone = Arc::clone(&context);
///
/// let suspend_promise = context.suspend(128. / 44_100.).then(|_| async move {
///     let mut src = context_clone.create_constant_source();
///     src.connect(&context_clone.destination());
///     src.start();
///     context_clone.resume().await;
/// });
///
/// let render_promise = context.start_rendering();
///
/// let buffer = executor::block_on(async move { join!(suspend_promise, render_promise).1 });
/// assert_eq!(buffer.number_of_channels(), 1);
/// assert_eq!(buffer.length(), 512);
/// ```
 Future<void>  suspend({required double suspendTime })=>RustLib.instance.api.webAudioApiContextOfflineAudioContextSuspend(that: this, suspendTime: suspendTime);


            }
            @sealed class OscillatorNodeImpl extends RustOpaque implements OscillatorNode {
                // Not to be used by end users
                OscillatorNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                OscillatorNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_OscillatorNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_OscillatorNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_OscillatorNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeChannelInterpretation(that: this, );


/// Unset the callback to run when the source node has stopped playing
 Future<void>  clearOnended()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeClearOnended(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeClearOnprocessorerror(that: this, );


/// A-rate [`AudioParam`] that defines a transposition according to the
/// frequency, expressed in cents.
///
/// see <https://en.wikipedia.org/wiki/Cent_(music)>
///
/// The final frequency is calculated as follow: frequency * 2^(detune/1200)
 AudioParam get detune=>AudioParamProxyVariantOscillatorNodeDetune(this);


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeFrbOverrideConnect(that: this, dest: dest);


/// A-rate [`AudioParam`] that defines the fundamental frequency of the
/// oscillator, expressed in Hz
///
/// The final frequency is calculated as follow: frequency * 2^(detune/1200)
 AudioParam get frequency=>AudioParamProxyVariantOscillatorNodeFrequency(this);


/// `OscillatorNode` is a source node. A source node is by definition with no input
 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeNumberOfInputs(that: this, );


/// `OscillatorNode` is a mono source node.
 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnEnded({required FutureOr<void> Function(Event) callback })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeSetOnEnded(that: this, callback: callback);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeSetOnProcessorError(that: this, callback: callback);


/// Sets a `PeriodicWave` which describes a waveform to be used by the oscillator.
///
/// Calling this sets the oscillator type to `custom`, once set to `custom`
/// the oscillator cannot be reverted back to a standard waveform.
 Future<void>  setPeriodicWave({required PeriodicWave periodicWave })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeSetPeriodicWave(that: this, periodicWave: periodicWave);


/// Set the oscillator type
///
/// # Arguments
///
/// * `type_` - oscillator type (sine, square, triangle, sawtooth)
///
/// # Panics
///
/// if `type_` is `OscillatorType::Custom`
 Future<void>  setType({required OscillatorType type })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeSetType(that: this, type: type);


 Future<void>  start()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeStart(that: this, );


 Future<void>  startAt({required double when })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeStartAt(that: this, when: when);


 Future<void>  stop()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeStop(that: this, );


 Future<void>  stopAt({required double when })=>RustLib.instance.api.webAudioApiNodeOscillatorNodeStopAt(that: this, when: when);


/// Returns the oscillator type
 Future<OscillatorType>  type()=>RustLib.instance.api.webAudioApiNodeOscillatorNodeType(that: this, );


            }
            @sealed class PannerNodeImpl extends RustOpaque implements PannerNode {
                // Not to be used by end users
                PannerNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                PannerNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_PannerNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_PannerNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_PannerNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodePannerNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodePannerNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodePannerNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodePannerNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodePannerNodeClearOnprocessorerror(that: this, );


 Future<double>  coneInnerAngle()=>RustLib.instance.api.webAudioApiNodePannerNodeConeInnerAngle(that: this, );


 Future<double>  coneOuterAngle()=>RustLib.instance.api.webAudioApiNodePannerNodeConeOuterAngle(that: this, );


 Future<double>  coneOuterGain()=>RustLib.instance.api.webAudioApiNodePannerNodeConeOuterGain(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodePannerNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodePannerNodeDisconnectOutput(that: this, output: output);


 Future<DistanceModelType>  distanceModel()=>RustLib.instance.api.webAudioApiNodePannerNodeDistanceModel(that: this, );


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodePannerNodeFrbOverrideConnect(that: this, dest: dest);


 Future<double>  maxDistance()=>RustLib.instance.api.webAudioApiNodePannerNodeMaxDistance(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodePannerNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodePannerNodeNumberOfOutputs(that: this, );


 AudioParam get orientationX=>AudioParamProxyVariantPannerNodeOrientationX(this);


 AudioParam get orientationY=>AudioParamProxyVariantPannerNodeOrientationY(this);


 AudioParam get orientationZ=>AudioParamProxyVariantPannerNodeOrientationZ(this);


 Future<PanningModelType>  panningModel()=>RustLib.instance.api.webAudioApiNodePannerNodePanningModel(that: this, );


 AudioParam get positionX=>AudioParamProxyVariantPannerNodePositionX(this);


 AudioParam get positionY=>AudioParamProxyVariantPannerNodePositionY(this);


 AudioParam get positionZ=>AudioParamProxyVariantPannerNodePositionZ(this);


 Future<double>  refDistance()=>RustLib.instance.api.webAudioApiNodePannerNodeRefDistance(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodePannerNodeRegistration(that: this, );


 Future<double>  rolloffFactor()=>RustLib.instance.api.webAudioApiNodePannerNodeRolloffFactor(that: this, );


 Future<void>  setChannelCount({required int count })=>RustLib.instance.api.webAudioApiNodePannerNodeSetChannelCount(that: this, count: count);


 Future<void>  setChannelCountMode({required ChannelCountMode mode })=>RustLib.instance.api.webAudioApiNodePannerNodeSetChannelCountMode(that: this, mode: mode);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodePannerNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setConeInnerAngle({required double value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetConeInnerAngle(that: this, value: value);


 Future<void>  setConeOuterAngle({required double value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetConeOuterAngle(that: this, value: value);


/// Set the coneOuterGain attribute
///
/// # Panics
///
/// Panics if the provided value is not in the range [0, 1]
 Future<void>  setConeOuterGain({required double value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetConeOuterGain(that: this, value: value);


 Future<void>  setDistanceModel({required DistanceModelType value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetDistanceModel(that: this, value: value);


/// Set the maxDistance attribute
///
/// # Panics
///
/// Panics if the provided value is negative.
 Future<void>  setMaxDistance({required double value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetMaxDistance(that: this, value: value);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodePannerNodeSetOnProcessorError(that: this, callback: callback);


 Future<void>  setOrientation({required double x , required double y , required double z })=>RustLib.instance.api.webAudioApiNodePannerNodeSetOrientation(that: this, x: x, y: y, z: z);


 Future<void>  setPanningModel({required PanningModelType value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetPanningModel(that: this, value: value);


 Future<void>  setPosition({required double x , required double y , required double z })=>RustLib.instance.api.webAudioApiNodePannerNodeSetPosition(that: this, x: x, y: y, z: z);


/// Set the refDistance attribute
///
/// # Panics
///
/// Panics if the provided value is negative.
 Future<void>  setRefDistance({required double value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetRefDistance(that: this, value: value);


/// Set the rolloffFactor attribute
///
/// # Panics
///
/// Panics if the provided value is negative.
 Future<void>  setRolloffFactor({required double value })=>RustLib.instance.api.webAudioApiNodePannerNodeSetRolloffFactor(that: this, value: value);


            }
            @sealed class PeriodicWaveImpl extends RustOpaque implements PeriodicWave {
                // Not to be used by end users
                PeriodicWaveImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                PeriodicWaveImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_PeriodicWave,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_PeriodicWave,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_PeriodicWavePtr,
                );

                
            }
            @sealed class ScriptProcessorNodeImpl extends RustOpaque implements ScriptProcessorNode {
                // Not to be used by end users
                ScriptProcessorNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                ScriptProcessorNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ScriptProcessorNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ScriptProcessorNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ScriptProcessorNodePtr,
                );

                 Future<int>  bufferSize()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeBufferSize(that: this, );


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeChannelInterpretation(that: this, );


/// Unset the callback to run when the AudioProcessingEvent is dispatched
 Future<void>  clearOnaudioprocess()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeClearOnaudioprocess(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeRegistration(that: this, );


 Future<void>  setChannelCount({required int count })=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeSetChannelCount(that: this, count: count);


 Future<void>  setChannelCountMode({required ChannelCountMode mode })=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeSetChannelCountMode(that: this, mode: mode);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeScriptProcessorNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class StereoPannerNodeImpl extends RustOpaque implements StereoPannerNode {
                // Not to be used by end users
                StereoPannerNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                StereoPannerNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_StereoPannerNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_StereoPannerNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_StereoPannerNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeFrbOverrideConnect(that: this, dest: dest);


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeNumberOfOutputs(that: this, );


/// Returns the pan audio parameter
 AudioParam get pan=>AudioParamProxyVariantStereoPannerNodePan(this);


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeRegistration(that: this, );


 Future<void>  setChannelCount({required int count })=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeSetChannelCount(that: this, count: count);


 Future<void>  setChannelCountMode({required ChannelCountMode mode })=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeSetChannelCountMode(that: this, mode: mode);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeStereoPannerNodeSetOnProcessorError(that: this, callback: callback);


            }
            @sealed class WaveShaperNodeImpl extends RustOpaque implements WaveShaperNode {
                // Not to be used by end users
                WaveShaperNodeImpl.frbInternalDcoDecode(List<dynamic> wire):
                    super.frbInternalDcoDecode(wire, _kStaticData);

                // Not to be used by end users
                WaveShaperNodeImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative):
                    super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

                static final _kStaticData = RustArcStaticData(
                    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_WaveShaperNode,
                    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_WaveShaperNode,
                    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_WaveShaperNodePtr,
                );

                 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeClearOnprocessorerror(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeDisconnectOutput(that: this, output: output);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeFrbOverrideConnect(that: this, dest: dest);


 Future<Float32List?>  curve()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeFrbOverrideCurve(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeNumberOfOutputs(that: this, );


/// Returns the `oversample` faactor of this node
 Future<OverSampleType>  oversample()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeOversample(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeRegistration(that: this, );


/// Update the `channel_count` attribute
 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeSetChannelCount(that: this, v: v);


/// Update the `channel_count_mode` attribute
 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeSetChannelCountMode(that: this, v: v);


/// Update the `channel_interpretation` attribute
 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeSetChannelInterpretation(that: this, v: v);


/// Set the distortion `curve` of this node
///
/// # Arguments
///
/// * `curve` - the desired distortion `curve`
///
/// # Panics
///
/// Panics if a curve has already been given to the source (though `new` or through
/// `set_curve`)
 Future<void>  setCurve({required List<double> curve })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeSetCurve(that: this, curve: curve);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeSetOnProcessorError(that: this, callback: callback);


/// set the `oversample` factor of this node
///
/// # Arguments
///
/// * `oversample` - the desired `OversampleType` variant
 Future<void>  setOversample({required OverSampleType oversample })=>RustLib.instance.api.webAudioApiNodeWaveShaperNodeSetOversample(that: this, oversample: oversample);


            }class AudioParamProxyVariantAudioBufferSourceNodeDetune with SimpleDisposable implements AudioParam {
            final AudioBufferSourceNode _upstream;

            AudioParamProxyVariantAudioBufferSourceNodeDetune(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioBufferSourceNodePlaybackRate with SimpleDisposable implements AudioParam {
            final AudioBufferSourceNode _upstream;

            AudioParamProxyVariantAudioBufferSourceNodePlaybackRate(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerForwardX with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerForwardX(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerForwardY with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerForwardY(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerForwardZ with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerForwardZ(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerPositionX with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerPositionX(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerPositionY with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerPositionY(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerPositionZ with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerPositionZ(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerUpX with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerUpX(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerUpY with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerUpY(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantAudioListenerUpZ with SimpleDisposable implements AudioParam {
            final AudioListener _upstream;

            AudioParamProxyVariantAudioListenerUpZ(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantBiquadFilterNodeDetune with SimpleDisposable implements AudioParam {
            final BiquadFilterNode _upstream;

            AudioParamProxyVariantBiquadFilterNodeDetune(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantBiquadFilterNodeFrequency with SimpleDisposable implements AudioParam {
            final BiquadFilterNode _upstream;

            AudioParamProxyVariantBiquadFilterNodeFrequency(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantBiquadFilterNodeGain with SimpleDisposable implements AudioParam {
            final BiquadFilterNode _upstream;

            AudioParamProxyVariantBiquadFilterNodeGain(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantBiquadFilterNodeQ with SimpleDisposable implements AudioParam {
            final BiquadFilterNode _upstream;

            AudioParamProxyVariantBiquadFilterNodeQ(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantConstantSourceNodeOffset with SimpleDisposable implements AudioParam {
            final ConstantSourceNode _upstream;

            AudioParamProxyVariantConstantSourceNodeOffset(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantDelayNodeDelayTime with SimpleDisposable implements AudioParam {
            final DelayNode _upstream;

            AudioParamProxyVariantDelayNodeDelayTime(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantDynamicsCompressorNodeAttack with SimpleDisposable implements AudioParam {
            final DynamicsCompressorNode _upstream;

            AudioParamProxyVariantDynamicsCompressorNodeAttack(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantDynamicsCompressorNodeKnee with SimpleDisposable implements AudioParam {
            final DynamicsCompressorNode _upstream;

            AudioParamProxyVariantDynamicsCompressorNodeKnee(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantDynamicsCompressorNodeRatio with SimpleDisposable implements AudioParam {
            final DynamicsCompressorNode _upstream;

            AudioParamProxyVariantDynamicsCompressorNodeRatio(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantDynamicsCompressorNodeRelease with SimpleDisposable implements AudioParam {
            final DynamicsCompressorNode _upstream;

            AudioParamProxyVariantDynamicsCompressorNodeRelease(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantDynamicsCompressorNodeThreshold with SimpleDisposable implements AudioParam {
            final DynamicsCompressorNode _upstream;

            AudioParamProxyVariantDynamicsCompressorNodeThreshold(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantGainNodeGain with SimpleDisposable implements AudioParam {
            final GainNode _upstream;

            AudioParamProxyVariantGainNodeGain(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantOscillatorNodeDetune with SimpleDisposable implements AudioParam {
            final OscillatorNode _upstream;

            AudioParamProxyVariantOscillatorNodeDetune(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantOscillatorNodeFrequency with SimpleDisposable implements AudioParam {
            final OscillatorNode _upstream;

            AudioParamProxyVariantOscillatorNodeFrequency(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantPannerNodeOrientationX with SimpleDisposable implements AudioParam {
            final PannerNode _upstream;

            AudioParamProxyVariantPannerNodeOrientationX(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantPannerNodeOrientationY with SimpleDisposable implements AudioParam {
            final PannerNode _upstream;

            AudioParamProxyVariantPannerNodeOrientationY(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantPannerNodeOrientationZ with SimpleDisposable implements AudioParam {
            final PannerNode _upstream;

            AudioParamProxyVariantPannerNodeOrientationZ(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantPannerNodePositionX with SimpleDisposable implements AudioParam {
            final PannerNode _upstream;

            AudioParamProxyVariantPannerNodePositionX(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantPannerNodePositionY with SimpleDisposable implements AudioParam {
            final PannerNode _upstream;

            AudioParamProxyVariantPannerNodePositionY(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantPannerNodePositionZ with SimpleDisposable implements AudioParam {
            final PannerNode _upstream;

            AudioParamProxyVariantPannerNodePositionZ(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class AudioParamProxyVariantStereoPannerNodePan with SimpleDisposable implements AudioParam {
            final StereoPannerNode _upstream;

            AudioParamProxyVariantStereoPannerNodePan(this._upstream);

            /// Current value of the automation rate of the AudioParam
 Future<AutomationRate>  automationRate()=>RustLib.instance.api.webAudioApiAudioParamAutomationRate(that: this, );


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time` and the automation value that would have happened at
/// that time is then propagated for all future time.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelAndHoldAtTime({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(that: this, cancelTime: cancelTime);


/// Cancels all scheduled parameter changes with times greater than or equal
/// to `cancel_time`.
///
/// # Panics
///
/// Will panic if `cancel_time` is negative
 Future<void>  cancelScheduledValues({required double cancelTime })=>RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(that: this, cancelTime: cancelTime);


 Future<void>  channelConfig()=>RustLib.instance.api.webAudioApiAudioParamChannelConfig(that: this, );


/// Represents an integer used to determine how many channels are used when up-mixing and
/// down-mixing connections to any inputs to the node.
 Future<int>  channelCount()=>RustLib.instance.api.webAudioApiAudioParamChannelCount(that: this, );


/// Represents an enumerated value describing the way channels must be matched between the
/// node's inputs and outputs.
 Future<ChannelCountMode>  channelCountMode()=>RustLib.instance.api.webAudioApiAudioParamChannelCountMode(that: this, );


/// Represents an enumerated value describing the meaning of the channels. This interpretation
/// will define how audio up-mixing and down-mixing will happen.
 Future<ChannelInterpretation>  channelInterpretation()=>RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(that: this, );


/// Unset the callback to run when an unhandled exception occurs in the audio processor.
 Future<void>  clearOnprocessorerror()=>RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(that: this, );


 Future<double>  defaultValue()=>RustLib.instance.api.webAudioApiAudioParamDefaultValue(that: this, );


/// Disconnects all outgoing connections from the AudioNode.
 Future<void>  disconnect()=>RustLib.instance.api.webAudioApiAudioParamDisconnect(that: this, );


/// Disconnects all outgoing connections at the given output port from the AudioNode.
///
/// # Panics
///
/// This function will panic when
/// - if the output port is out of bounds for this node
 Future<void>  disconnectOutput({required int output })=>RustLib.instance.api.webAudioApiAudioParamDisconnectOutput(that: this, output: output);


/// Schedules an exponential continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if:
/// - `value` is zero
/// - `end_time` is negative
 Future<void>  exponentialRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<void>  connect({required AudioNode dest })=>RustLib.instance.api.webAudioApiAudioParamFrbOverrideConnect(that: this, dest: dest);


/// Schedules a linear continuous change in parameter value from the
/// previous scheduled parameter value to the given value.
///
/// # Panics
///
/// Will panic if `end_time` is negative
 Future<void>  linearRampToValueAtTime({required double value , required double endTime })=>RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(that: this, value: value, endTime: endTime);


 Future<double>  maxValue()=>RustLib.instance.api.webAudioApiAudioParamMaxValue(that: this, );


 Future<double>  minValue()=>RustLib.instance.api.webAudioApiAudioParamMinValue(that: this, );


 Future<int>  numberOfInputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(that: this, );


 Future<int>  numberOfOutputs()=>RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(that: this, );


 Future<void>  registration()=>RustLib.instance.api.webAudioApiAudioParamRegistration(that: this, );


/// Update the current value of the automation rate of the AudioParam
///
/// # Panics
///
/// Some nodes have automation rate constraints and may panic when updating the value.
 Future<void>  setAutomationRate({required AutomationRate value })=>RustLib.instance.api.webAudioApiAudioParamSetAutomationRate(that: this, value: value);


 Future<void>  setChannelCount({required int v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCount(that: this, v: v);


 Future<void>  setChannelCountMode({required ChannelCountMode v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelCountMode(that: this, v: v);


 Future<void>  setChannelInterpretation({required ChannelInterpretation v })=>RustLib.instance.api.webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);


 Future<void>  setOnProcessorError({required FutureOr<void> Function(String) callback })=>RustLib.instance.api.webAudioApiAudioParamSetOnProcessorError(that: this, callback: callback);


/// Start exponentially approaching the target value at the given time with
/// a rate having the given time constant.
///
/// # Panics
///
/// Will panic if:
/// - `start_time` is negative
/// - `time_constant` is negative
 Future<void>  setTargetAtTime({required double value , required double startTime , required double timeConstant })=>RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(that: this, value: value, startTime: startTime, timeConstant: timeConstant);


/// Set the value of the `AudioParam`.
///
/// Is equivalent to calling the `set_value_at_time` method with the current
/// AudioContext's currentTime
  set value(double value)=>RustLib.instance.api.webAudioApiAudioParamSetValue(that: this, value: value);


/// Schedules a parameter value change at the given time.
///
/// # Panics
///
/// Will panic if `start_time` is negative
 Future<void>  setValueAtTime({required double value , required double startTime })=>RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(that: this, value: value, startTime: startTime);


/// Sets an array of arbitrary parameter values starting at the given time
/// for the given duration.
///
/// # Panics
///
/// Will panic if:
/// - `value` length is less than 2
/// - `start_time` is negative
/// - `duration` is negative or equal to zero
 Future<void>  setValueCurveAtTime({required List<double> values , required double startTime , required double duration })=>RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(that: this, values: values, startTime: startTime, duration: duration);


/// Retrieve the current value of the `AudioParam`.
 double get value=>RustLib.instance.api.webAudioApiAudioParamValue(that: this, );


        }class MediaStreamProxyVariantMediaStreamAudioDestinationNodeStream with SimpleDisposable implements MediaStream {
            final MediaStreamAudioDestinationNode _upstream;

            MediaStreamProxyVariantMediaStreamAudioDestinationNodeStream(this._upstream);

             Future<List<MediaStreamTrack>>  getTracks()=>RustLib.instance.api.webAudioApiMediaStreamsMediaStreamFrbOverrideGetTracks(that: this, );


        }