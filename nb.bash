#!/bin/bash
# run this file using `source nb.bash`
source /home/maxloo/anaconda3/bin/activate
# Check if the environment exists
if conda info --envs | grep -q jupyter_env; then
    echo "Environment 'jupyter_env' already exists. Activating it."
else
    echo "Creating environment 'jupyter_env'."
    conda create -n jupyter_env python=3.10.12 -y
fi
conda activate jupyter_env
pip install jupyter
pip install tensorflow[and-cuda]
pip install --upgrade tensorflow[and-cuda]
pip install pandas numpy matplotlib scikit-learn
conda install cuda -c nvidia
chmod 0700 /run/user/1000/
CUDA_VISIBLE_DEVICES=""
# use this command to go from jupyter_env, to base, to normal prompt:
# `conda deactivate; conda deactivate`