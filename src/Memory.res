type reg = int

type t = reg => int

let empty : t = _reg => 0

let get = (reg, mem) => mem(reg)

let set = (reg, n, mem) => reg' => 
  if reg == reg' {
    n
  } 
  else {
    get(reg', mem)
  }

let first = 0

let next : reg => reg = reg => reg + 1

let free = (reg, mem) => set(reg, empty, mem)