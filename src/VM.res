type rec code =
| LOAD(int, code)
| STORE(Memory.reg, code)
| ADD(Memory.reg, code)
| HALT

type acc = Memory.reg
type conf = (acc, Memory.t)

let rec exec = (code, conf) =>
  switch (code, conf) {
  | (LOAD(n, code'), (_, mem)) => 
    exec(code', (n, mem))
  | (STORE(reg, code'), (acc,mem)) => 
    let mem' = Memory.set(reg, acc, mem)
    exec(code', (acc, mem'))
  | (ADD(reg, code'), (acc,mem)) => 
    let sum = Memory.get(reg, mem) + acc
    exec(code', (sum, mem))
  | (HALT, (acc,mem)) => 
    (acc, mem)
  }