// Import BenchmarkBase class.
import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:fluttergo/bindings.dart';
import 'package:fluttergo/dartinacci.dart';

class RunBenchmark extends BenchmarkBase {
  final void Function() function;
  const RunBenchmark(this.function) : super('Run');

  static void main(void Function() function) {
    RunBenchmark(function).report();
  }

  @override
  void run() {
    function();
  }

  @override
  void setup() {}

  @override
  void teardown() {}

  @override
  void exercise() => run();
}

void main() {
  // Run TemplateBenchmark
  RunBenchmark.main(() => bindings.fibonacci(25));
  RunBenchmark.main(() => fibonacci(25));
  RunBenchmark.main(() => fibonacciInLoops(25));
  RunBenchmark.main(() => bindings.fibonacciSequential(25));
}
