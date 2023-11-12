// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiServices extends ApiServices {
  _$ApiServices([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiServices;

  @override
  Future<Response<dynamic>> getAllCampaignsByCategories(String? queries) {
    final Uri $url = Uri.parse(
        'databases/652bc7f26602bddc2f4a/collections/6533c53f27828417727d/documents');
    final Map<String, dynamic> $params = <String, dynamic>{
      'queries[]': queries
    };
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
      'X-Appwrite-Key':
          '02bc64055f82bc9b5f3a98dd5403be59234729bdf9efe3d9bb8210b2c0d133c76347938a33ae6e19c79025b8fb6de7fa843fc2037f5675f8ac7abc2322daec06d069f0b7cd8a18cb6bf04e1c47bfc219fc5cd8b841d88f314bc982f5ad0544c29887e74b1fb7031e332acb3d88f4ae2351eeae3682629bfc468cff41e6290610',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllCampaigns(String? queries) {
    final Uri $url = Uri.parse(
        'databases/652bc7f26602bddc2f4a/collections/6533c53f27828417727d/documents');
    final Map<String, dynamic> $params = <String, dynamic>{
      'queries[]': queries
    };
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
      'X-Appwrite-Key':
          '02bc64055f82bc9b5f3a98dd5403be59234729bdf9efe3d9bb8210b2c0d133c76347938a33ae6e19c79025b8fb6de7fa843fc2037f5675f8ac7abc2322daec06d069f0b7cd8a18cb6bf04e1c47bfc219fc5cd8b841d88f314bc982f5ad0544c29887e74b1fb7031e332acb3d88f4ae2351eeae3682629bfc468cff41e6290610',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCategories() {
    final Uri $url = Uri.parse(
        'databases/652bc7f26602bddc2f4a/collections/6533be7558e38f4d949d/documents');
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
      'X-Appwrite-Key':
          '02bc64055f82bc9b5f3a98dd5403be59234729bdf9efe3d9bb8210b2c0d133c76347938a33ae6e19c79025b8fb6de7fa843fc2037f5675f8ac7abc2322daec06d069f0b7cd8a18cb6bf04e1c47bfc219fc5cd8b841d88f314bc982f5ad0544c29887e74b1fb7031e332acb3d88f4ae2351eeae3682629bfc468cff41e6290610',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCarousel() {
    final Uri $url = Uri.parse(
        'databases/652bc7f26602bddc2f4a/collections/653a5e0cd286c5903643/documents');
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
      'X-Appwrite-Key':
          '02bc64055f82bc9b5f3a98dd5403be59234729bdf9efe3d9bb8210b2c0d133c76347938a33ae6e19c79025b8fb6de7fa843fc2037f5675f8ac7abc2322daec06d069f0b7cd8a18cb6bf04e1c47bfc219fc5cd8b841d88f314bc982f5ad0544c29887e74b1fb7031e332acb3d88f4ae2351eeae3682629bfc468cff41e6290610',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAccount(String cookieValue) {
    final Uri $url = Uri.parse('account');
    final Map<String, String> $headers = {
      'Cookie': cookieValue,
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getEmailSession(
    String sessionId,
    String cookieValue,
  ) {
    final Uri $url = Uri.parse('account/sessions/${sessionId}');
    final Map<String, String> $headers = {
      'Cookie': cookieValue,
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createEmailSession(
      EmailSessionRequestDTO emailSessionRequestDTO) {
    final Uri $url = Uri.parse('account/sessions/email');
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
    };
    final $body = emailSessionRequestDTO;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteEmailSession(
    String sessionId,
    String cookieValue,
  ) {
    final Uri $url = Uri.parse('account/sessions/${sessionId}');
    final Map<String, String> $headers = {
      'Cookie': cookieValue,
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> userRegister(
      EmailRegisterRequestDTO emailRegisterRequestDTO) {
    final Uri $url = Uri.parse('account');
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
    };
    final $body = emailRegisterRequestDTO;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> saveUserProfileDoc(
    String databaseId,
    String collectionId,
    String cookieValue,
    UserRegisterDocRequestDTO userRegisterDocRequestDTO,
  ) {
    final Uri $url = Uri.parse(
        'databases/${databaseId}/collections/${collectionId}/documents');
    final Map<String, String> $headers = {
      'Cookie': cookieValue,
      'Accept': 'application/json',
      'X-Appwrite-Project': '6526850f77b1a0e42833',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
    };
    final $body = userRegisterDocRequestDTO;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCounter(String documentId) {
    final Uri $url = Uri.parse(
        'databases/64aa86f05fa0d48d76ff/collections/64aa87186f6e663fc87a/documents/${documentId}');
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Key':
          '7cd6d6df8450843baab9c47046573c63fd753e70d89c8223e420cb1ccf7854ee73a93170bef6af6a31db8a0bad67d903de0bd2bf7ffb059123f4edf8b0dec18bfc6bb8e2ecd42be0d04793cc792a276274fff9000997331a1a755c4934e4e0994da5a58b3bec0d1cdb5c3c2f9c70030fcddbc15fd659b74d2afe044472611ee3',
      'X-Appwrite-Project': '64aa86334bd6c9d9678f',
      'Content-Type': 'application/json',
      'X-Appwrite-Response-Format': '1.4.0',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateCounter(
    String documentId,
    CounterDocumentRequestDTO counterDocumentRequestDTO,
  ) {
    final Uri $url = Uri.parse(
        'databases/64aa86f05fa0d48d76ff/collections/64aa87186f6e663fc87a/documents/${documentId}');
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'X-Appwrite-Key':
          '7cd6d6df8450843baab9c47046573c63fd753e70d89c8223e420cb1ccf7854ee73a93170bef6af6a31db8a0bad67d903de0bd2bf7ffb059123f4edf8b0dec18bfc6bb8e2ecd42be0d04793cc792a276274fff9000997331a1a755c4934e4e0994da5a58b3bec0d1cdb5c3c2f9c70030fcddbc15fd659b74d2afe044472611ee3',
      'X-Appwrite-Project': '64aa86334bd6c9d9678f',
    };
    final $body = counterDocumentRequestDTO;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
