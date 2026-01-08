"""实现与CST 2026交互的接口。包括`cst.interface`、`cst.results`、`cst.eda`、
`cst.asymptotic`、`cst.radar`、`cst.units`。


开发本包的主要目的是：规避CST内置Python接口的类型提示缺失问题。

使用本包后就不再需要直接调用官方的`cst`包。

至少本包内其他模块都通过本模块的接口间接与CST交互。

注意：本模块基于 `Python 3.12.9`、`CST Studio Suite 2026` 环境开发和调试，未在
其它环境测试过。

"""

# __version__ = "2025.5"

import sys

sys.path.append(r"C:\Program Files\CST Studio Suite 2026\AMD64\python_cst_libraries")

import importlib_metadata

__version__ = importlib_metadata.version("mzcst-2026")

# from . import radar  # cst.radar
from . import asymptotic  # cst.asymptotic
from . import eda  # cst.eda
from . import interface  # cst.interface
from . import results  # cst.results
from . import units  # cst.units
from . import (  # cst.asymptotic; _global,
    common,
    component,
    construction_curve,
    construction_face,
    curves,
    group,
    material,
    math_,
    plot,
    profiles_to_shapes,
    shape_operations,
    shapes,
    solver,
    sources_and_ports,
    transformations_and_picks,
    utils,
)
from ._global import BaseObject, Parameter, Units, VbaObject, change_solver_type
