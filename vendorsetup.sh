echo 'Cloning Vendor tree [1/4]'
# Vendor Tree
git clone git@github.com:H1mJT/vendor_realme_RMX1901.git -b 12.1 vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/4]'
# Kernel Tree
git clone git@github.com:H1mJT/kernel_realme_RMX1901.git -b 12.1 kernel/realme/RMX1901

echo 'Cloning Neutron Clang [3/4]'
# Neutron Clang
git clone --depth=1 https://gitlab.com/jjpprrrr/prelude-clang prebuilts/clang/host/linux-x86/clang-prelude


echo 'Patching Realme In-Screen Proximity [4/4]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git && git cherry-pick afb38a0f9f9a612b13b12b901ab9b7f0fffae3de && cd ../..


# Realme Dirac
echo 'Adding Realme Dirac Support [6/6]'
git clone https://github.com/techyminati/android_packages_apps_RealmeDirac.git -b lineage-19.1 packages/apps/RealmeDirac

