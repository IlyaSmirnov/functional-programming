coins n = [[k, l, m]|k<-[0..n`div`2], l<-[0..n`div`3], m<-[0..n`div`5], 2 * k + 3 * l + 5 * m == n]