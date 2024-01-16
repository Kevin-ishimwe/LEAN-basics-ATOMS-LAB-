import Lake
open Lake DSL

package «».«/» {
  -- add any package configuration options here
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

require std from git
"https://github.com/leanprover/std4.git"
@[default_target]

lean_lib «».«/» {
  -- add any library configuration options here
}
