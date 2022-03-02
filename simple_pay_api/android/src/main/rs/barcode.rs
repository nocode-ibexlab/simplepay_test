#pragma version(1)
#pragma rs java_package_name(com.ibexlab.simple_pay_api.device.ml.barcode)

rs_allocation in;
int left, top;

uchar RS_KERNEL crop(uint32_t x, uint32_t y) {
    return rsGetElementAtYuv_uchar_Y(in, x + left, y + top);
}

uchar RS_KERNEL invert(uint32_t x, uint32_t y) {
    return 0xff - rsGetElementAtYuv_uchar_Y(in, x + left, y + top);
}
