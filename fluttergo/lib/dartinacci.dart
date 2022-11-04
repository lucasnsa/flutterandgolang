int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci(n - 1);

int fibonacciInLoops(int n) {
  if (n < 2) return n;
  var data = [0, 1];
  for (var i = 2; i < n + 1; i++) {
    data.add(data[i - 1] + data[i - 2]);
  }
  return data[data.length - 1];
}
