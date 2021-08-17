class KmpUtil {
  static _calculateNext(String string, List<int> next) {
    int len = string.length;
    next[0] = -1;
    int k = -1;
    for (int q = 1; q <= len - 1; q++) {
      while (k > -1 && string[k + 1] != string[q]) {
        k = next[k];
      }
      if (string[k + 1] == string[q]) {
        k = k + 1;
      }
      next[q] = k;
    }
  }

  static List<int> kmpSearchTextIndex(String string,  String subString) {
    List<int> list = [];
    var m = string.length;
    var n = subString.length;
    if (n > m) return list;
    List<int> next = List.filled(n, 0, growable: false);
    _calculateNext(subString, next);
    int k = -1;
    for (int i = 0; i < m; i++) {
      while (k > -1 && subString[k + 1] != string[i]) k = next[k];
      if (subString[k + 1] == string[i]) k = k + 1;
      if (k == n - 1) {
        k = -1; //重新初始化，寻找下一个
        list.add(i - n + 1);
      }
    }
    return list;
  }
}



