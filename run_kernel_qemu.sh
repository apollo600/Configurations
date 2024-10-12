# Example
# ~/tools/run-qemu.sh ~/disk-images/jammy.img 10030 1239 | tee ../dbg.log

set -e

JAMMY_IMG=$1
if [ -z "$1" ]
then
	echo "usage: ./run.sh <path/to/jammy.img>"
	exit 1
fi

TCP_PORT=$2
GDB_PORT=$3

WORKING_DIR=$(pwd)
echo -n "working directory: "
echo ${WORKING_DIR}

echo "tcp: ${TCP_PORT}, gdb: ${GDB_PORT}"

set -x

sudo qemu-system-aarch64 \
-m 8G \
-M virt \
-machine \
gic-version=3 \
-enable-kvm \
-cpu host \
-smp 8 \
-drive file=${JAMMY_IMG},format=raw \
-kernel ${WORKING_DIR}/arch/arm64/boot/Image \
-append "nokaslr console=ttyAMA0 root=/dev/vda rw oops=panic panic=-1 ftrace_dump_on_oops=orig_cpu debug earlyprintk=serial net.ifnames=0 slub_debug=UZ" \
-net user,host=10.0.2.10,hostfwd=tcp:127.0.0.1:${TCP_PORT}-:22 \
-net nic \
-no-reboot \
-nographic \
-gdb tcp::${GDB_PORT} \
2>&1