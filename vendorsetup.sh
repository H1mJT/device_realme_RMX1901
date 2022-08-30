echo 'Cloning Vendor tree [1/4]'
# Vendor Tree
git clone git@github.com:H1mJT/vendor_realme_RMX1901.git -b 12.1 vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/4]'
# Kernel Tree
git clone git@github.com:H1mJT/kernel_realme_RMX1901.git -b upstream kernel/realme/RMX1901



echo 'Patching Realme In-Screen Proximity [3/4]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git && git cherry-pick afb38a0f9f9a612b13b12b901ab9b7f0fffae3de && cd ../..


# Realme Dirac
echo 'Adding Realme Dirac Support [4/4]'
git clone https://github.com/techyminati/android_packages_apps_RealmeDirac.git -b lineage-19.1 packages/apps/RealmeDirac

