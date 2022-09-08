type rec term =
| Zero
| Succ(term)
| Add(term, term)
| Mult(term, term)

let rec eval = term => 
  switch term {
  | Zero => 0
  | Succ(t) =>
    let t' = eval(t)
    1 + t'
  | Add(t1, t2) =>
    let t1' = eval(t1)
    let t2' = eval(t2)
    t1' + t2'
  | Mult(t1, t2) =>
    let t1' = eval(t1)
    let t2' = eval(t2)
    t1' * t2'
  }

let zero = Zero
let one = Succ(zero)
let two = Add(one, one)
let three = Add(one, two)
let four = Add(one, three)
let five = Add(two, three)
let six = Mult(two, three)
let seven = Add(five, two)
let eight = Mult(two, four)
let nine = Mult(three, three)
let ten = Mult(two, five)
let hundread = Mult(ten, ten)
let thousand = Mult(ten, hundread)
let n_2048 = Mult(Mult(four, eight), Mult(eight, eight))
let n_2077 = Add(Add(Mult(two, thousand), Mult(seven, ten)), seven)

Js.log(eval(zero))
Js.log(eval(ten))
Js.log(eval(hundread))
Js.log(eval(thousand))
Js.log(eval(n_2048))
Js.log(eval(n_2077))