class UpdateServerInfo {
  String? _host;
  int? _port;
  String? _userId;
  String? _password;

  String? getHost() {
    return _host;
  }

  void setHost(String host) {
    this._host = host;
  }

  int? getPort() {
    return _port;
  }

  void setPort(int port) {
    this._port = port;
  }

  String? getUserId() {
    return _userId;
  }

  void setUserId(String userId) {
    this._userId = userId;
  }

  String? getPassword() {
    return _password;
  }

  void setPassword(String password) {
    this._password = password;
  }

  @override
  String toString() {
    return _host! + ":" + _port.toString() + ":" + _userId! + ":" + _password!;
  }

  static UpdateServerInfo? from(String? text) {
    if (text == null) {
      return null;
    }

    var tok = text.split(":");

    if (tok.length != 4) {
      return null;
    }

    UpdateServerInfo info = UpdateServerInfo();
    info._host = tok[0];
    info._port = 22;

    try {
      info._port = int.parse(tok[1]);
    } catch (ignored) {}

    info._userId = tok[2];
    info._password = tok[3];
    return info;
  }
}
