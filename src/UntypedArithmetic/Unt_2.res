type rec term =
| Zero
| Succ(term)
| Add(term, term)

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
  }

let zero = Zero
let one = Succ(zero)
let two = Add(one, one)
let three = Add(one, two)
let four = Add(one, three)
let five = Add(two, three)
let ten = Add(five, five)

Js.log(eval(zero))
Js.log(eval(one))
Js.log(eval(two))
Js.log(eval(three))
Js.log(eval(four))
Js.log(eval(five))
Js.log(eval(ten))