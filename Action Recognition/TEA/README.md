# Action Recognition
This is a very good action recognition project.

The author proposes two new modules in the article, one is the ME activation module and the other is the MTA aggregation module, which is embedded in Res2Net. The author draws on the advantages of TSM, STM, TEINet, and Res2Net and integrates them. The effect of TEA structure excellent.
If you are interested, you can refer to the original paper and [code](https://github.com/Phoenix1327/tea-action-recognition) . 

Of course, I have also sorted out this [article](https://mp.weixin.qq.com/s/vaHQCrGDe_LgQsIaMbeqFw)  but it has not been typeset.

I followed the training strategy in the article and used four GPUs to train 50 epochs (Frames×Crops×Clips:8x1x1) on the something-something v1 dataset, and the top1 accuracy was 47.414.
# TEA: Temporal Excitation and Aggregation for Action Recognition (CVPR2020)

The PyTorch code of the [TEA Module](https://arxiv.org/abs/2004.01398).

### Requirements

- [PyTorch](https://pytorch.org/) >= 1.1.0

### Data Preparation

Please refer to [TSN](https://github.com/yjxiong/temporal-segment-networks) repo and [TSM](https://github.com/mit-han-lab/temporal-shift-module) repo for the detailed guide of data pre-processing.

#### The List Files

A list file is utilized to specify the video data information, including a tuple of extracted video frame folder path (absolute path), video frame number, and video label. A typical line in the file look like:
```
/data/xxx/xxx/something-something/video_frame_folder 100 12
```
Finally, the absolute path of your own generated list files should be added into `ops/dataset_configs.py`

### Training TEA

We have provided several examples for training TEA models on different datasets. Please refer to the Appendix B of [our paper](https://arxiv.org/abs/2004.01398) for more training details.

- To train TEA on Something-Something V1 dataset with 8 frames:
```
bash ./scripts/train_tea_something_rgb_8f.sh
```
- To train TEA on HMDB dataset with 16 frames from the Kinetics-400 pre-trained models:
```
bash ./scripts/finetune_tea_hmdb_rgb_16f.sh
```

### Testing 

Two inference protocols are utilized in our paper: 1) efficient protocol and 2) accuracy protocol. For both protocols we provide the example scripts for testing TEA models:

- Efficient Protocol
```
bash ./scripts/single_test_tea_something_rgb_8f.sh
```
- Accuracy Protocol
```
bash ./scripts/multi_test_tea_something_rgb_8f.sh
```
