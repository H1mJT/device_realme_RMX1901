echo 'Cloning Vendor tree [1/4]'
# Vendor Tree
git clone git@github.com:ashim-anwar/vendor_realme_RMX1901-12.git -b 12.1 vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/4]'
# Kernel Tree
git clone git@github.com:ashim-anwar/kernel_realme_RMX1901-12.git -b 12.1 kernel/realme/RMX1901

echo 'Cloning Neutron Clang [3/4]'
# Neutron Clang
git clone --depth=1 https://gitlab.com/dakkshesh07/neutron-clang.git -b Neutron-14 prebuilts/clang/host/linux-x86/clang-neutron

echo 'Cloning Pixel Launcher [4/4]'
# Pixel Launcher By TeamFiles
git clone https://github.com/Ardjlon/vendor_PixelLauncher.git -b khonsu vendor/PixelLauncher
