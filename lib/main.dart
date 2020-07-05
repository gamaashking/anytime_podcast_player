// Copyright 2020 Ben Hills. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:anytime/ui/anytime_podcast_app.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'core/chrome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.level = Level.FINE;

  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: - ${record.time}: ${record.loggerName}: ${record.message}');
  });

  Chrome.transparentLight();

  runApp(AnytimePodcastApp());
}
