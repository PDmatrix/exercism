pub fn raindrops(n: u32) -> String {
    if [3, 5, 7].into_iter().all(|x| n % x != 0) {
        return n.to_string();
    }

    format!(
        "{}{}{}",
        get(n, 3, "Pling"),
        get(n, 5, "Plang"),
        get(n, 7, "Plong")
    )
}

fn get(n: u32, div: u32, s: &str) -> &str {
    if n % div == 0 {
        s
    } else {
        ""
    }
}
