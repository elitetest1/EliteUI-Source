.class public final Lcom/samsung/android/wifi/SemMobileWipsScanResult;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;,
        Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;,
        Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;
    }
.end annotation


# static fields
.field public static final blacklist CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final blacklist CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final blacklist CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final blacklist CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final blacklist CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final blacklist CIPHER_CCMP:I = 0x3

.field public static final blacklist CIPHER_GCMP_256:I = 0x4

.field public static final blacklist CIPHER_NONE:I = 0x0

.field public static final blacklist CIPHER_NO_GROUP_ADDRESSED:I = 0x1

.field public static final blacklist CIPHER_SMS4:I = 0x5

.field public static final blacklist CIPHER_TKIP:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final blacklist FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final blacklist KEY_MGMT_EAP:I = 0x2

.field public static final blacklist KEY_MGMT_EAP_SHA256:I = 0x6

.field public static final blacklist KEY_MGMT_EAP_SUITE_B_192:I = 0xa

.field public static final blacklist KEY_MGMT_FILS_SHA256:I = 0xf

.field public static final blacklist KEY_MGMT_FILS_SHA384:I = 0x10

.field public static final blacklist KEY_MGMT_FT_EAP:I = 0x4

.field public static final blacklist KEY_MGMT_FT_PSK:I = 0x3

.field public static final blacklist KEY_MGMT_FT_SAE:I = 0xb

.field public static final blacklist KEY_MGMT_NONE:I = 0x0

.field public static final blacklist KEY_MGMT_OSEN:I = 0x7

.field public static final blacklist KEY_MGMT_OWE:I = 0x9

.field public static final blacklist KEY_MGMT_OWE_TRANSITION:I = 0xc

.field public static final blacklist KEY_MGMT_PSK:I = 0x1

.field public static final blacklist KEY_MGMT_PSK_SHA256:I = 0x5

.field public static final blacklist KEY_MGMT_SAE:I = 0x8

.field public static final blacklist KEY_MGMT_WAPI_CERT:I = 0xe

.field public static final blacklist KEY_MGMT_WAPI_PSK:I = 0xd

.field public static final blacklist PROTOCOL_NONE:I = 0x0

.field public static final blacklist PROTOCOL_OSEN:I = 0x3

.field public static final blacklist PROTOCOL_RSN:I = 0x2

.field public static final blacklist PROTOCOL_WAPI:I = 0x4

.field public static final blacklist PROTOCOL_WPA:I = 0x1

.field public static final blacklist UNSPECIFIED:I = -0x1

.field public static final blacklist WIFI_STANDARD_11AC:I = 0x5

.field public static final blacklist WIFI_STANDARD_11AX:I = 0x6

.field public static final blacklist WIFI_STANDARD_11N:I = 0x4

.field public static final blacklist WIFI_STANDARD_LEGACY:I = 0x1

.field public static final blacklist WIFI_STANDARD_UNKNOWN:I


# instance fields
.field public blacklist BSSID:Ljava/lang/String;

.field public blacklist SSID:Ljava/lang/String;

.field public blacklist anqpDomainId:I

.field public blacklist anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

.field public blacklist anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist capabilities:Ljava/lang/String;

.field public blacklist centerFreq0:I

.field public blacklist centerFreq1:I

.field public blacklist channelWidth:I

.field public blacklist distanceCm:I

.field public blacklist distanceSdCm:I

.field public blacklist flags:J

.field public blacklist frequency:I

.field public blacklist hessid:J

.field public blacklist ifaceName:Ljava/lang/String;

.field public blacklist informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

.field public blacklist is80211McRTTResponder:Z

.field public blacklist level:I

.field private blacklist mWifiStandard:I

.field public blacklist numUsage:I

.field public blacklist operatorFriendlyName:Ljava/lang/CharSequence;

.field public blacklist radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

.field public blacklist seen:J

.field public blacklist timestamp:J

.field public blacklist untrusted:Z

.field public blacklist venueName:Ljava/lang/CharSequence;

.field public blacklist wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmWifiStandard(Lcom/samsung/android/wifi/SemMobileWipsScanResult;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsScanResult;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    iget-object p1, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "<unknown ssid>"

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    iput p5, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    const/4 p1, 0x0

    if-eqz p6, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    new-instance p3, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    const p4, 0x506f9a

    const/16 p5, 0x8

    invoke-direct {p3, p4, p5, p6}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;-><init>(II[B)V

    aput-object p3, p2, p1

    :cond_1
    iput-object p7, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    iput p8, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    iput p9, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    iput-wide p10, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    iput p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    iput p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    iput p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    iput p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "<unknown ssid>"

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    iput p5, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    iput-wide p6, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    iput p8, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    iput p9, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    invoke-direct/range {v0 .. v16}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    iput p5, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    iput-object p6, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    iput p8, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    iput-wide p9, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    iput p11, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    iput p12, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    iput p13, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    iput p14, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    iput p15, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    if-eqz p16, :cond_0

    const-wide/16 p1, 0x2

    iput-wide p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return-void
.end method

.method public static blacklist is24GHz(I)Z
    .locals 1

    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist is5GHz(I)Z
    .locals 1

    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist is6GHz(I)Z
    .locals 1

    const/16 v0, 0x1725

    if-le p0, v0, :cond_0

    const/16 v0, 0x1bd5

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist wifiStandardToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "11ax"

    return-object p0

    :cond_1
    const-string p0, "11ac"

    return-object p0

    :cond_2
    const-string p0, "11n"

    return-object p0

    :cond_3
    const-string p0, "legacy"

    return-object p0

    :cond_4
    const-string/jumbo p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public blacklist clearFlag(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getInformationElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWifiStandard()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return p0
.end method

.method public blacklist is24GHz()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-static {p0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->is24GHz(I)Z

    move-result p0

    return p0
.end method

.method public blacklist is5GHz()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-static {p0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->is5GHz(I)Z

    move-result p0

    return p0
.end method

.method public blacklist is6GHz()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-static {p0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->is6GHz(I)Z

    move-result p0

    return p0
.end method

.method public blacklist is80211mcResponder()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPasspointNetwork()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setFlag(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    return-void
.end method

.method public blacklist setWifiStandard(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    if-nez v1, :cond_0

    const-string v1, "<unknown ssid>"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    const-string v3, "<none>"

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", frequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    const-string v3, "?"

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(cm), distanceSd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    if-eq v1, v4, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(cm), passpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const-string/jumbo v1, "yes"

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "no"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", ChannelBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    invoke-static {v2}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", 80211mcResponder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v5, 0x2

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const-string v1, "is supported"

    goto :goto_3

    :cond_6
    const-string v1, "is not supported"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Radio Chain Infos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", interface name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move p2, v1

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    if-eqz p2, :cond_5

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    array-length v0, p2

    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_6

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getVendorId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getElementId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getPayload()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getPayload()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    if-eqz p2, :cond_7

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    array-length v0, p2

    if-ge v1, v0, :cond_8

    aget-object p2, p2, v1

    iget p2, p2, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object p2, p2, v1

    iget p2, p2, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
