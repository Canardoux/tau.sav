import '../tau.dart';
import 'webaudio.dart';

class MediaElement extends Element {
  String src = '';
  String crossorigin = '';
  // To suppress missing implicit constructor warnings.
  //factory MediaElement._() {
  //}

  /* ctor */ MediaElement({required this.src, required this.crossorigin});

  ///
  /// Constructor instantiated by the DOM when a custom element has been created.
  ///
  /// This can only be called by subclasses from their created constructor.
  ///
  /*
  MediaElement.created() : super.created();
  */

  static const int haveCurrentData = 2;

  static const int haveEnoughData = 4;

  static const int haveFutureData = 3;

  static const int haveMetadata = 1;

  static const int haveNothing = 0;

  static const int networkEmpty = 0;

  static const int networkIdle = 1;

  static const int networkLoading = 2;

  static const int networkNoSource = 3;

  /*

  AudioTrackList? get audioTracks native;

  bool get autoplay native;

  set autoplay(bool value) native;

  TimeRanges get buffered native;

  bool get controls native;

  set controls(bool value) native;

  DomTokenList? get controlsList native;

  String? get crossOrigin native;

  set crossOrigin(String? value) native;

  String get currentSrc native;

  num get currentTime native;

  set currentTime(num value) native;

  bool? get defaultMuted native;

  set defaultMuted(bool? value) native;

  num get defaultPlaybackRate native;

  set defaultPlaybackRate(num value) native;

  bool get disableRemotePlayback native;

  set disableRemotePlayback(bool value) native;

  num get duration native;

  bool get ended native;

  MediaError? get error native;

  bool get loop native;

  set loop(bool value) native;

  MediaKeys? get mediaKeys native;

  bool get muted native;

  set muted(bool value) native;

  int? get networkState native;

  bool get paused native;

  num get playbackRate native;

  set playbackRate(num value) native;

  TimeRanges get played native;

  String get preload native;

  set preload(String value) native;

  int get readyState native;

  RemotePlayback? get remote native;

  TimeRanges get seekable native;

  bool get seeking native;

  String? get sinkId native;

  String get src native;

  set src(String value) native;

  MediaStream? get srcObject native;

  set srcObject(MediaStream? value) native;

  TextTrackList? get textTracks native;

  VideoTrackList? get videoTracks native;

  num get volume native;

  set volume(num value) native;

  @JSName('webkitAudioDecodedByteCount')
  @SupportedBrowser(SupportedBrowser.CHROME)
  @SupportedBrowser(SupportedBrowser.SAFARI)
  int? get audioDecodedByteCount native;

  @JSName('webkitVideoDecodedByteCount')
  @SupportedBrowser(SupportedBrowser.CHROME)
  @SupportedBrowser(SupportedBrowser.SAFARI)
  int? get videoDecodedByteCount native;

  TextTrack addTextTrack(String kind, [String? label, String? language]) native;

  @Unstable()
  String canPlayType(String? type, [String? keySystem]) native;

  MediaStream captureStream() native;

  void load() native;

  void pause() native;

  Future play() => promiseToFuture(JS("", "#.play()", this));

  Future setMediaKeys(MediaKeys? mediaKeys) =>
      promiseToFuture(JS("", "#.setMediaKeys(#)", this, mediaKeys));

  Future setSinkId(String sinkId) =>
      promiseToFuture(JS("", "#.setSinkId(#)", this, sinkId));
      */
}
