exception NoRoot

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<Main />, root)
| None => raise(NoRoot)
}