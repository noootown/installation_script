virtualenv --no-site-packages -p python3 env
source env/bin/activate
pip3 install --upgrade tensorflow-gpu
pip3 install pandas
pip3 install easydict
pip3 install scipy
pip3 install sklearn
deactivate
