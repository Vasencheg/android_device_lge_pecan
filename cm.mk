## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)
# Release name
PRODUCT_RELEASE_NAME := GN
# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/pecan/full_pecan.mk)


#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_pecan
PRODUCT_BRAND := lge
PRODUCT_DEVICE := pecan
PRODUCT_MODEL := Optimus Me
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_pecanBUILD_ID=ITL41D BUILD_DISPLAY_ID=ITL41D BUILD_FINGERPRINT=LGE/pecan/pecan/pecan:2.3.7/GRJ90/20111018:user/release-keys  PRVIATE_BUILD_DESC="pecan-user 4.0.1 ITL41D 223971 release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
#PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/ldpi

# Extra Star overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/pecan
