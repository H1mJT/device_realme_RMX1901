echo 'Cloning Vendor tree [1/5]'
# Vendor Tree
git clone git@github.com:H1mJT/vendor_realme_RMX1901.git -b rice vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/5]'
# Kernel Tree
git clone git@github.com:H1mJT/kernel_realme_RMX1901.git -b 12.1 kernel/realme/RMX1901

echo 'Cloning Neutron Clang [3/5]'
# Neutron Clang
git clone --depth=1 https://gitlab.com/dakkshesh07/neutron-clang.git -b Neutron-14 prebuilts/clang/host/linux-x86/clang-neutron


echo 'Patching Realme In-Screen Proximity [4/5]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git rice && git cherry-pick 198b3fa983482e67cc10f91debc72710ee831404 && cd ../..

# Realme Dirac
echo 'Adding Realme Dirac Support [5/5]'
git clone https://github.com/techyminati/android_packages_apps_RealmeDirac.git -b lineage-19.1 packages/apps/RealmeDirac

