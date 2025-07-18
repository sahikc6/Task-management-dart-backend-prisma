bool rabinKarp(String text, String pattern) {
  const int d = 256;
  const int q = 101;
  int m = pattern.length;
  int n = text.length;
  int h = 1;

  for (int i = 0; i < m - 1; i++) {
    h = (h * d) % q;
  }

  int p = 0, t = 0;
  for (int i = 0; i < m; i++) {
    p = (d * p + pattern.codeUnitAt(i)) % q;
    t = (d * t + text.codeUnitAt(i)) % q;
  }

  for (int i = 0; i <= n - m; i++) {
    if (p == t && text.substring(i, i + m) == pattern) return true;
    if (i < n - m) {
      t = (d * (t - text.codeUnitAt(i) * h) + text.codeUnitAt(i + m)) % q;
      if (t < 0) t += q;
    }
  }
  return false;
}
