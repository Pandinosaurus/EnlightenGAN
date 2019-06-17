#!/bin/bash

CUDA_VISIBLE_DEVICES=6,4,3 python scripts/temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_1.py --train --port=13003
ps -ef|grep temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_1.py|grep -v grep|cut -c 9-15|xargs kill -9

CUDA_VISIBLE_DEVICES=6,4,3 python scripts/temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_1.py --predict
ps -ef|grep temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_1.py|grep -v grep|cut -c 9-15|xargs kill -9

CUDA_VISIBLE_DEVICES=6,4,3 python scripts/temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_2.py --train --port=13003
ps -ef|grep temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_2.py|grep -v grep|cut -c 9-15|xargs kill -9

CUDA_VISIBLE_DEVICES=6,4,3 python scripts/temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_2.py --predict
ps -ef|grep temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_2.py|grep -v grep|cut -c 9-15|xargs kill -9

CUDA_VISIBLE_DEVICES=6,4,3 python scripts/temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_3.py --train --port=13003
ps -ef|grep temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_3.py|grep -v grep|cut -c 9-15|xargs kill -9

CUDA_VISIBLE_DEVICES=6,4,3 python scripts/temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_3.py --predict
ps -ef|grep temp_unet_conv_add_vary_bs32_BN_nonormDlayer5_4_final_lsgan_32D_PV_5_vgg_relu5_3.py|grep -v grep|cut -c 9-15|xargs kill -9