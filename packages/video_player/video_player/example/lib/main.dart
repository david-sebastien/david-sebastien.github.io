import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(
    MaterialApp(
      home: _App(),
    ),
  );
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: const ValueKey<String>('home_page'),
        appBar: AppBar(
          title: const Text('Choral Ecole du Centre'),
          actions: <Widget>[
            IconButton(
              key: const ValueKey<String>('push_tab'),
              icon: const Icon(Icons.navigation),
              onPressed: () {
                Navigator.push<_PlayerVideoAndPopPage>(
                  context,
                  MaterialPageRoute<_PlayerVideoAndPopPage>(
                    builder: (BuildContext context) => _PlayerVideoAndPopPage(),
                  ),
                );
              },
            )
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud),
                text: 'Remote',
              ),
              Tab(icon: Icon(Icons.insert_drive_file), text: 'Asset'),
              Tab(icon: Icon(Icons.list), text: 'List example'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _BumbleBeeRemoteVideo(),
            _ButterFlyAssetVideo(),
            _ButterFlyAssetVideoInList(),
          ],
        ),
      ),
    );
  }
}

class _ButterFlyAssetVideoInList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const _ExampleCard(title: 'Item a'),
        const _ExampleCard(title: 'Item b'),
        const _ExampleCard(title: 'Item c'),
        const _ExampleCard(title: 'Item d'),
        const _ExampleCard(title: 'Item e'),
        const _ExampleCard(title: 'Item f'),
        const _ExampleCard(title: 'Item g'),
        Card(
            child: Column(children: <Widget>[
          Column(
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.cake),
                title: Text('Video video'),
              ),
              Stack(
                  alignment: FractionalOffset.bottomRight +
                      const FractionalOffset(-0.1, -0.1),
                  children: <Widget>[
                    _ButterFlyAssetVideo(),
                    Image.asset('assets/flutter-mark-square-64.png'),
                  ]),
            ],
          ),
        ])),
        const _ExampleCard(title: 'Item h'),
        const _ExampleCard(title: 'Item i'),
        const _ExampleCard(title: 'Item j'),
        const _ExampleCard(title: 'Item k'),
        const _ExampleCard(title: 'Item l'),
      ],
    );
  }
}

