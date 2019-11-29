pub fn nth(n: u32) -> u32 {
    match n {
        n if n == 0 => 2,
        n => (2..).filter(|x| is_prime(*x)).nth(n as usize).unwrap(),
    }
}

fn is_prime(n: u32) -> bool {
    let m = (n as f32).sqrt() as u32;

    !(2..=m).any(|i| n % i == 0)
}
