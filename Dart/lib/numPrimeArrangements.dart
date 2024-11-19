class Solution {
  int numPrimeArrangements(int n) {
    var primeCount = countPrimes(n);
    var nonPrimeCount = n - primeCount;
    var primeArrange = calculateFactorial(primeCount) % 1000000007;
    var nonPrimeArrange = calculateFactorial(nonPrimeCount) % 1000000007;
    return (primeArrange * nonPrimeArrange) % 1000000007;
  }

  int countPrimes(int n) {
    var primeCount = 0;
    for (var i = 2; i <= n; i++) {
      if (isPrime(i)) {
        primeCount++;
      }
    }
    return primeCount;
  }

  bool isPrime(int num) {
    if (num < 2) {
      return false;
    }
    for (var i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }

  int calculateFactorial(int num) {
    var factorial = 1;
    for (var i = 1; i <= num; i++) {
      factorial = (factorial * i) % 1000000007;
    }
    return factorial;
  }
}
