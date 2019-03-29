# Live Wallpapers
PRODUCT_PACKAGES += \
        CarrierConfig \
        Launcher3

PRODUCT_PROPERTY_OVERRIDES := \
        net.dns1=8.8.8.8 \
        net.dns2=8.8.4.4

# Inherit from those products. Most specific first.
$(call inherit-product, device/antmicro/apalis_tk1/device.mk)
# TODO: check this file
#$(call inherit-product-if-exists, vendor/htc/flounder_lte/device-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := apalis_tk1
PRODUCT_DEVICE := apalis_tk1
PRODUCT_BRAND := AOSP
PRODUCT_MODEL := Toradex Apalis TK1
PRODUCT_MANUFACTURER := Toradex
#PRODUCT_RESTRICT_VENDOR_FILES := owner path

HAVE_NVIDIA_PROP_SRC := true

PRODUCT_COPY_FILES += device/antmicro/apalis_tk1/files/bootanimation.zip:system/media/bootanimation.zip

