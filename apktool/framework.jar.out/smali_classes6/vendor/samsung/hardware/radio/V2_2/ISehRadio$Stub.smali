.class public abstract Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadio.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_2/ISehRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_2/ISehRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 2

    new-instance p0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    filled-new-array {v1, v2, v3, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_0
    .array-data 1
        -0x4et
        -0x12t
        0x5bt
        0x1t
        -0x7ft
        -0x33t
        0x8t
        -0x25t
        0x20t
        0x0t
        0x6t
        0x7ft
        -0x3ft
        -0x3at
        -0x28t
        0x7t
        0x2t
        0x6at
        0x59t
        -0x49t
        -0x24t
        -0x1dt
        0x4ct
        0x6et
        -0x1at
        -0x6et
        -0x51t
        0x1et
        -0x79t
        0x68t
        0x13t
        0x60t
    .end array-data

    :array_1
    .array-data 1
        0x6t
        -0x59t
        0x68t
        0x7et
        0x2t
        0xft
        -0x7et
        0x8t
        -0x1at
        -0xet
        0x9t
        -0x9t
        -0x61t
        -0x3et
        -0x3ct
        -0x5t
        0x69t
        -0x15t
        0x12t
        0xet
        -0x7ft
        -0x1at
        -0x53t
        -0x6t
        -0x15t
        0x1at
        -0x45t
        -0x6et
        -0x54t
        0x2dt
        -0x53t
        -0x71t
    .end array-data

    :array_2
    .array-data 1
        0x68t
        0x4bt
        -0x5at
        0x4ft
        0x7bt
        -0x6ct
        0xct
        0x3et
        0x4ct
        -0xdt
        0x6dt
        -0x34t
        0x5et
        0x6ct
        0x11t
        -0x80t
        -0x46t
        -0x5dt
        0x5bt
        -0x6ct
        -0x22t
        -0x64t
        -0x30t
        -0x3ft
        -0x1ct
        -0x78t
        0x5dt
        0xft
        0x20t
        -0x2et
        0x7dt
        0x6bt
    .end array-data

    :array_3
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    const-string/jumbo v3, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    return-object p0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo p4, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    const/4 v1, 0x0

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    packed-switch p1, :pswitch_data_0

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->notifySyspropsChanged()V

    return-void

    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->ping()V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setHALInstrumentation()V

    return-void

    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v1, p2, :cond_1

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setVendorSpecificConfiguration(ILjava/util/ArrayList;)V

    return-void

    :pswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getVendorSpecificConfiguration(I)V

    return-void

    :pswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setNrMode_2_2(IIZ)V

    return-void

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getNrIconType(I)V

    return-void

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getNrMode(I)V

    return-void

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setNrMode(II)V

    return-void

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    return-void

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    return-void

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setMobileDataSetting(IZZ)V

    return-void

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    new-instance p4, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;

    invoke-direct {p4}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;-><init>()V

    invoke-virtual {p4, p2}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p3, p4}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setDataAllowed(IZLvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;)V

    return-void

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    invoke-direct {p3}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;-><init>()V

    invoke-virtual {p3, p2}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->selectCsgManual(ILvendor/samsung/hardware/radio/V2_0/SehCsgInfo;)V

    return-void

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCsgList(I)V

    return-void

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p3, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {p3}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    invoke-virtual {p3, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->writeSmsToSim(ILvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    return-void

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->readSmsFromSim(II)V

    return-void

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getStoredMsgCountFromSim(I)V

    return-void

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p3, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    return-void

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p3, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p3, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getAtr(I)V

    return-void

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->emergencyControl(II)V

    return-void

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->emergencySearch(I)V

    return-void

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCellBroadcastConfig(I)V

    return-void

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;-><init>()V

    invoke-virtual {v5, p2}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/V2_0/SehAdnRecord;Ljava/lang/String;)V

    return-void

    :pswitch_18
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getPhonebookEntry(III)V

    return-void

    :pswitch_19
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    new-instance p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void

    :pswitch_1a
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1b
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->supplyIccPersonalization(ILjava/lang/String;)V

    return-void

    :pswitch_1c
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getSimLockInfo(III)V

    return-void

    :pswitch_1d
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setSimInitEvent(I)V

    return-void

    :pswitch_1e
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setSimOnOff(II)V

    return-void

    :pswitch_1f
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getUsimPhonebookCapability(I)V

    return-void

    :pswitch_20
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getPhonebookStorageInfo(II)V

    return-void

    :pswitch_21
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCnap(I)V

    return-void

    :pswitch_22
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setDisable2g(II)V

    return-void

    :pswitch_23
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getDisable2g(I)V

    return-void

    :pswitch_24
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    new-instance p1, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;

    invoke-direct {p1}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;-><init>()V

    invoke-virtual {p1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendEncodedUssd(ILvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;)V

    return-void

    :pswitch_25
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    new-instance p1, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    invoke-direct {p1}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;-><init>()V

    invoke-virtual {p1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;)V

    return-void

    :pswitch_26
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getPreferredNetworkList(I)V

    return-void

    :pswitch_27
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setImsCallList(ILjava/util/ArrayList;)V

    return-void

    :pswitch_28
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getAvailableNetworks(I)V

    return-void

    :pswitch_29
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getImsRegistrationState(I)V

    return-void

    :pswitch_2a
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCurrentCalls(I)V

    return-void

    :pswitch_2b
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    new-instance p1, Lvendor/samsung/hardware/radio/V2_0/SehDial;

    invoke-direct {p1}, Lvendor/samsung/hardware/radio/V2_0/SehDial;-><init>()V

    invoke-virtual {p1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehDial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->dial(ILvendor/samsung/hardware/radio/V2_0/SehDial;)V

    return-void

    :pswitch_2c
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    return-void

    :pswitch_2d
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    invoke-virtual {v0, p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getIccCardStatus(I)V

    return-void

    :pswitch_2e
    move-object v0, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .locals 0

    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
