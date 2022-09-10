echo 'Cloning Vendor tree [1/4]'
# Vendor Tree
git clone git@github.com:H1mJT/vendor_realme_RMX1901.git -b rice vendor/realme/RMX1901

echo 'Cloning Kernel tree [2/4]'
# Kernel Tree
git clone git@github.com:H1mJT/kernel_realme_RMX1901.git -b upstream kernel/realme/RMX1901


# Realme Dirac
echo 'Adding Realme Dirac Support [3/4]'
git clone https://github.com/techyminati/android_packages_apps_RealmeDirac.git -b lineage-19.1 packages/apps/RealmeDirac

echo 'Patching Realme In-Screen Proximity [4/4]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git && git cherry-pick de630e735cdbb68a606d3bbbf8b1674be31bab2d && cd ../..



