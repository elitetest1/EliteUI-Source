.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFormat$Format;
    }
.end annotation


# static fields
.field public static final whitelist DEPTH16:I = 0x44363159

.field public static final whitelist DEPTH_JPEG:I = 0x69656963

.field public static final whitelist DEPTH_POINT_CLOUD:I = 0x101

.field public static final whitelist FLEX_RGBA_8888:I = 0x2a

.field public static final whitelist FLEX_RGB_888:I = 0x29

.field public static final whitelist HEIC:I = 0x48454946

.field public static final whitelist HEIC_ULTRAHDR:I = 0x1006

.field public static final whitelist JPEG:I = 0x100

.field public static final whitelist JPEG_R:I = 0x1005

.field public static final whitelist NV16:I = 0x10

.field public static final whitelist NV21:I = 0x11

.field public static final whitelist PRIVATE:I = 0x22

.field public static final whitelist RAW10:I = 0x25

.field public static final whitelist RAW12:I = 0x26

.field public static final greylist-max-o RAW_DEPTH:I = 0x1002

.field public static final blacklist RAW_DEPTH10:I = 0x1003

.field public static final whitelist RAW_PRIVATE:I = 0x24

.field public static final whitelist RAW_SENSOR:I = 0x20

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final greylist-max-o Y16:I = 0x20363159

.field public static final whitelist Y8:I = 0x20203859

.field public static final whitelist YCBCR_P010:I = 0x36

.field public static final whitelist YCBCR_P210:I = 0x3c

.field public static final whitelist YUV_420_888:I = 0x23

.field public static final whitelist YUV_422_888:I = 0x27

.field public static final whitelist YUV_444_888:I = 0x28

.field public static final whitelist YUY2:I = 0x14

.field public static final whitelist YV12:I = 0x32315659


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getBitsPerPixel(I)I
    .locals 5

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-eq p0, v0, :cond_9

    const/16 v0, 0x14

    if-eq p0, v0, :cond_9

    const/16 v0, 0x20

    if-eq p0, v0, :cond_9

    const/16 v2, 0x23

    const/16 v3, 0xc

    if-eq p0, v2, :cond_8

    const/16 v2, 0x36

    const/16 v4, 0x18

    if-eq p0, v2, :cond_7

    const/16 v2, 0x3c

    if-eq p0, v2, :cond_6

    const v2, 0x20203859

    if-eq p0, v2, :cond_5

    const v2, 0x20363159

    if-eq p0, v2, :cond_4

    const v2, 0x32315659

    if-eq p0, v2, :cond_3

    const v2, 0x44363159

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_2

    const/16 v2, 0x11

    if-eq p0, v2, :cond_1

    const/16 v2, 0x1002

    if-eq p0, v2, :cond_9

    const/16 v2, 0x1003

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    return v4

    :pswitch_2
    return v1

    :pswitch_3
    return v3

    :cond_0
    :pswitch_4
    const/16 p0, 0xa

    return p0

    :cond_1
    return v3

    :cond_2
    return v1

    :cond_3
    return v3

    :cond_4
    return v1

    :cond_5
    const/16 p0, 0x8

    return p0

    :cond_6
    return v0

    :cond_7
    return v4

    :cond_8
    return v3

    :cond_9
    return v1

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o isPublicFormat(I)Z
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/16 v0, 0x101

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/media/codec/Flags;->p210FormatSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1006

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :pswitch_0
    :sswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x14 -> :sswitch_0
        0x20 -> :sswitch_0
        0x36 -> :sswitch_0
        0x1005 -> :sswitch_0
        0x20203859 -> :sswitch_0
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
