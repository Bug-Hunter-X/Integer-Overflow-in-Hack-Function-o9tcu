```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  // Check for potential overflow before multiplication
  if (x > (2147483647 / 2)) {
    return 2147483647; // Handle overflow by returning max int
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  // Check for potential overflow before subtraction
  var temp = bar(x);
  if (temp < 1) {
    return 0; // Handle underflow
  }
  return bar(x) - 1;
}

function main(): void {
  var x: int = 2147483647; // Test with a large input
  var y: int = baz(x);
  print(y);
}
```