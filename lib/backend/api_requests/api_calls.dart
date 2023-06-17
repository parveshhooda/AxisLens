import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetIssueDetailsCall {
  static Future<ApiCallResponse> call({
    dynamic? statusJson,
  }) {
    final status = _serializeJson(statusJson);

    return ApiManager.instance.makeApiCall(
      callName: 'getIssueDetails',
      apiUrl: 'https://breaktheapp.atlassian.net/rest/api/3/issue/BTA-2',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic bmlraGlsQG5pa2hpbG1pc2FsLmNvbTpBVEFUVDN4RmZHRjBXcTk0T3ZQazZDZEUxYTVWWmtjNXlpWWVBenlqQnZFMTdmVmdXTFRTeGV1RldrdlMxaUZaNVVVSTRKMmdsSDZNTDlJbnFoNVV3a1ZVS0tMRVJwcFdGNzdidHRDWW5fYUtxNmhFekNfVGR6U3cxbWFuRnVwLV9NVnJidUdmVlV5S0VuQmJfMTF6a3NrN3NreTA4c09ubjF0U3llQlB1UVpnUU5TQ1RtTDg2WjA9OUYzNkMyMzQ=',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  static dynamic issuestatus(dynamic response) => getJsonField(
        response,
        r'''$.fields.status.name''',
      );
  static dynamic issueid(dynamic response) => getJsonField(
        response,
        r'''$.key''',
      );
  static dynamic issuesummary(dynamic response) => getJsonField(
        response,
        r'''$.fields.summary''',
      );
  static dynamic issuetext(dynamic response) => getJsonField(
        response,
        r'''$.fields.description.content[:].content[:].text''',
        true,
      );
  static dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.fields.priority.name''',
      );
}

class GetIssuesCall {
  static Future<ApiCallResponse> call({
    int? empid,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getIssues',
      apiUrl:
          'https://breaktheapp.atlassian.net/rest/api/3/search?jql=status%20in%20(Raised,Accepted,Rejected,%22Work%20In%20Progress%22)%20AND%20%22EID%5BNumber%5D%22%20=%20${empid}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic bmlraGlsQG5pa2hpbG1pc2FsLmNvbTpBVEFUVDN4RmZHRjBXcTk0T3ZQazZDZEUxYTVWWmtjNXlpWWVBenlqQnZFMTdmVmdXTFRTeGV1RldrdlMxaUZaNVVVSTRKMmdsSDZNTDlJbnFoNVV3a1ZVS0tMRVJwcFdGNzdidHRDWW5fYUtxNmhFekNfVGR6U3cxbWFuRnVwLV9NVnJidUdmVlV5S0VuQmJfMTF6a3NrN3NreTA4c09ubjF0U3llQlB1UVpnUU5TQ1RtTDg2WjA9OUYzNkMyMzQ=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic issuestatus(dynamic response) => getJsonField(
        response,
        r'''$.issues[:].fields.status.name''',
      );
  static dynamic issuetitle(dynamic response) => getJsonField(
        response,
        r'''$.issues[:].fields.summary''',
      );
  static dynamic issueslist(dynamic response) => getJsonField(
        response,
        r'''$.issues[:]''',
        true,
      );
  static dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.total''',
      );
}

