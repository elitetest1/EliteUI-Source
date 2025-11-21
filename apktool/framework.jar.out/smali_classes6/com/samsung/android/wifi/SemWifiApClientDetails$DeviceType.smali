.class public final Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;
.super Ljava/lang/Object;
.source "SemWifiApClientDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApClientDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceType"
.end annotation


# static fields
.field public static final blacklist DEVICE_TYPE_FLIP:I = 0x6

.field public static final blacklist DEVICE_TYPE_FOLD:I = 0x2

.field public static final blacklist DEVICE_TYPE_LAPTOP:I = 0x9

.field public static final blacklist DEVICE_TYPE_MOBILE:I = 0x1

.field public static final blacklist DEVICE_TYPE_SPEAKER:I = 0x5

.field public static final blacklist DEVICE_TYPE_TABLET:I = 0x3

.field public static final blacklist DEVICE_TYPE_TV:I = 0x4

.field public static final blacklist DEVICE_TYPE_UNDEFINE:I = 0x0

.field public static final blacklist DEVICE_TYPE_VST:I = 0x8

.field public static final blacklist DEVICE_TYPE_WATCH:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDeviceTypeAsString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "laptop"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "vst"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "watch"

    return-object p0

    :pswitch_3
    const-string p0, "flip"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "speaker"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "tv"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "tablet"

    return-object p0

    :pswitch_7
    const-string p0, "fold"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "phone"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isValidDeviceType(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
