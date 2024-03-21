# Need to do custom install to prevent dependency errors
conda create -y --name sister python=3.8
source activate sister

conda install gdal -y
pip install pystac==1.8.4

git clone https://github.com/EnSpec/hytools.git -b 1.5.0
cd hytools
pip install .

pip install ray==2.2.0

#source activate sister-trait

pip install ipykernel
python -m ipykernel install --user

pip install -U ipywidgets
