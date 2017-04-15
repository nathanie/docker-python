pwd
ls -la


#export PATH=$PATH:/root/cling/bin
NCPUS=`python -c "import multiprocessing as mp; print(mp.cpu_count())"`
echo "Detected $NCPUS cpus"

#python -c "import sys; sys.path.append('/root/inst/bin/')"
export PATH=/root/inst/bin/:$PATH

echo $PATH


#dask-scheduler --host localhost &
#dask-worker localhost:8786 $* &
jupyter notebook --allow-root "$@" &
