//  The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?
// https://projecteuler.net/problem=3

function largest_prime_factor(n) {
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


describe('prime factor testing', () => {
  test('success case to prime factor for 13195', () => {
    expect(largest_prime_factor(13195)).toEqual(29)
  })

  test('success case to prime factor 600851475143', () => {
    expect(largest_prime_factor(600851475143)).toEqual(6857)
  })

  test('success case to prime factor 1000', () => {
    expect(largest_prime_factor(1000)).toEqual(5)
  })

  test('fail case if no argument provided', () => {
    expect(largest_prime_factor()).not.toEqual(6857)
  })

  test('fail case if an argument is zero', () => {
    expect(largest_prime_factor(0)).toEqual(-Infinity)
  })
})
