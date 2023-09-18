# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
mkdir -p  ~/Documents/Github
cd  ~/Documents/Github
git clone https://github.com/ventolab/CellphoneDB
cd  ~/Documents/Github/CellphoneDB
# mkdir -p ~/conda-envs/cpdb3.8
# conda create -p ~/conda-envs/cpdb3.8 python=3.8 -y
# conda activate /Users/sw7v6/conda-envs/cpdb3.8
conda create -n cpdb3.8 python=3.8 -y
conda activate cpdb3.8
pip install -e .
pip install ipykernel
python3 -m ipykernel install --user --name 'cpdb3.8'
pip install scanpy ktplotspy==0.1.10
# pip install cellphonedb
# duplicate *.ipynb
# edit T00_DownloadDB-Copy1.ipynb and change kernel to cpdb3.8
cpdb_target_dir = os.path.join('/Users/sw7v6/Documents/Github/CellphoneDB/cpdb_tutorial/db', cpdb_version)

mkdir -p ~/Documents/Github/CellphoneDB/cpdb_tutorial/data
cd ~/Documents/Github/CellphoneDB/cpdb_tutorial/data
unzip ~/Documents/Github/CellphoneDB/notebooks/data_tutorial.zip

# edit T00_BuildDBfromFiles-Copy1.ipynb
cpdb_input_dir = '/Users/sw7v6/git/CellphoneDB/cpdb_tutorial/db/v4.1.0/' 

# edit T01_Method1-Copy1.ipynb
os.chdir('/Users/sw7v6/Documents/Github/CellphoneDB/cpdb_tutorial')

mkdir -p  ~/Documents/Github
cd  ~/Documents/Github
git clone https://github.com/zktuong/ktplotspy
cd  ~/Documents/Github/ktplotspy
conda create -n cpdb3.9 python=3.9 -y
conda activate cpdb3.9
pip install -e .
pip install ipykernel
python3 -m ipykernel install --user --name 'cpdb3.9'
pip install cellphonedb scanpy

# https://github.com/Teichlab/cellphonedb
conda create -n cpdb3.7 python=3.7 -y
conda activate cpdb3.7
pip3 install cellphonedb==2.1.7
cellphonedb --help
mkdir -p  ~/Documents/Github/cellphonedb2
cd ~/Documents/Github/cellphonedb2
curl https://raw.githubusercontent.com/Teichlab/cellphonedb/master/in/example_data/test_counts.txt --output test_counts.txt
curl https://raw.githubusercontent.com/Teichlab/cellphonedb/master/in/example_data/test_meta.txt --output test_meta.txt
cellphonedb method statistical_analysis test_meta.txt test_counts.txt
cellphonedb plot dot_plot
cellphonedb plot heatmap_plot test_meta.txt

#***** remove-start *****#
# jupyter kernelspec list
jupyter kernelspec remove -f cpdb3.8
jupyter kernelspec remove -f cpdb3.9
jupyter kernelspec remove -f cpdb3.10
jupyter kernelspec remove -f cpdb3.11

conda deactivate

# conda env list
conda remove --name cpdb --all -y
#***** remove-end *****#

# conda create -n cpdb python=3.8 -y
# conda activate cpdb
# pip install -r requirements.txt
# pip install \
# pandas \
# numpy \
# numpy-groupies \
# requests \
# scikit-learn \
# geosketch \
# anndata \
# ktplotspy \
# tqdm \
# scanpy \
# jupyterlab \
# ipykernel \
# cython \
# cellphonedb

# jupyter-lab --no-browser --ip 0.0.0.0
# jupyter-lab
