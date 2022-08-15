# sfbootstrap env for xiaomi-sweet
VENDOR=xiaomi
DEVICE=vayu
VENDOR_PRETTY="Xiaomi"
DEVICE_PRETTY="Redmi Note 10 Pro"
PORT_ARCH=aarch64
SOC=qcom
PORT_TYPE=hybris
HYBRIS_VER=18.1
REPO_INIT_URL="https://github.com/dopaemon/manifest.git"
HAL_MAKE_TARGETS=(hybris-hal droidmedia)
RELEASE=4.3.0.12
#TOOLING_RELEASE=$RELEASE
#SDK_RELEASE=latest
REPOS_COMMON=(
    # SFOS misc
    'https://github.com/mer-hybris/libhybris.git' external/libhybris '' 0
    'https://github.com/dopaemon/hybris-boot.git' hybris/hybris-boot '' 1
    'https://github.com/dopaemon/hybris-installer.git' hybris/hybris-installer '' 1
)
REPOS=(
    # Shared between sweet
    "${REPOS_COMMON[@]}"
    # Redmi Note 10 Pro HAL
    'https://github.com/dopaemon/device_xiaomi_sweet.git' device/xiaomi/sweet "hybris-$HYBRIS_VER" 1
    'https://github.com/dopaemon/kernel_xiaomi_sweet.git' kernel/xiaomi/sweet "hybris-$HYBRIS_VER" 1
    'https://github.com/dopaemon/vendor_xiaomi_sweet.git' vendor/xiaomi/sweet "hybris-$HYBRIS_VER" 1
    # SFOS adaptation
    'https://github.com/dopaemon/droid-hal-sweet.git' rpm '' 0
    'https://github.com/dopaemon/droid-config-sweet.git' hybris/droid-configs '' 0
    'https://github.com/dopaemon/droid-hal-version-sweet.git' hybris/droid-hal-version-sweet '' 0
)
LINKS=(
    'Sources' 'https://github.com/dopaemon'
)
export VENDOR DEVICE PORT_ARCH RELEASE