/// A filler card to show the video in a list of scrolling contents.
class _ExampleCard extends StatelessWidget {
  const _ExampleCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.airline_seat_flat_angled),
            title: Text(title),
          ),
          ButtonBar(
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {
                  /* ... */
                },
              ),
              TextButton(
                child: const Text('SELL TICKETS'),
                onPressed: () {
                  /* ... */
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ButterFlyAssetVideo extends StatefulWidget {
  @override
  _ButterFlyAssetVideoState createState() => _ButterFlyAssetVideoState();
}

class _ButterFlyAssetVideoState extends State<_ButterFlyAssetVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Butterfly-209_crop.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double width = 90.0;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20.0),
          ),
          const Text('With assets mp4'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: width,
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        VideoPlayer(
                          _controller,
                        ),
                        _ControlsOverlay(controller: _controller),
                        VideoProgressIndicator(_controller,
                            allowScrubbing: true),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: width,
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: Stack(
                      children: [
                        Container(color: Colors.red),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BumbleBeeRemoteVideo extends StatefulWidget {
  @override
  _BumbleBeeRemoteVideoState createState() => _BumbleBeeRemoteVideoState();
}

class _BumbleBeeRemoteVideoState extends State<_BumbleBeeRemoteVideo> {
  late VideoPlayerController _controller;

  Future<ClosedCaptionFile> _loadCaptions() async {
    final String fileContents = await DefaultAssetBundle.of(context)
        .loadString('assets/bumble_bee_captions.vtt');
    return WebVTTCaptionFile(
        fileContents); // For vtt files, use WebVTTCaptionFile
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://media-cdn-us-west-2.gopro.com/a721892c-dee9-49c8-b1ef-32b78d3ea3a8/2168291584557188797/high_res_proxy_mp4/default/1.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA3OOFXGVAJOROFQMK%2F20220711%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220711T105837Z&X-Amz-Expires=3600&X-Amz-Security-Token=FwoGZXIvYXdzEBwaDCjFE2XnfD5hVnaN5SKSBNgxNiHraxqbhGKOkOrnFzL9nBWkSjBP6JiBNPIrfysPCv38xLipUxeYZaL9D2mNcsozn%2BKt33tIw001BBKXwMIfiTGhr7WsZtKO4THUzXcvZ%2FZRDvDM0rOH4c7U%2FOyv9j8UzTb%2BIZQb5bQSGoqMYhovXeHcl2cAebu%2FNXpKXX4PxUE7c%2F0fv9yN9s%2BMI%2FkVapZALNkrkWWfwy9h6P8mwBodlmdoDMdD%2F9mZYNxIDL%2FcN6nwaxtuuwZiTKpq8yXh3slG27pl%2FrDE%2BAABC7sXKpBHE0o%2BlbBTQpxM2APgdDQW0lFVmBMwPHK5ggrRW3anhWF%2FA5yiJN8MCN01K8lHPhYoLMr97xXwsvk9NVPAQJGFRFDLSGlCAw489rP%2BCFCVNmJIIqUYvmf4HALTLL5iSReS2dHvC8tEk%2B3ayPVMhpvzAixFjAOjXoNMYgg5NhTzoH7d8%2FDiYWqXcr3cXAWVtPQzENGt5N34Tl6OI%2BwSZbngmyrt5%2BaIP7xa743jdbZ4zGKvM4nLub8HeMaTMeOXrM9Mfe3UO9YuMnTnOcactbFVU7NHp7Gowg9fjVZvIp8tD1tx3f47lWN570bd%2BTRBlASmI5VOeyXsWvN0ID0gneP%2BtTyUNTbJcFkPblQZ6wEEWXUcg7xXOLqAMLB4ZGViZbCWKmr3%2FJturno%2FgLIKs2Qz%2F9R1iUfjWQh2hmyg5QZ5wXtNKMT0r5YGMipSKQydnRd5UdEOuVOWbIp86Rm4qv16OGXFTRnw83nVYErPj1fmoN374F4%3D&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3B%20filename%3DGH010311.MP4%3B&X-Amz-Signature=004eba3f89df5b1d8c124f200d8e1c8a538fce6c240f9a6fb4fb4058482722b5',
      closedCaptionFile: _loadCaptions(),
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(padding: const EdgeInsets.only(top: 20.0)),
          const Text('With remote mp4'),
          Container(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  ClosedCaption(text: _controller.value.caption.text),
                  _ControlsOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration(milliseconds: 0),
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        Align(
          alignment: Alignment.topLeft,
          child: PopupMenuButton<Duration>(
            initialValue: controller.value.captionOffset,
            tooltip: 'Caption Offset',
            onSelected: (Duration delay) {
              controller.setCaptionOffset(delay);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<Duration>>[
                for (final Duration offsetDuration in _exampleCaptionOffsets)
                  PopupMenuItem<Duration>(
                    value: offsetDuration,
                    child: Text('${offsetDuration.inMilliseconds}ms'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.captionOffset.inMilliseconds}ms'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (double speed) {
              controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<double>>[
                for (final double speed in _examplePlaybackRates)
                  PopupMenuItem<double>(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }
}

class _PlayerVideoAndPopPage extends StatefulWidget {
  @override
  _PlayerVideoAndPopPageState createState() => _PlayerVideoAndPopPageState();
}

class _PlayerVideoAndPopPageState extends State<_PlayerVideoAndPopPage> {
  late VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset('assets/Butterfly-209.mp4');
    _videoPlayerController.addListener(() {
      if (startedPlaying && !_videoPlayerController.value.isPlaying) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Center(
        child: FutureBuilder<bool>(
          future: started(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data == true) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              );
            } else {
              return const Text('waiting for video to load');
            }
          },
        ),
      ),
    );
  }
}
