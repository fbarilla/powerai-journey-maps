# TensorFlow Journey Maps

Welcome to the free trial of PowerAI frameworks on the cloud. 
The container is already provisioned with PowerAI R4 with the following attributes: 32 thread POWER8, 128 GB, 1 x P100 Tesla GPU with NVLink (np8g1)
The container contains several cognitive journeys that demonstrate the use of deep learning frameworks such as TensorFlow or Caffe in extracting or recognizing patterns from large amounts of data. While the Jupyter notebooks can run without GPUs, having the P100 Tesla GPU along with IBM's NVLink technology adds significant acceleration, specially for large datasets and for use cases involving data transfers between CPU and GPU. Users can run the 3 Cognitive Journeys or their own applications in this container and experience the acceleration first hand.
If you have not registered for the free trial already, please go here. (Note for Linda: The "here" could be a hyperlink to the registration page)

The contents of the free trial container:
a) Compiled application programs in form of Jupyter notebooks
b) The source code for those demo programs
c) Work space for users to test or port their code
d) Network access to the internet

The free trial container has a default 4 hour timer
When a container is provisioned, a GPU is provisioned exclusively for that container. In an effort save resources and free up the GPU in case it is not being used, the container has a 4 hour timer built in. This timer starts at time of creation and is not affected by the login or logout by the user. Upon the 4 hour mark, the container will shut itself down, free the GPU and the container will be deleted. However, any files that the user kept in the container’s /shared directory will be preserved.

If there is still free trial clock time remaining, the user is given the opportunity to continue the free trial experience. In the IBM Marketplace portal associated with the user’s demo account, there is a dashboard which allows the user to “restart” the container. What actually occurs is that a new container with a newly associated GPU is created and the original /shared directory is relinked to the new container. Because the user gets a newly created container, they will receive an email with the new login credentials that they can use to simply log back in. This is similar to the time-out that happens on an on-line banking Websites. 
A description of the Cognitive Journeys: (this could be tagged to the registration page where the journeys are described)

Name: TensorFlow Machine Learning with Financial, New York Times and Watson Data on IBM Power 8 systems
Description: This solution presents an accessible, non-trivial example of machine learning with time series on IBM Power8 systems. This experiment will focus on the ‘renewable energy’ sector. In this solution, we will: 
Obtain ‘renewable energy’ data from a number of financial markets (indexes and ETFs).
Obtain from the New York Times articles related to renewable energies
Use Watson to process the articles and extract meaningful data.
Munge that data into a usable format and perform exploratory data analysis in order to explore and validate a premise.
Use TensorFlow to build, train and evaluate a number of models for predicting what will happen in financial markets 
Significance of the program: Demonstrate the rich ML/DL development environment on IBM Power systems
Source Code: https://github.com/fbarilla/MLDL-demo

Name: Use transfer learning to create your own image classifier with a Jupyter Notebook
Description: This journey was built for developers looking to leverage the new PowerAI offering from IBM. We will use a Jupyter Notebook to showcase an example of transfer learning with the TensorFlow Inception model on IBM POWER8® systems. The notebook will focus on creating a custom classifier to recognize houses with pools vs. houses without pools from JPEG images.
Significance of the program: Demonstrate the versatility of the PowerAI product for application developers who need to efficiently build powerful deep-learning applications, but may not have an abundance of time or data science experience.
Source Code: https://github.com/fbarilla/powerai-transfer-learning
Name: Search for Extra Terrestrial Intelligence (SETI) – SETI Signal Classification on PowerAI with Multi GPU
Description: Each night, using the Allen Telescope Array (ATA) in northern California, the SETI Institute scans the sky at various radio frequencies, observing star systems with known exoplanets, searching for faint but persistent signals. Framing the radio signal data into spectrogram (a 2D visual representation), we can convert the problem into something akin to an image classification problem. Therefore we can run Convolutional Neural Network (CNN), will be run on the images which are the result of converting the signals to spectrogram.
Significance of the program: Demonstrate the use of multi-GPUs and Spark to accelerate the data preparation and training process

Step 1) Build your dataset using: SETI_img_to-binary.ipynb or for better performance,by using Spark: SETI_img_to-binary_Spark.ipynb
Step 2) Use GPU to run your model:  SETI_CNN_Tf_SingleGpu.ipynb
Step 3) Use Multi GPU to run you model:  SETI_CNN_Tf_MultiGpu.ipynb
Step 4) Use you model to predict: SETI_prediction.ipynb

Source Code: https://github.com/fbarilla/seti-demo 

It is possible to see the degree of performance improvement possible even with a small dataset with more GPUs and with PCIe v/s NVLink technology. While no more than 1 GPU is available in the trial container, the Nimbix cloud supports multiple containers and different GPU models for comparison. Please see some sample performance metrics here. (The link goes to the tables below)
CPU Architecture	CPU cores	Memory	GPU model	Step time (sec/batch)	Accuracy
POWER8	40	256 GB	1 x Tesla K80 w/ PCIe	~0.127	~72% at 75Ksteps (3 hours)
POWER8	32	128 GB	1x Tesla P100 w/ NVLink	~0.035	~72 % at 75K steps (1 hour)

Running the Multi-GPU version of the model:
CPU Architecture	CPU cores	Memory	GPU model	Step time (sec/batch)	Accuracy
POWER8	160	1 TB	4 x Tesla K80 w/ PCIe	~0.066	~72% at 75Ksteps (83 mins)
POWER8	64	256 GB	2 x Tesla P100 w/ NVLink	~0.033	~72% at 75Ksteps (40 mins)
POWER8	128	512 GB	4 x Tesla P100 w/ NVLink	~0.017	~72 % at 75K steps (20 mins)





