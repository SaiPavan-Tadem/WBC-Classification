# WBC-Classification
## Data Samples
Collect the data set from [kaggle](https://www.kaggle.com/paultimothymooney/blood-cells)
Class|Eosinophil|Lymphocyte|Monocyte|Neutrophol|
---|---|---|---|---|
Image-1|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Eosinophil%20(1).jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Lymphocyte%20(1).jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Monocyte%20(1).jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Image%20Samples/Neutrophil%20(1).jpg)|
 size of dataset|623 |620 |620 | 624 |

The basic differnce between all four classes is total number of nuclie in each cell.Monocyte and lyphote have single nuclie but shapes are different,Monocyte looks like bean
and lyphocyte looks like a circle.Eosinophil and Neutrophil have 2 and 3 nuclie respectively.
<br>
## Task
Class|Eosinophil|Lymphocyte|Monocyte|Neutrophol|
|---|---|---|---|---|
HSV Image|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/E-HSV.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/L-HSV.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/M-HSV.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/N-HSV.jpg)|
HSV plane 2|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/HSV-2-E.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/HSV-2-L.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/HSV-2-M.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/HSV-2-N.jpg)|
segment image|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/BW-E.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/BW-L.jpg) |![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/BW-M.jpg)|![Alt Text](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/Segmentation%20Images/BW-N.jpg)|
## Results
Class|Eosinophil|Lymphocyte|Monocyte|Neutrophil|
|---|---|---|---|---|
Test Images Images|600 |600 |600 |600  |
True Classified| | | | |
False Classified| | | | |
Accuracy| | | | | |
## conclusions
Accuracy of the classification majorly depends on the dataset also.This dataset is not perfectly balanced,Please find few samples from netrophil and monocyte datasets,the dont actually looks like their own domin.Not only that while labling single image is assigned with multi class in given [label set](https://github.com/SaiPavan-Tadem/WBC-Classification/blob/main/labels.csv).So this is also effects the accuracy.
class|Eosinophil|Lymphocyte|Monocyte|Netrophil|
|---|---|---|---|---|
dummy Images|![Alt Text]()|![Alt Text]()|![Alt Text]()|![Alt Text]()




