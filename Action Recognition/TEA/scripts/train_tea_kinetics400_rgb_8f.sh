CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py kinetics RGB \
     --arch tea50 --num_segments 8 --gpus 0 1 2 3  \
     --gd 20 --lr 0.0025 --lr_steps 30 40 45 --epochs 50 \
     --batch-size 16 -j 16 --dropout 0.5 --consensus_type=avg --eval-freq=1 \
     --experiment_name=TEA --shift \
     --shift_div=8 --shift_place=blockres --npb
