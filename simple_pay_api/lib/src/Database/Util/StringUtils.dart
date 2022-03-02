class StringUtils {
  static const String EMPTY = "";

  static bool isEmpty(final String? cs) {
    return cs == null || cs.length == 0;
  }

  static String? defaultString(final String? str,
      [final String? defaultStr = StringUtils.EMPTY]) {
    return isEmpty(str) ? defaultStr : str;
  }

  static String join(final List<String> iterator, String separator) {
    String str = "";
    for (String string in iterator) {
      str += string;
      str += separator;
    }
    return str;
  }
}
