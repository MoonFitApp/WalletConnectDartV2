import 'package:event/event.dart';
import 'package:walletconnect_dart_v2/apis/auth_api/i_auth_engine_common.dart';
import 'package:walletconnect_dart_v2/apis/auth_api/models/auth_client_events.dart';
import 'package:walletconnect_dart_v2/apis/auth_api/models/auth_client_models.dart';
import 'package:walletconnect_dart_v2/apis/core/store/i_generic_store.dart';

abstract class IAuthEngineApp extends IAuthEngineCommon {
  abstract final Event<AuthResponse> onAuthResponse;

  abstract final IGenericStore<StoredCacao> completeRequests;

  // request wallet authentication
  Future<AuthRequestResponse> requestAuth({
    required AuthRequestParams params,
    String? pairingTopic,
  });
}
