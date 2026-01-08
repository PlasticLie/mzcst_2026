# mzcst_2026

实现与CST 2026交互的接口。包括`cst.interface`、`cst.results`、`cst.eda`、
`cst.asymptotic`、`cst.radar`、`cst.units`。

如果您的CST安装在默认路径（`C:\Program Files\CST Studio 2026\`），那么使用本包将不需
要额外配置，否则请按照官方帮助配置`PYTHONPATH`。


开发本包的主要目的是：规避CST内置Python接口的类型提示缺失问题。

使用本包后就不再需要直接调用官方的`cst`包。

至少本包内其他模块都通过本模块的接口间接与CST交互。

注意：本模块基于 `Python 3.12.9`、`CST Studio Suite 2026` 环境开发和调试，未在
其它环境测试过。


以下内容来自CST官方帮助文档。


CST Python Libraries
====================
Some features of the CST Studio Suite tools can be controlled via CST Python
Libraries.

Overview
--------------------
The cst package provides a Python interface to the CST Studio Suite.

- `cst.interface` - Allows controlling a running CST Studio Suite.
- `cst.results` - Provides access to 0D/1D Results of a cst file.
- `cst.eda` - Provides an interface to a Printed Circuit Board (PCB).
- `cst.asymptotic` - Provides an interface to the Asymptotic Solver.
- `cst.radar` - Provides routines for automotive RADAR post processing.
- `cst.units` - Provides methods to work with units supported by CST Studio Suite.

What’s New in This Version
--------------------
- Added support for Python 3.13 (64-bit).

- Upgraded bundled python to 3.12 and moved to new location <CST_STUDIO_SUITE_FOLDER>/Python.

- Removed support for Python 3.8 (64-bit)

- Support for Python 3.9.x (64-bit) is deprecated and will be removed in the next CST Studio Suite release.

- cst.results opens project files generated with CST Studio Suite 2025 or CST Studio Suite 2026.

Setup
====================
Bundled Python interpreter
--------------------
The CST Studio Suite installation comes with Python 3.12 (64-bit), which 
requires no further setup to start using it with the CST Python 
Libraries. Various packages like numpy and scipy are pre-installed. A 
complete list of installed packages can be found in `<CST_STUDIO_SUITE_FOLDER>/Python/requirements-freeze.txt`

Custom Python interpreter
--------------------
The CST Python Libraries can also be used from external Python environments. We
strive to support all the Python versions that have not reached the end-of-life
as indicated here and were released before the release of this CST Studio Suite
version. The items marked as deprecated in the list below will be removed in the
next CST Studio Suite release. Please upgrade your Python interpreter
accordingly and avoid using the deprecated versions.

Supported Python versions:

- Python 3.13.x (64-bit)
- Python 3.12.x (64-bit)
- Python 3.11.x (64-bit)
- Python 3.10.x (64-bit)
- Python 3.9.x (64-bit) (deprecated)

32-bit versions of Python are not supported.

To make sure your interpreter is able to load the CST Python Libraries, a
minimal package can be installed that links to the actual CST Studio Suite
installation::

    pip install --editable "<CST_STUDIO_SUITE_FOLDER_BIN64>/python_cst_libraries"

where `CST_STUDIO_SUITE_FOLDER` should be replaced with the path to the subfolder 
"AMD64" for Windows and "LinuxAMD64" for Linux in the CST Studio Suite 
installation on your system.

Note: Although not recommended, but if desired, instead of installing the
`cst-studio-suite-link` package, you can add or modify the `PYTHONPATH` system
environment variable to include:

- Windows: `CST_STUDIO_SUITE_FOLDER/AMD64/python_cst_libraries`
- Linux: `CST_STUDIO_SUITE_FOLDER/LinuxAMD64/python_cst_libraries`

It is discouraged to set PYTHONPATH as a global environment variable (i.e. 
in your system settings) as it applies to all python interpreters on your system.

Another way is to add it in-script via:

    >>> import sys
    >>> sys.path.append(r"<CST_STUDIO_SUITE_FOLDER_BIN64>/python_cst_libraries")

Please replace `CST_STUDIO_SUITE_FOLDER_BIN64` with the system dependent paths indicated
above.

You have succesfully set up your Python environment when you are able to execute
the following code without error::

    >>> import cst
    >>> print(cst.__file__) # should print '<PATH_TO_CST_AMD64>/python_cst_libraries/cst/__init__.py'