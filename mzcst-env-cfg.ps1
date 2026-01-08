# mzcst-test
conda create -n mzcst-test python=3.12.9
conda activate mzcst-test
conda install pytorch torchvision torchaudio pyyaml ipykernel seaborn dill pandas pyglet importlib-metadata setuptools gymnasium pygame 
conda install tqdm twine
python -m pip install --upgrade tomli tomli-w build wheel hatchling
python -m pip install --editable "C:\Program Files\CST Studio Suite 2026\AMD64\python_cst_libraries"


# venv包
cd "path\to\mzcst_2026"
&"C:\Program Files\CST Studio Suite 2026\Python\python.exe" -m venv .venv
.\.venv\Scripts\activate.ps1
python -m pip install --editable "C:\Program Files\CST Studio Suite 2026\AMD64\python_cst_libraries"
python -m pip install -e .
python -m pip install --upgrade tomli tomli-w build wheel hatchling tqdm twine
python -m pip install --upgrade torch torchvision --index-url https://mirrors.aliyun.com/pytorch-wheels/cu129/
python -m pip install --upgrade pyyaml ipykernel seaborn dill pandas pyglet importlib-metadata setuptools gymnasium pygame 

# 封包

python -m build



# API token
# 测试服

python -m twine upload --repository testpypi dist/* --verbose


# 安装测试包
pip install -i https://test.pypi.org/simple/ --upgrade mzcst-2026


# 正式服
python -m twine upload dist/* --verbose


pip install mzcst-2024
pip install --upgrade mzcst-2024



#恢复环境
conda env create --file=mzcst-test-raw.yml
conda env create --file=mzcst-test-without-target.yml



