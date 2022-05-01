import 'package:riverpod/riverpod.dart';
import 'package:riverpod_counter_app/providers/websocket_client_provider.dart';

final counterProvider = StreamProvider.family<int, int>((ref, start) {
  final websocketClient = ref.watch(websocketClientProvider);
  return websocketClient.getCounterStream(start);
});
