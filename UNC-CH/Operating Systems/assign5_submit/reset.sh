sudo rmmod log_faults.ko
make clean
make
sudo insmod log_faults.ko
make clean
