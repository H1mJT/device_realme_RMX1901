echo 'Cloning Vendor tree [1/5]'
# Vendor Tree
git clone git@github.com:H1mJT/vendor_realme_RMX1901.git -b rice vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/5]'
# Kernel Tree
git clone git@github.com:H1mJT/kernel_realme_RMX1901.git -b 12.1 kernel/realme/RMX1901

echo 'Cloning Prelude Clang [3/5]'
# Prelude Clang
git clone --depth=1 https://gitlab.com/jjpprrrr/prelude-clang prebuilts/clang/host/linux-x86/clang-prelude


echo 'Patching Realme In-Screen Proximity [4/5]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git && git cherry-pick de630e735cdbb68a606d3bbbf8b1674be31bab2d && cd ../..

# Realme Dirac
echo 'Adding Realme Dirac Support [5/5]'
git clone https://github.com/techyminati/android_packages_apps_RealmeDirac.git -b lineage-19.1 packages/apps/RealmeDirac

