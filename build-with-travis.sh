mkdir /build && cd /build
repo init -q --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-5.1 && repo sync
rm -rf .repo && find . -type d -name ".git" -execdir rm -rf {} \;
mkdir -p device/oppo/A37 && cp -r /sources/* device/oppo/A37
source build/envsetup.sh && lunch omni_A37-eng && make -j8 recoveryimage
cp /build/out/target/product/A37/recovery.img /sources/recovery.img
