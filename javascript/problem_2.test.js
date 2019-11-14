function largest_prime_factor(n) {
  let array_of_numbers = []
  for (let f = 2; f < n * n; f++)
    if (Number.isInteger(n / f) || n / f == 1) {
      array_of_numbers.push(f)
      n /= f
    }
  return Math.max(...array_of_numbers)
}


describe('prime factor testing', () => {
  test('success case to prime factor for 13195', () => {
    expect(largest_prime_factor(13195)).toEqual(29)
  })

  test('success case to prime factor 600851475143', () => {
    expect(largest_prime_factor(600851475143)).toEqual(6857)
  })

  test('fail case if no argument provided', () => {
    expect(largest_prime_factor()).not.toEqual(6857)
  })

  test('fail case if an argument is zero', () => {
    expect(largest_prime_factor(0)).toEqual(-Infinity)
  })
})
