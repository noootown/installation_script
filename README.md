# Installation Script
Here are all my installation shell script.

# Tensorflow
Install tensorflow by running ```./tf-step1.sh``` and ```./tf-step2.sh```
The script installed ```tensorflow v1.0.0```, ```CUDA v8.0``` and ```cuDNN v5.1``` by default.
To install higher version of tensorflow, you may change the version number in the script.

### **IMPORTANT**
Though the latest CUDA version is 9.0, Tensorflow 1.4.0 only support CUDA v8.0.

# Auto Pull Deploy Git Server (ADPGitServer)
Install Auto Pull Deploy Git Server by running ```./ADPGitServer.sh```

Run deploy script by  ```./deploy.sh <dir_name>```

Write files that aren't going to be deployed in ```.deployignore```

# Python3 virtualenv

```py3virtualenv.sh```