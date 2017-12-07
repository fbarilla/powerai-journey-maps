# TensorFlow Journey Maps

## TensorFlow Machine Learning with Financial, New York Times and Watson Data on IBM Power 8 systems
This solution presents an accessible, non-trivial example of machine learning with time series on IBM Power8 systems. This experiment will focus on the ‘renewable energy’ sector. In this solution, we will: 
Obtain ‘renewable energy’ data from a number of financial markets (indexes and ETFs).
Obtain from the New York Times articles related to renewable energies
Use Watson to process the articles and extract meaningful data.
Munge that data into a usable format and perform exploratory data analysis in order to explore and validate a premise.
Use TensorFlow to build, train and evaluate a number of models for predicting what will happen in financial markets 

## Use transfer learning to create your own image classifier with a Jupyter Notebook
This journey was built for developers looking to leverage the new PowerAI offering from IBM. We will use a Jupyter Notebook to showcase an example of transfer learning with the TensorFlow Inception model on IBM POWER8® systems. The notebook will focus on creating a custom classifier to recognize houses with pools vs. houses without pools from JPEG images.
Significance of the program: Demonstrate the versatility of the PowerAI product for application developers who need to efficiently build powerful deep-learning applications, but may not have an abundance of time or data science experience.

## Search for Extra Terrestrial Intelligence (SETI) – SETI Signal Classification on PowerAI with Multi GPU
Each night, using the Allen Telescope Array (ATA) in northern California, the SETI Institute scans the sky at various radio frequencies, observing star systems with known exoplanets, searching for faint but persistent signals. Framing the radio signal data into spectrogram (a 2D visual representation), we can convert the problem into something akin to an image classification problem. Therefore we can run Convolutional Neural Network (CNN), will be run on the images which are the result of converting the signals to spectrogram.

## Project overview:

Each night, using the Allen Telescope Array (ATA) in northern California, the SETI Institute scans the sky at various radio frequencies, observing star systems with known exoplanets, searching for faint but persistent signals. The current signal detection system is programmed to search only for particular kinds of signals: narrow-band carrier waves. However, the detection system sometimes triggers on signals that are not narrow-band signals (with unknown efficiency) and are also not explicitly-known radio frequency interference (RFI). There seems to be various categories of these kinds of events that have been observed in the past.

Our goal is to classify these accurately in real-time. This may allow the signal detection system to make better observational decisions, increase the efficiency of the nightly scans, and allow for explicit detection of these other signal types.

For more information refer to SETI hackathon page.

This repository includes 3 parts:

    Preparing dataset

    Converting images to binary files using Spark
    Converting images to binary files using Numpy

    Classification

    Classification of images using CCN on Single GPU
    Classification of images using CCN on Multi GPU

    Prediction

## SETI_img_to_binary_spark.ipynb
Signal to Binary Files (Train&Test) using Spark

In this notebook we read the Basic 4 dataset through Spark, and convert signals into a binary file.

## SETI_img_to-binary.ipynb
Signal to Binary Files (Train&Test)

In this notebook we read the Basic 4 dataset and convert signals into a binary file. The format of output binary file is same as MNIST.

## SETI_CNN_Tf_SingleGpu.ipynb
SETI Signal Classification on PowerAI with Single GPU

In this Notebook, we will use the famous SETI Dataset to build a Convolutional Neural Networks capable to perform signals classification. CNN will say, with some associated error, what type of signal is the presented input. In our case, as we are running this notebook on IBM PowerAI, you hvae access to multi GPU, but we use one of the GPUs in this notebook, for the sake of simplicity.

## SETI_CNN_Tf_MultiGpu.ipynb
SETI Signal Classification on PowerAI with Multi GPU

In this Notebook, we will use the famous SETI Dataset to build a Convolutional Neural Networks capable to perform signals classification. CNN will say, with some associated error, what type of signal is the presented input. In this notebook, you will use IBM PowerAI with multiple GPU to train the model.

## SETI_prediction.ipynb

In this notebook you can load a pre-trained model and predict the signal class.
Performance

Convelutional Neural Network involves a lot of matrix and vector multiplications that can parallelized, so GPUs can overperform, because GPUs were designed to handle these kind of matrix operations in parallel!
Why GPU overperforms?

A single core CPU takes a matrix operation in serial, one element at a time. But, a single GPU could have hundreds or thousands of cores, while a CPU typically has no more than a few cores.
How to use GPU with TensorFlow?

It is important to notice that if both CPU and GPU are available on the machine that you are running the noebook, and if a TensorFlow operation has both CPU and GPU implementations, the GPU devices will be given priority when the operation is assigned to a device.
Benchmark:

    SETI_single_gpu_train.py achieves ~72% accuracy after 3k epochs of data (75K steps).
    Speed: With batch_size 128.
    Notice: The model is not optimized to reach to its highest accuracy, you can achive better results tuning the parameters.

CPU Architecture 	CPU cores  	Memory  	GPU  	Step time (sec/batch)  	 Accuracy
POWER8 	40 	256 GB 	1 x Tesla K80 	~0.127 	~72% at 75K steps (3 hours)
POWER8 	32 	128 GB 	1 x Tesla P100 w/NVLink np8g4 	~0.035 	~72% at 75K steps (1 hour)

    SETI_multi_gpu_train.py achieves ~72% accuracy after 75K steps.
    Speed: With batch_size 128.
    Notice: The model is not optimized to reach to highest accuracy, and you can achive better results tuning the parameters.

CPU Architecture 	CPU cores  	Memory  	GPU  	Step time (sec/batch)  	 Accuracy
POWER8 	160 	1 TB 	4 x Tesla K80 	~0.066 	~72% at 75K steps (83 minutes)
POWER8 	64 	256 GB 	2 x Tesla P100 w/NVLink np8g4 	~0.033 	~72% at 75K steps (40 minutes)
POWER8 	128 	512 GB 	4 x Tesla P100 w/NVLink np8g4 	~0.017 	~72% at 75K steps (20 minutes)bbbbbb
