pub fn nth(n: u32) -> u32 {
    let mut prime: Vec<u32> = (0..=(n + 100)).collect();
    prime[1] = 0;

    let mut i = 2;
    while i <= n {
        if prime[i as usize] != 0 {
            let mut j = i + i;
            while j <= n {
                prime[j as usize] = 0;
                j = j + i;
            }
        }
        i = i + 1;
    }

    let primes: Vec<u32> = prime.into_iter().filter(|x| *x != 0).collect();

    primes[n as usize] as u32

    //primes[n as usize] as u32
    /*vector<char> prime (n+1, true);
    prime[0] = prime[1] = false;
    for (int i=2; i<=n; ++i)
    if (prime[i])
    if (i * 1ll * i <= n)
    for (int j=i*i; j<=n; j+=i)
    prime[j] = false;*/
}
