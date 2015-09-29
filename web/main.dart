// Copyright (c) 2015, AVOIVO. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:logging/logging.dart';
import 'package:coveralls/app.dart' as app;

main() async{

  Logger.root.level = Level.FINEST;
  Logger.root.onRecord.listen((LogRecord r) { print(r.message); });

  await app.main();
  
}
