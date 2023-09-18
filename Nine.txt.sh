# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
https://github.com/Teichlab/cellphonedb
conda create -n cpdb3.7 python=3.7 -y
conda activate cpdb3.7
pip3 install cellphonedb==2.1.7
cellphonedb --help
curl https://raw.githubusercontent.com/Teichlab/cellphonedb/master/in/example_data/test_counts.txt --output test_counts.txt
curl https://raw.githubusercontent.com/Teichlab/cellphonedb/master/in/example_data/test_meta.txt --output test_meta.txt
cellphonedb method statistical_analysis test_meta.txt test_counts.txt
cellphonedb plot dot_plot
cellphonedb plot heatmap_plot test_meta.txt

mkdir -p ~/git
cd ~/git
git clone git@github.com:ventolab/CellphoneDB.git
cd CellphoneDB
pip install -e .
# conda create -n cpdb python=3.9.13 -y
# conda create -n cpdb python=3.9 -y
conda create -n cpdb python=3.8 -y
conda activate cpdb
# pip install -r requirements.txt
pip install \
pandas \
numpy \
numpy-groupies \
requests \
scikit-learn \
geosketch \
anndata \
ktplotspy \
tqdm \
scanpy \
jupyterlab \
ipykernel \
cython \
cellphonedb

pip install ktplotspy==0.1.10
pip install cellphonedb
# jupyter lab build
python -m ipykernel install --user --name 'cpdb'
jupyter-lab --no-browser --ip 0.0.0.0
# jupyter-lab

# edit T00_DownloadDB.ipynb
cpdb_target_dir = os.path.join('/Users/sw7v6/git/CellphoneDB/cpdb_tutorial/db', cpdb_version)
# edit T00_BuildDBfromFiles.ipynb
cpdb_input_dir = '/Users/sw7v6/git/CellphoneDB/cpdb_tutorial/db/v4.1.0/' 

mkdir -p ~/git/CellphoneDB/cpdb_tutorial/data
cd ~/git/CellphoneDB/cpdb_tutorial/data
unzip ~/git/CellphoneDB/notebooks/data_tutorial.zip

# edit T01_Method1.ipynb
os.chdir('/Users/sw7v6/git/CellphoneDB/cpdb_tutorial')
# and 
cpdb_file_path = 'db/v4.1.0/cellphonedb_09_14_2023_210958.zip'

#***** remove-start *****#
# jupyter kernelspec list
jupyter kernelspec remove -f cpdb

conda deactivate

# conda env list
conda remove --name cpdb --all -y
#***** remove-end *****#
