This sets up a docker container with anaconda and Jupyter environment for powerAI architecture wtih GPU(linux-ppcle-64)

This does the following:

Installs anaconda 3.0 in /opt/DL directory
Setup virtual Environment
Create a virtual environment - "keras_tf" with the following:
  All the libraries required to run keras with tensorflow/Theano as backend with GPU enabled.
  Scikit-learn and Scikit-image pakcages
  Jupyter notebook
  
Usage instructions:
1. export PATH=/opt/DL/anaconda/bin:$PATH
2. source activate keras_tf # activates the virtual environment
3. For Jupyter notebook, 
  jupyter notebook --ip=0.0.0.0 --port=<port number> #any desired unused port number. Ex: 8890
