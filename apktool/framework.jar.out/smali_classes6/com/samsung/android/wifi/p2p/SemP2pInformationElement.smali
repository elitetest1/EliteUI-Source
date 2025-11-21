.class public Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;
.super Ljava/lang/Object;
.source "SemP2pInformationElement.java"


# static fields
.field private static final blacklist DISCOVERY_ATTR_ICON:I = 0x0

.field private static final blacklist DISCOVERY_ATTR_SERVICE_DATA:I = 0x3

.field private static final blacklist FW_INVITE_OUI:I = 0xf00d

.field private static final blacklist P2P_DEVICE_DISCOVERY_OUI:I = 0xf00f

.field private static final blacklist SCREEN_SHARING_ATTR_DEV_INFO:I = 0x0

.field private static final blacklist SCREEN_SHARING_ATTR_DI_HASH:I = 0x3

.field private static final blacklist SCREEN_SHARING_ATTR_EXTENDED_INFO:I = 0x8

.field private static final blacklist SCREEN_SHARING_OUI:I = 0xf00c

.field private static final blacklist TAG:Ljava/lang/String; = "SemP2pInformationElement"


# instance fields
.field private blacklist mFwInviteSupported:Z

.field private blacklist mSamsungDeviceType:I

.field private blacklist mScreenSharingDi:Ljava/lang/String;

.field private blacklist mScreenSharingExtendedInfo:I

.field private blacklist mScreenSharingInfo:I

.field private blacklist mServiceData:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingExtendedInfo:I

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v0}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseDiscoveryIe(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseFwInviteIe()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseScreenSharingIe(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf00c
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist byteArrayToHexString([B)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist parseDiscoveryIe(Ljava/nio/ByteBuffer;)V
    .locals 3

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist parseFwInviteIe()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    return-void
.end method

.method private blacklist parseHex(Ljava/lang/String;)I
    .locals 1

    const-string p0, "0x"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "0X"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 p0, 0x10

    :try_start_0
    invoke-static {p1, p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse hex string "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemP2pInformationElement"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist parseScreenSharingIe(Ljava/nio/ByteBuffer;)V
    .locals 3

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingExtendedInfo:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist getSamsungDeviceType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    return p0
.end method

.method public blacklist getScreenSharingDi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getScreenSharingExtendedInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingExtendedInfo:I

    return p0
.end method

.method public blacklist getScreenSharingInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    return p0
.end method

.method public blacklist getServiceData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isFwInviteSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    return p0
.end method
