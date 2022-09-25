type rec expr =
| Val(int)
| Add(expr, expr)

let rec eval = expr =>
  switch expr {
  | Val(n) => n
  | Add(a, b) => eval(a) + eval(b)
  }
