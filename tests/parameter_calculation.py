import mzcst_2026 as mz
from mzcst_2026 import Parameter, math_

if __name__ == "__main__":
    a = Parameter("a", 1.5)
    b = Parameter("b", "2")
    c = Parameter("c", 36)
    d = ((a + b) * c).rename("d")
    e = (a + b * c).rename("e")
    f = (a / 2).rename("f")
    print(repr(d))
    print(repr(e))
    print(repr(f))
    pass
