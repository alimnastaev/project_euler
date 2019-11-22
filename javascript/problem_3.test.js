//  The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?
// https://www.khanacademy.org/math/pre-algebra/pre-algebra-factors-multiples/pre-algebra-prime-factorization-prealg/v/prime-factorization
// https://projecteuler.net/problem=3
function largest_prime_factor_1(n) {
  let array_of_numbers = []
  for (let f = 2; f < n * n; f++)
    if (Number.isInteger(n / f) || (n / f == 1)) {
      array_of_numbers.push(f)
      n /= f
      f -= 1
    }
  return Math.max(...array_of_numbers)
  // return array_of_numbers # if you want to see complete prime factors pattern
}
console.time('1st solution');
largest_prime_factor_1(600851475143);
console.timeEnd('1st solution');

function largest_prime_factor_2(n) {
  let f = 2
  while (f * f <= n) {
    if (n % f == 0) {
      n /= f
    } else {
      f += 1
    }
  }
  return n
}

console.time('2nd solution');
largest_prime_factor_2(600851475143);
console.timeEnd('2nd solution');



describe('1st function', () => {
  test('success case to prime factor for 13195', () => {
    expect(largest_prime_factor_1(13195)).toEqual(29)
  })

  test('success case to prime factor 600851475143', () => {
    expect(largest_prime_factor_1(600851475143)).toEqual(6857)
  })

  test('success case to prime factor 1000', () => {
    expect(largest_prime_factor_1(1000)).toEqual(5)
  })

  test('fail case if no argument provided', () => {
    expect(largest_prime_factor_1()).not.toEqual(6857)
  })

  test('fail case if an argument is zero', () => {
    expect(largest_prime_factor_1(0)).toEqual(-Infinity)
  })
})

describe('2nd function', () => {
  test('success case to prime factor for 13195', () => {
    expect(largest_prime_factor_2(13195)).toEqual(29)
  })

  test('success case to prime factor 600851475143', () => {
    expect(largest_prime_factor_2(600851475143)).toEqual(6857)
  })

  test('success case to prime factor 1000', () => {
    expect(largest_prime_factor_2(1000)).toEqual(5)
  })

  test('fail case if no argument provided', () => {
    expect(largest_prime_factor_2()).not.toEqual(6857)
  })

  test('fail case if an argument is zero', () => {
    expect(largest_prime_factor_2(0)).toEqual(0)
  })
})
