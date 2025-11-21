.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PixelFormat$Format;,
        Landroid/graphics/PixelFormat$Opacity;
    }
.end annotation


# static fields
.field public static final whitelist A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist HSV_888:I = 0x37

.field public static final whitelist JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist OPAQUE:I = -0x1

.field public static final whitelist RGBA_1010102:I = 0x2b

.field public static final whitelist RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RGBA_8888:I = 0x1

.field public static final whitelist RGBA_F16:I = 0x16

.field public static final whitelist RGBX_8888:I = 0x2

.field public static final whitelist RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist RGB_888:I = 0x3

.field public static final blacklist R_8:I = 0x38

.field public static final whitelist TRANSLUCENT:I = -0x3

.field public static final whitelist TRANSPARENT:I = -0x2

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final whitelist YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public whitelist bitsPerPixel:I

.field public whitelist bytesPerPixel:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist formatHasAlpha(I)Z
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public static greylist-max-o formatToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x3

    if-eq p0, v0, :cond_e

    const/4 v0, -0x2

    if-eq p0, v0, :cond_d

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x10

    if-eq p0, v0, :cond_7

    const/16 v0, 0x11

    if-eq p0, v0, :cond_6

    const/16 v0, 0x14

    if-eq p0, v0, :cond_5

    const/16 v0, 0x16

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/16 v0, 0x37

    if-eq p0, v0, :cond_1

    const/16 v0, 0x38

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RGB_332"

    return-object p0

    :pswitch_1
    const-string p0, "LA_88"

    return-object p0

    :pswitch_2
    const-string p0, "L_8"

    return-object p0

    :pswitch_3
    const-string p0, "A_8"

    return-object p0

    :pswitch_4
    const-string p0, "RGBA_4444"

    return-object p0

    :pswitch_5
    const-string p0, "RGBA_5551"

    return-object p0

    :cond_0
    const-string p0, "R_8"

    return-object p0

    :cond_1
    const-string p0, "HSV_888"

    return-object p0

    :cond_2
    const-string p0, "JPEG"

    return-object p0

    :cond_3
    const-string p0, "RGBA_1010102"

    return-object p0

    :cond_4
    const-string p0, "RGBA_F16"

    return-object p0

    :cond_5
    const-string p0, "YCbCr_422_I"

    return-object p0

    :cond_6
    const-string p0, "YCbCr_420_SP"

    return-object p0

    :cond_7
    const-string p0, "YCbCr_422_SP"

    return-object p0

    :cond_8
    const-string p0, "RGB_565"

    return-object p0

    :cond_9
    const-string p0, "RGB_888"

    return-object p0

    :cond_a
    const-string p0, "RGBX_8888"

    return-object p0

    :cond_b
    const-string p0, "RGBA_8888"

    return-object p0

    :cond_c
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_d
    const-string p0, "TRANSPARENT"

    return-object p0

    :cond_e
    const-string p0, "TRANSLUCENT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    const/4 v3, 0x3

    if-eq p0, v3, :cond_5

    const/16 v4, 0x10

    if-eq p0, v0, :cond_4

    if-eq p0, v4, :cond_3

    const/16 v5, 0x11

    if-eq p0, v5, :cond_2

    const/16 v5, 0x14

    if-eq p0, v5, :cond_3

    const/16 v5, 0x16

    const/16 v6, 0x8

    if-eq p0, v5, :cond_1

    const/16 v5, 0x2b

    if-eq p0, v5, :cond_6

    const/16 v0, 0x37

    if-eq p0, v0, :cond_5

    const/16 v0, 0x38

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown pixel format "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput v6, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :cond_0
    iput v6, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :cond_1
    const/16 p0, 0x40

    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v6, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :cond_2
    const/16 p0, 0xc

    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :cond_3
    iput v4, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :cond_4
    :pswitch_1
    iput v4, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :cond_5
    const/16 p0, 0x18

    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v3, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :cond_6
    const/16 p0, 0x20

    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o isPublicFormat(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x16

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method
