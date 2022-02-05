# sfbootstrap env for xiaomi-vayu
VENDOR=xiaomi
DEVICE=vayu
VENDOR_PRETTY="Xiaomi"
DEVICE_PRETTY="Poco X3 Pro"
PORT_ARCH=aarch64
SOC=qcom
PORT_TYPE=hybris
HYBRIS_VER=18.1
REPO_INIT_URL="https://github.com/SailfishOS-vayu/android.git"
HAL_MAKE_TARGETS=(hybris-hal droidmedia)
RELEASE=4.3.0.12
#TOOLING_RELEASE=$RELEASE
#SDK_RELEASE=latest
REPOS_COMMON=(
    # Poco X3 PRO common HAL
    'https://github.com/SailfishOS-vayu/android_device_xiaomi_sm8150-common.git' device/xiaomi/sm8150-common "hybris-$HYBRIS_VER" 1
    'https://github.com/SailfishOS-vayu/android_kernel_xiaomi_sm8150.git' kernel/xiaomi/sm8150 "hybris-$HYBRIS_VER" 1
    'https://github.com/SailfishOS-vayu/android_vendor_xiaomi.git' vendor/xiaomi "hybris-$HYBRIS_VER" 1
    'https://github.com/LineageOS/android_hardware_xiaomi.git' hardware/xiaomi "lineage-$HYBRIS_VER" 1
    # SFOS misc
    'https://github.com/mer-hybris/libhybris.git' external/libhybris '' 0
    'https://github.com/SailfishOS-vayu/hybris-boot.git' hybris/hybris-boot '' 1
    'https://github.com/SailfishOS-vayu/hybris-installer.git' hybris/hybris-installer '' 1
)
REPOS=(
    # Shared between vayu
    "${REPOS_COMMON[@]}"
    # POCO X3 PRO HAL
    'https://github.com/SailfishOS-vayu/android_device_xiaomi_vayu.git' device/xiaomi/vayu "hybris-$HYBRIS_VER" 1
    # SFOS adaptation
    'https://github.com/SailfishOS-vayu/droid-hal-vayu.git' rpm '' 0
    'https://github.com/SailfishOS-vayu/droid-config-vayu.git' hybris/droid-configs '' 0
    'https://github.com/SailfishOS-vayu/droid-hal-version-vayu.git' hybris/droid-hal-version-vayu '' 0
)
LINKS=(
    'Sources' 'https://github.com/SailfishOS-vayu'
)
export VENDOR DEVICE PORT_ARCH RELEASE
