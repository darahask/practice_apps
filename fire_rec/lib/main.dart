import 'dart:async';
import 'dart:io' as io;
import 'package:audioplayers/audioplayers.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_recorder/flutter_audio_recorder.dart';
import 'package:path_provider/path_provider.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

void main() {
  return runApp(new MyApp());
}

class MyApp extends StatefulWidget {

  final LocalFileSystem localFileSystem;

  MyApp({localFileSystem})
      : this.localFileSystem = localFileSystem ?? LocalFileSystem();

  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  FlutterAudioRecorder _recorder;
  Recording _current;
  RecordingStatus _currentStatus = RecordingStatus.Unset;
  bool loading = false;
  String value;
  var key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ModalProgressHUD(
        inAsyncCall: loading,
        child: new Scaffold(
          key: key,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Recorder',
                style: TextStyle(letterSpacing: 1),
              ),
            ),
          ),
          body: Center(
            child: new Padding(
              padding: new EdgeInsets.all(8.0),
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (v){
                          value = v;
                        },
                        decoration: InputDecoration(
                          hintText: 'Type your name'
                        ),
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new FlatButton(
                            onPressed: () {
                              switch (_currentStatus) {
                                case RecordingStatus.Initialized:
                                  {
                                    _start();
                                    break;
                                  }
                                case RecordingStatus.Recording:
                                  {
                                    _pause();
                                    break;
                                  }
                                case RecordingStatus.Paused:
                                  {
                                    _resume();
                                    break;
                                  }
                                case RecordingStatus.Stopped:
                                  {
                                    _init();
                                    break;
                                  }
                                default:
                                  break;
                              }
                            },
                            child: _buildText(
                              _currentStatus,
                            ),
                            color: Colors.tealAccent,
                          ),
                        ),
                        new FlatButton(
                          onPressed:
                          _currentStatus != RecordingStatus.Unset ? _stop : null,
                          child:
                          new Text("Stop", style: TextStyle(color: Colors.black)),
                          color: Colors.tealAccent,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        new FlatButton(
                          onPressed: onPlayAudio,
                          child:
                          new Text("Play", style: TextStyle(color: Colors.black)),
                          color: Colors.tealAccent,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("${_current?.path}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Format: ${_current?.audioFormat}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(
                          "Audio recording duration : ${_current?.duration.toString()}"),
                    )
                  ]),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async{
              if(value != null && value.isNotEmpty){
                setState(() {
                  loading = true;
                });
//                String subDir = _current.path.split('/').last;
                var ref = FirebaseStorage.instance.ref().child('recordings/'+value+'_'+DateTime.now().millisecondsSinceEpoch.toString());
                File file = widget.localFileSystem.file(_current.path);
                var uploadTask = ref.putFile(file);
                await uploadTask.onComplete;
                setState(() {
                  loading = false;
                });
              }else{
                var x = SnackBar(content: Text('Please Enter yor name'));
                key.currentState.showSnackBar(x);
              }
            },
            child: Icon(Icons.file_upload),
          ),
        ),
      ),
    );
  }

  _init() async {
    try {
      if (await FlutterAudioRecorder.hasPermissions) {
        String customPath = '/flutter_audio_recorder_';
        io.Directory appDocDirectory;
//        io.Directory appDocDirectory = await getApplicationDocumentsDirectory();
        if (io.Platform.isIOS) {
          appDocDirectory = await getApplicationDocumentsDirectory();
        } else {
          appDocDirectory = await getExternalStorageDirectory();
        }

        // can add extension like ".mp4" ".wav" ".m4a" ".aac"
        customPath = appDocDirectory.path +
            customPath +
            DateTime.now().millisecondsSinceEpoch.toString();

        // .wav <---> AudioFormat.WAV
        // .mp4 .m4a .aac <---> AudioFormat.AAC
        // AudioFormat is optional, if given value, will overwrite path extension when there is conflicts.
        _recorder =
            FlutterAudioRecorder(customPath, audioFormat: AudioFormat.WAV);

        await _recorder.initialized;
        // after initialization
        var current = await _recorder.current(channel: 0);
        print(current);
        // should be "Initialized", if all working fine
        setState(() {
          _current = current;
          _currentStatus = current.status;
          print(_currentStatus);
        });
      } else {
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("You must accept permissions")));
      }
    } catch (e) {
      print(e);
    }
  }

  _start() async {
    try {
      await _recorder.start();
      var recording = await _recorder.current(channel: 0);
      setState(() {
        _current = recording;
      });

      Timer(Duration(milliseconds: 3500), ()async{
        var result = await _recorder.stop();
        print("Stop recording: ${result.path}");
        print("Stop recording: ${result.duration}");
        File file = widget.localFileSystem.file(result.path);
        print("File length: ${await file.length()}");
        setState(() {
          _current = result;
          _currentStatus = _current.status;
        });
      });

      const tick = const Duration(milliseconds: 50);
      new Timer.periodic(tick, (Timer t) async {
        if (_currentStatus == RecordingStatus.Stopped) {
          t.cancel();
        }

        var current = await _recorder.current(channel: 0);
        // print(current.status);
        setState(() {
          _current = current;
          _currentStatus = _current.status;
        });
      });
    } catch (e) {
      print(e);
    }
  }

  _resume() async {
    await _recorder.resume();
    setState(() {});
  }

  _pause() async {
    await _recorder.pause();
    setState(() {});
  }

  _stop() async {
    var result = await _recorder.stop();
    print("Stop recording: ${result.path}");
    print("Stop recording: ${result.duration}");
    File file = widget.localFileSystem.file(result.path);
    print("File length: ${await file.length()}");
    setState(() {
      _current = result;
      _currentStatus = _current.status;
    });
  }

  Widget _buildText(RecordingStatus status) {
    var text = "";
    switch (_currentStatus) {
      case RecordingStatus.Initialized:
        {
          text = 'Start';
          break;
        }
      case RecordingStatus.Recording:
        {
          text = 'Recording';
          break;
        }
      case RecordingStatus.Paused:
        {
          text = 'Resume';
          break;
        }
      case RecordingStatus.Stopped:
        {
          text = 'Init';
          break;
        }
      default:
        break;
    }
    return Text(
      text,
      style: TextStyle(color: Colors.black),
    );
  }

  void onPlayAudio() async {
    AudioPlayer audioPlayer = AudioPlayer();
    await audioPlayer.play(_current.path, isLocal: true);
  }

}