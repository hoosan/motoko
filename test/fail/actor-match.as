let a : actor {f : () -> (); g : () -> ()} = actor {
  public func f() {};
  public func g() {}
};

func foo() = switch a {
  case {f; g} { f() }
};

assert ((switch (foo()) { case () 0 }) == 0)
