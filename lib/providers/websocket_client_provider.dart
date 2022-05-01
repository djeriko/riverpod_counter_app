import 'package:riverpod/riverpod.dart';
import 'package:riverpod_counter_app/data/fake_websocket_client.dart';
import 'package:riverpod_counter_app/data/websocket_client.dart';

final websocketClientProvider = Provider<WebsocketClient>(
  (ref) {
    return FakeWebsocketClient();
  },
);
