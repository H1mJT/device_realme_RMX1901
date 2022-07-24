echo 'Cloning Vendor tree [1/4]'
# Vendor Tree
git clone git@github.com:H1mJT/vendor_realme_RMX1901.git -b 12.1 vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/4]'
# Kernel Tree
git clone git@github.com:H1mJT/kernel_realme_RMX1901.git -b 12.1 kernel/realme/RMX1901

echo 'Cloning Neutron Clang [3/4]'
# Neutron Clang
git clone --depth=1 https://gitlab.com/dakkshesh07/neutron-clang.git -b Neutron-14 prebuilts/clang/host/linux-x86/clang-neutron


echo 'Patching Realme In-Screen Proximity [4/4]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git -b 12.1 && git cherry-pick 5e8f94a2db8c0a026f72b99c988b0cfdd64716e2 && cd ../..
