.class public Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
.super Ljava/lang/Object;
.source "SemWifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_AV:I = 0x7

.field public static final whitelist DEVICE_TYPE_MONITOR:I = 0x17

.field public static final whitelist DEVICE_TYPE_PC:I = 0x4

.field public static final whitelist DEVICE_TYPE_PHONE:I = 0x1

.field public static final whitelist DEVICE_TYPE_REFRIGERATOR:I = 0x9

.field public static final whitelist DEVICE_TYPE_SIGNAGE:I = 0x8

.field public static final whitelist DEVICE_TYPE_SMARTHOME:I = 0x13

.field public static final whitelist DEVICE_TYPE_SPEAKER:I = 0x16

.field public static final whitelist DEVICE_TYPE_TABLET:I = 0x2

.field public static final whitelist DEVICE_TYPE_TV:I = 0x6

.field public static final blacklist DEVICE_TYPE_VST:I = 0x32

.field private static final blacklist FILTER_DEVICE_TYPE:I = 0xff00

.field private static final blacklist FILTER_ICON_INDEX:I = 0xff

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiP2pDevice"


# instance fields
.field private blacklist mDeviceAddress:Ljava/lang/String;

.field private blacklist mDeviceIconAttr:I

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mScreenSharingDi:Ljava/lang/String;

.field private blacklist mScreenSharingExtendedInfo:I

.field private blacklist mScreenSharingInfo:I

.field private blacklist mServiceData:Ljava/lang/String;

.field private blacklist mStatus:I

.field private blacklist mSupportFwInvite:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDeviceAddress(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceIconAttr(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceName(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenSharingDi(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenSharingExtendedInfo(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenSharingInfo(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceData(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatus(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportFwInvite(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->updateAdditionalInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;

    invoke-direct {p1, p3}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getSamsungDeviceType()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getScreenSharingInfo()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getScreenSharingExtendedInfo()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getServiceData()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->isFwInviteSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getScreenSharingDi()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    :cond_0
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

    const-string p1, "SemWifiP2pDevice"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateAdditionalInfo(Ljava/lang/String;)V
    .locals 6

    const-string v0, " ss_dev_info=0x([0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " icon=0x([0-9a-fA-F]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, " service=0x([0-9a-fA-F]*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, " ss_hashed_di=0x([0-9a-fA-F]*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    :cond_3
    const-string v0, " fw_invite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v5, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDeviceAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDeviceIcon()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public whitelist getDeviceType()I
    .locals 1

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public blacklist getScreenSharingExtendedInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    return p0
.end method

.method public blacklist getScreenSharingHashedDi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getScreenSharingInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    return p0
.end method

.method public blacklist getServiceData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isFwInviteSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n screenSharingInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n screenSharingExtendedInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n deviceIconAttr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n serviceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n supportFwInvite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
