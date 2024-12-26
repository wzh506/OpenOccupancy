cd $(readlink -f `dirname $0`)
# conda activate OpenOccupancy
export PYTHONPATH="."
# export PATH=/usr/local/cuda-11.3/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-11.3/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
unset LD_LIBRARY_PATH #安装了conda环境中的cuda,所以这里不设置CUDA

# 下面为啥报错啊
echo $1
if [ -f $1 ]; then
  config=$1
else
  echo "need a config file"
  exit
fi

bash tools/dist_train.sh $config $2 ${@:3}

