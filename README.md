You need to install the binaries for Hyperledger Fabric (HLF). Please search for the official Hyperledger Fabric website and locate the "Get Started" section. There, you will find the curl command to install the binaries.
Additionally, ensure that you have the following three required files with the .yaml extension:
- configtx.ymal
- core.yaml
- orderer.yaml

In configtx.yaml
![image](https://github.com/user-attachments/assets/7df6c53c-91cc-416b-8290-8899f18f22ab)


In Orderer.yaml
You need to remove Backoff and Throttling, as shown in the image below
![image](https://github.com/user-attachments/assets/1bd75898-1612-4d7e-8b9a-6a7eee42b763)
