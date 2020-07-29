mkdir lineage
cd lineage
export PATH=$PATH:~/.local/bin
repo init -u git://github.com/LineageOS/android.git -b lineage-17.1
git clone https://github.com/ivanmeler/local_manifests -b hero-q .repo/local_manifests
repo sync -j128
. build/envsetup.sh
brunch hero2lte
