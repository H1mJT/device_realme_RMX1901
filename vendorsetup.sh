echo 'Cloning Vendor tree [1/3]'
# Vendor Tree
git clone git@github.com:ashim-anwar/vendor_realme_RMX1901-12.git -b 12.1 vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/3]'
# Kernel Tree
git clone git@github.com:ashim-anwar/kernel_realme_RMX1901-12.git -b 12.1 kernel/realme/RMX1901

echo 'Cloning Neutron Clang [3/3]'
# Neutron Clang
git clone --depth=1 https://gitlab.com/dakkshesh07/neutron-clang.git -b Neutron-14 prebuilts/clang/host/linux-x86/clang-neutron
