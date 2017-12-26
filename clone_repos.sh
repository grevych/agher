
# Install keras-resnet
pip install git+https://github.com/broadinstitute/keras-resnet

# Install keras-retinanet
git clone https://github.com/fizyr/keras-retinanet.git
cd keras-retinanet
python setup.py install
cd ..
rm -r keras_retinanet

git clone https://github.com/DiegoAgher/object-detection.git
cd object-detection
pip install -r requirements.txt
cd ..
