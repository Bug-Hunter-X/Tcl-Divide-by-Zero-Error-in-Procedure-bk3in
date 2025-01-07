proc safeProc {a b} {
  if {$a == 0} {
    return "Division by zero"
  } elseif {[string is double -strict $a] == 0 || [string is double -strict $b] == 0} {
    return "Invalid input: arguments must be numeric"
  }
  return [expr {$b / $a}]
}
puts [safeProc 0 10]
puts [safeProc 10 0]
puts [safeProc 10 2]
puts [safeProc a 2]