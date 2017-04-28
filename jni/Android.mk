ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Wfatal-errors
LOCAL_CFLAGS += -Dnan=__builtin_nan # avoid nan bug in utils.c

LOCAL_DISABLE_FATAL_LINKER_WARNINGS=true

APP_STL := stlport_static

LOCAL_LDLIBS := -L$(LOCAL_PATH)/lib -g

TARGET_ARCH_ABI := armeabi-v7a
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_SRC_FILES:= activation_layer.c \
activations.c \
art.c \
avgpool_layer.c \
batchnorm_layer.c \
blas.c \
box.c \
captcha.c \
cifar.c \
classifier.c \
coco.c \
col2im.c \
compare.c \
connected_layer.c \
convolutional_layer.c \
cost_layer.c \
crnn_layer.c \
crop_layer.c \
cuda.c \
darknet.c \
data.c \
deconvolutional_layer.c \
demo.c \
detection_layer.c \
detector.c \
dice.c \
dropout_layer.c \
gemm.c \
go.c \
gru_layer.c \
im2col.c \
image.c \
layer.c \
list.c \
local_layer.c \
lsd.c \
matrix.c \
maxpool_layer.c \
network.c \
nightmare.c \
normalization_layer.c \
option_list.c \
parser.c \
region_layer.c \
regressor.c \
reorg_layer.c \
rnn.c \
rnn_layer.c \
rnn_vid.c \
route_layer.c \
shortcut_layer.c \
softmax_layer.c \
super.c \
swag.c \
tag.c \
tree.c \
utils.c \
voxel.c \
writing.c \
yolo.c

LOCAL_MODULE := darknet

LOCAL_CFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE

include $(BUILD_EXECUTABLE)

endif  # TARGET_SIMULATOR != true
