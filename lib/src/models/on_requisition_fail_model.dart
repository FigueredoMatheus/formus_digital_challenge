class OnRequisitionFailModel {
  late String code;
  late String message;

  OnRequisitionFailModel({
    required int? code,
    required dynamic message,
  }) {
    setErrorCode(code);
    setErrorMessage(message);
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
    };
  }

  setErrorCode(int? code) {
    if (code == null) {
      this.code = 'Unknown';
    } else {
      this.code = code.toString();
    }
  }

  setErrorMessage(dynamic messageData) {
    if (messageData == null) {
      message = 'Request failed. Please try again later.';
    } else if (messageData is String) {
      message = messageData;
    } else if (messageData is Map) {
      message =
          messageData['message'] ?? 'Request failed. Please try again later.';
    }
  }
}
