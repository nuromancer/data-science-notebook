#!/bin/bash
# conda init zsh
conda create -n titanic_env -c conda-forge -c defaults -c fastai -c pytorch -y
conda activate titanic_env
conda install python=3.8 --yes
conda install ipython --yes
conda install ipykernel --yes
# ab hier kann man einen jupyter kernel bauen
conda install pandas --yes # ✅
conda install ydata-profiling --yes # ✅
conda install scikit-learn --yes  # ✅
conda install keras --yes # ✅
conda install tensorflow --yes  # ✅
conda install pydotplus --yes # ✅
# conda install python-graphviz --yes # ❌ veraltet

#! redundant
# conda install matplotlib --yes
# conda install numpy --yes
# conda install pip --yes

# conda activate titanic_env_fixed

# python -m ipykernel install --user --name titanic_env --display-name "Titanic Environment"

#! Before miniconda installation
# rm -rf /Users/aronfreelance/miniconda3

conda activate base 
conda activate titanic_env
conda list
python -m ipykernel install --user --name titanic_env --display-name "Titanic Environment"
jupyter notebook


# setup with environment yml
conda config --set channel_priority strict
conda env create --force -f titanic_env.yml
conda activate titanic_env
python -m ipykernel install --user --name titanic_env --display-name "Titanic Environment"
