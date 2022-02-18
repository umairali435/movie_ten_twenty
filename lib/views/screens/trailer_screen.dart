import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/routes/app_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerScreen extends StatefulHookConsumerWidget {
  const TrailerScreen();
  @override
  _PlayYTVideoState createState() => _PlayYTVideoState();
}

class _PlayYTVideoState extends ConsumerState<TrailerScreen> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _videoMetaData;

  bool _isPlayerReady = false;
  late PlayerState _playerState;

  var videoId;
  @override
  void didChangeDependencies() {
    final trailerUrl = ref.watch(selectedUrlProvider);
    _controller = YoutubePlayerController(
      initialVideoId: trailerUrl!,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        loop: false,
        isLive: false,
        forceHD: false,
      ),
    );
    _controller.toggleFullScreenMode();
    super.didChangeDependencies();
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      log('message');
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: YoutubePlayer(
            controller: _controller,
            aspectRatio: 16 / 9,
            showVideoProgressIndicator: true,
            progressColors: ProgressBarColors(
              playedColor: Colors.white,
              handleColor: Colors.white,
            ),
            onReady: () {
              _controller.addListener(listener);
            },
            onEnded: (d) {
              _controller.toggleFullScreenMode();
              AppRouter.pop();
            },
          ),
        ),
        SafeArea(
          child: IconButton(
              onPressed: () {
                if (_controller.value.isFullScreen) {
                  _controller.toggleFullScreenMode();
                }
                AppRouter.pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
      ],
    ));
  }
}
