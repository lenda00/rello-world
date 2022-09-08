type rec term =
| Zero
| Succ(term)

let rec eval = term => 
  switch term {
  | Zero => 0
  | Succ(t) =>
    let t' = eval(t)
    1 + t'
  }

let zero = Zero
let one = Succ(zero)
let two = Succ(one)
let three = Succ(two)
let four = Succ(three)
let five = Succ(four)

Js.log(eval(zero))
Js.log(eval(one))
Js.log(eval(two))
Js.log(eval(three))
Js.log(eval(four))
Js.log(eval(five))
