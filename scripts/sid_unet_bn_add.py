import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--port", type=str, default="8097")
parser.add_argument("--train", action='store_true')
parser.add_argument("--test", action='store_true')
opt = parser.parse_args()

if opt.train:
	os.system("python train.py \
		--dataroot /hdd2/yifan/compete_LOL \
		--no_dropout \
		--name sid_unet_add_bn_lsgan \
		--model pair \
		--dataset_mode pair \
		--which_model_netG sid_unet \
		--niter 200 \
		--niter_decay 200 \
		--skip 1 \
		--dataset_mode pair \
		--use_norm 1 \
		--display_port=" + opt.port)

elif opt.test:
	for i in range(39):
	        os.system("python test.py \
	        	--dataroot /hdd2/yifan/compete_LOL \
	        	--name sid_unet_add_bn_lsgan \
	        	--model pair \
	        	--which_direction AtoB \
	        	--no_dropout \
	        	--dataset_mode pair \
	        	--which_model_netG sid_unet \
	        	--skip 1 \
	        	--use_norm 1 \
	        	--use_wgan 0 \
	        	--which_epoch " + str(i*10+10))