# mzcst-test
conda create -n mzcst-test python=3.12.9
conda activate mzcst-test
conda install pytorch torchvision torchaudio pyyaml ipykernel seaborn dill pandas pyglet importlib-metadata setuptools gymnasium pygame 
conda install ezdxf ipython pywin32 PyYAML numpy scipy threadpoolctl cbor2 cupy-cuda12x fabric gerber_writer h5py matplotlib pandas pip-licenses plotly pydantic pyparsing PySide6 QtPy SDF tables tkinterweb traitlets
conda install tqdm twine
python -m pip install --upgrade tomli tomli-w build wheel hatchling
python -m pip install --editable "C:\Program Files\CST Studio Suite 2026\AMD64\python_cst_libraries"
python -m pip install -e .


# 封包

python -m build



# API token
# 测试服

python -m twine upload --repository testpypi dist/* --verbose


# 安装
pip install -i https://test.pypi.org/simple/ mzcst-2024
pip install -i https://test.pypi.org/simple/ --upgrade mzcst-2024


# 正式服
python -m twine upload dist/* --verbose


pip install mzcst-2024
pip install --upgrade mzcst-2024



#恢复环境
conda env create --file=mzcst-test-raw.yml
conda env create --file=mzcst-test-without-target.yml



