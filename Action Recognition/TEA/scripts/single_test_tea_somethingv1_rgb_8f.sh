# test TEA
CUDA_VISIBLE_DEVICES=0,1,2,3 python test_models.py something \
    --arch='tea50' \
    --weight='./checkpoint/SomethingV1_something_RGB_tea50_shift8_blockres_avg_segment8_e50/ckpt.best.pth.tar' \
    --worker=4 --gpus 0 1 2 3  \
    --test_segments=8 --test_crops=1 \
    --batch_size=16 --shift