class GetAcceptedIssuesCall {
  static Future<ApiCallResponse> call({
    int? empid,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getAcceptedIssues',
      apiUrl:
          'https://breaktheapp.atlassian.net/rest/api/3/search?jql=status%20in%20(Accepted)%20AND%20%22EID%5BNumber%5D%22%20=%20${empid}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic bmlraGlsQG5pa2hpbG1pc2FsLmNvbTpBVEFUVDN4RmZHRjBXcTk0T3ZQazZDZEUxYTVWWmtjNXlpWWVBenlqQnZFMTdmVmdXTFRTeGV1RldrdlMxaUZaNVVVSTRKMmdsSDZNTDlJbnFoNVV3a1ZVS0tMRVJwcFdGNzdidHRDWW5fYUtxNmhFekNfVGR6U3cxbWFuRnVwLV9NVnJidUdmVlV5S0VuQmJfMTF6a3NrN3NreTA4c09ubjF0U3llQlB1UVpnUU5TQ1RtTDg2WjA9OUYzNkMyMzQ=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic issuestatus(dynamic response) => getJsonField(
        response,
        r'''$.issues[:].fields.status.name''',
        true,
      );
  static dynamic issuetitle(dynamic response) => getJsonField(
        response,
        r'''$.issues[:].fields.summary''',
        true,
      );
  static dynamic issueslist(dynamic response) => getJsonField(
        response,
        r'''$.issues[:]''',
        true,
      );
  static dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.total''',
      );
  static dynamic priorities(dynamic response) => getJsonField(
        response,
        r'''$.issues[:].fields.priority.name''',
        true,
      );
  static dynamic timestamp(dynamic response) => getJsonField(
        response,
        r'''$.issues[:].fields.created''',
        true,
      );
  static dynamic priorityList(dynamic response) => getJsonField(
        response,
        r'''$.issues[:].fields.customfield_10004.value''',
        true,
      );
}

class CreateIssueCall {
  static Future<ApiCallResponse> call({
    int? empid,
    String? summary = '',
    String? description = '',
  }) {
    final body = '''
{
  "fields": {
    "issuetype": {
      "id": "10001"
    },
    "project": {
      "id": "10000"
    },
    "labels": [
      "Experience"
    ],
    "description": {
      "version": 1,
      "type": "doc",
      "content": [
        {
          "type": "paragraph",
          "content": [
            {
              "type": "text",
              "text": "${description}"
            }
          ]
        }
      ]
    },
    "summary": "${summary}",
    "customfield_10004": {
      "self": "https://breaktheapp.atlassian.net/rest/api/3/customFieldOption/10001",
      "value": "Significant / Large",
      "id": "10001"
    },
    "customfield_10039": ${empid}
  },
  "update": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createIssue',
      apiUrl: 'https://breaktheapp.atlassian.net/rest/api/3/issue',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic bmlraGlsQG5pa2hpbG1pc2FsLmNvbTpBVEFUVDN4RmZHRjBXcTk0T3ZQazZDZEUxYTVWWmtjNXlpWWVBenlqQnZFMTdmVmdXTFRTeGV1RldrdlMxaUZaNVVVSTRKMmdsSDZNTDlJbnFoNVV3a1ZVS0tMRVJwcFdGNzdidHRDWW5fYUtxNmhFekNfVGR6U3cxbWFuRnVwLV9NVnJidUdmVlV5S0VuQmJfMTF6a3NrN3NreTA4c09ubjF0U3llQlB1UVpnUU5TQ1RtTDg2WjA9OUYzNkMyMzQ=',
        'Accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateIssueNewCall {
  static Future<ApiCallResponse> call({
    String? summary = '',
    String? desc = '',
    int? empid,
    String? impact = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createIssueNew',
      apiUrl: 'https://imnikhil.net/services/axislens.php?todo=createissue',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'summary': summary,
        'desc': desc,
        'empid': empid,
        'impact': impact,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic issuekey(dynamic response) => getJsonField(
        response,
        r'''$.key''',
      );
}

class UploadMediaCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? mediafile,
    String? issuekey = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadMedia',
      apiUrl: 'https://imnikhil.net/services/axislens.php?todo=uploadfile',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'mediafile': mediafile,
        'issuekey': issuekey,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadMediaToJiraCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? mediafile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadMediaToJira',
      apiUrl:
          'https://breaktheapp.atlassian.net/rest/api/3/issue/BTA-30/attachments',
      callType: ApiCallType.POST,
      headers: {
        'X-Atlassian-Token': 'no-check',
        'Authorization':
            'Basic bmlraGlsQG5pa2hpbG1pc2FsLmNvbTpBVEFUVDN4RmZHRjBXcTk0T3ZQazZDZEUxYTVWWmtjNXlpWWVBenlqQnZFMTdmVmdXTFRTeGV1RldrdlMxaUZaNVVVSTRKMmdsSDZNTDlJbnFoNVV3a1ZVS0tMRVJwcFdGNzdidHRDWW5fYUtxNmhFekNfVGR6U3cxbWFuRnVwLV9NVnJidUdmVlV5S0VuQmJfMTF6a3NrN3NreTA4c09ubjF0U3llQlB1UVpnUU5TQ1RtTDg2WjA9OUYzNkMyMzQ=',
      },
      params: {
        'file': mediafile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
