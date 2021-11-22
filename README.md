# WBC-Classification
## Data Samples
Collect the data set from [kaggle](https://www.kaggle.com/paultimothymooney/blood-cells)
Class|Eosinophil|Lymphocyte|Monocyte|Neutrophol|
---|---|---|---|---|
Images|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Eosinophil%20(1).jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Lymphocyte%20(1).jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Monocyte%20(1).jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Neutrophil%20(1).jpg)|
 Size of train dataset|2500 |2500 |2500 | 2500 |

The basic differnce between all four classes is total number of nuclie in each cell.Monocyte and lyphote have single nuclie but shapes are different,Monocyte looks like bean
and lyphocyte looks like a circle.Eosinophil and Neutrophil have 2 and 3 nuclie respectively.
<br>
## Task
Class|Eosinophil|Lymphocyte|Monocyte|Neutrophol|Task
|---|---|---|---|---|---|
HSV Image|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/E-HSV.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/L-HSV.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/M-HSV.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/N-HSV.jpg)|This image is obtained by Ihsv=rgb2hsv(Img) command|
HSV saturation plane|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/HSV-2-E.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/HSV-2-L.jpg) |![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/HSV-2-M.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/HSV%20Images/HSV-2-N.jpg)|It is a saturation plane(2nd plane of hsv) obtained by Ihsv(:,:,2)

### Feature extraction
Now by using extractLBPFeaturesmatlab command,extracted features from the images and each feature size is 1 x 59.So like wise collected 600 features from 600 images of each class.All features are stored in 600 x 59 matrix of respective classes{featuresA1,featuresA2,featuresA3,featuresA4}.Average vectors(featureB1,featureB2,featureB3,featureB4} of each size 1 x 59 are obtained by using all four 600 x59 feature matrix respectivly.Thease average vectors are used as metric to clasifiy the test images
Class|feature vectors(600x59)|Avg feature vector(1x59)|
|--|--|--|
Eosinophil|features_A1|feature_B1 obtained from column wise average of features_A1 by using matlab code **mean(features_A1,1)**|
Lymphocyte|features_A2| feature_B2 obtained from column wise average of features_A2 by using matlab code **mean(features_A2,1)**|
Monocyte|features_A3| feature_B3 obtained from column wise average of features_A3 by using matlab code **mean(features_A3,1)**|
Neutrophol|features_A4|feature_B4 obtained from column wise average of features_A4 by using matlab code **mean(features_A4,1)**|


### NOTE
Out of several methods like GLCM,Entropy,contrast,and between different feature extraction methods local binarypatterns and Average vector method is giving good accuracy so choosen them.
### Cosine Similarity Measure
To classify the image,here I used cosine simlarity as a measure,which basically returns maximum value for closer vectors.
![equation](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/cosine-similarity.png)
For more details about similarity measure look into the code
<br>

## Results
Class|Eosinophil|Lymphocyte|Monocyte|Neutrophil|
|---|---|---|---|---|
number of test Images |250 |250 |250 |250  |
Accuracy |34|88.50|81.|30.90|
## Conclusions

The classification accuracy of Lymphocyte and monocyte is good.Accuracy of the classification majorly depends on the dataset also.This dataset is not perfectly balanced,Please find few samples from netrophil and monocyte datasets,the dont actually looks like their own domin.Not only that while labling single image is assigned with multi class in given [label set](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/labels.csv).So this is also effects the accuracy.
class|Eosinophil|Monocyte|Netrophil|
|---|---|---|---|
dummy Images|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Dummy%20data%20samples/dummy_Eosinophil.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Dummy%20data%20samples/Monocyte_dummy.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Dummy%20data%20samples/dummy_Neutrophil.jpg)|




