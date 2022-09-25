let rec comp = (expr, reg, code) => 
  switch expr {
  | Lang.Val(n) => VM.LOAD(n, code)
  | Lang.Add(a, b) =>
    let addReg = VM.ADD(reg, code)
    let nextReg = Memory.next(reg)
    let code' = VM.STORE(reg, comp(b, nextReg, addReg))
    comp(a, reg, code')
  }

let compile = expr => comp(expr, Memory.first, VM.HALT)