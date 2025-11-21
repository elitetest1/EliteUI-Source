.class public final Landroid/hardware/tv/tuner/FrontendStatus;
.super Ljava/lang/Object;
.source "FrontendStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendStatus$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist agc:I = 0xe

.field public static final blacklist allPlpInfo:I = 0x29

.field public static final blacklist bandwidth:I = 0x19

.field public static final blacklist ber:I = 0x2

.field public static final blacklist bers:I = 0x17

.field public static final blacklist codeRates:I = 0x18

.field public static final blacklist dvbtCellIds:I = 0x28

.field public static final blacklist freqOffset:I = 0x12

.field public static final blacklist hierarchy:I = 0x13

.field public static final blacklist innerFec:I = 0x8

.field public static final blacklist interleaving:I = 0x1e

.field public static final blacklist interval:I = 0x1a

.field public static final blacklist inversion:I = 0xa

.field public static final blacklist iptvAverageJitterMs:I = 0x2e

.field public static final blacklist iptvContentUrl:I = 0x2a

.field public static final blacklist iptvPacketsLost:I = 0x2c

.field public static final blacklist iptvPacketsReceived:I = 0x2b

.field public static final blacklist iptvWorstJitterMs:I = 0x2d

.field public static final blacklist isDemodLocked:I = 0x0

.field public static final blacklist isEWBS:I = 0xd

.field public static final blacklist isLayerError:I = 0x10

.field public static final blacklist isLinear:I = 0x23

.field public static final blacklist isLnaOn:I = 0xf

.field public static final blacklist isMiso:I = 0x22

.field public static final blacklist isRfLocked:I = 0x14

.field public static final blacklist isShortFrames:I = 0x24

.field public static final blacklist isdbtMode:I = 0x25

.field public static final blacklist isdbtSegment:I = 0x1f

.field public static final blacklist lnbVoltage:I = 0xb

.field public static final blacklist mer:I = 0x11

.field public static final blacklist modulationStatus:I = 0x9

.field public static final blacklist modulations:I = 0x16

.field public static final blacklist partialReceptionFlag:I = 0x26

.field public static final blacklist per:I = 0x3

.field public static final blacklist plpId:I = 0xc

.field public static final blacklist plpInfo:I = 0x15

.field public static final blacklist preBer:I = 0x4

.field public static final blacklist rollOff:I = 0x21

.field public static final blacklist signalQuality:I = 0x5

.field public static final blacklist signalStrength:I = 0x6

.field public static final blacklist snr:I = 0x1

.field public static final blacklist standardExt:I = 0x2f

.field public static final blacklist streamIdList:I = 0x27

.field public static final blacklist symbolRate:I = 0x7

.field public static final blacklist systemId:I = 0x1d

.field public static final blacklist transmissionMode:I = 0x1b

.field public static final blacklist tsDataRate:I = 0x20

.field public static final blacklist uec:I = 0x1c


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "standardExt"

    return-object p0

    :pswitch_1
    const-string p0, "iptvAverageJitterMs"

    return-object p0

    :pswitch_2
    const-string p0, "iptvWorstJitterMs"

    return-object p0

    :pswitch_3
    const-string p0, "iptvPacketsLost"

    return-object p0

    :pswitch_4
    const-string p0, "iptvPacketsReceived"

    return-object p0

    :pswitch_5
    const-string p0, "iptvContentUrl"

    return-object p0

    :pswitch_6
    const-string p0, "allPlpInfo"

    return-object p0

    :pswitch_7
    const-string p0, "dvbtCellIds"

    return-object p0

    :pswitch_8
    const-string p0, "streamIdList"

    return-object p0

    :pswitch_9
    const-string p0, "partialReceptionFlag"

    return-object p0

    :pswitch_a
    const-string p0, "isdbtMode"

    return-object p0

    :pswitch_b
    const-string p0, "isShortFrames"

    return-object p0

    :pswitch_c
    const-string p0, "isLinear"

    return-object p0

    :pswitch_d
    const-string p0, "isMiso"

    return-object p0

    :pswitch_e
    const-string p0, "rollOff"

    return-object p0

    :pswitch_f
    const-string p0, "tsDataRate"

    return-object p0

    :pswitch_10
    const-string p0, "isdbtSegment"

    return-object p0

    :pswitch_11
    const-string p0, "interleaving"

    return-object p0

    :pswitch_12
    const-string p0, "systemId"

    return-object p0

    :pswitch_13
    const-string p0, "uec"

    return-object p0

    :pswitch_14
    const-string p0, "transmissionMode"

    return-object p0

    :pswitch_15
    const-string p0, "interval"

    return-object p0

    :pswitch_16
    const-string p0, "bandwidth"

    return-object p0

    :pswitch_17
    const-string p0, "codeRates"

    return-object p0

    :pswitch_18
    const-string p0, "bers"

    return-object p0

    :pswitch_19
    const-string p0, "modulations"

    return-object p0

    :pswitch_1a
    const-string p0, "plpInfo"

    return-object p0

    :pswitch_1b
    const-string p0, "isRfLocked"

    return-object p0

    :pswitch_1c
    const-string p0, "hierarchy"

    return-object p0

    :pswitch_1d
    const-string p0, "freqOffset"

    return-object p0

    :pswitch_1e
    const-string p0, "mer"

    return-object p0

    :pswitch_1f
    const-string p0, "isLayerError"

    return-object p0

    :pswitch_20
    const-string p0, "isLnaOn"

    return-object p0

    :pswitch_21
    const-string p0, "agc"

    return-object p0

    :pswitch_22
    const-string p0, "isEWBS"

    return-object p0

    :pswitch_23
    const-string p0, "plpId"

    return-object p0

    :pswitch_24
    const-string p0, "lnbVoltage"

    return-object p0

    :pswitch_25
    const-string p0, "inversion"

    return-object p0

    :pswitch_26
    const-string p0, "modulationStatus"

    return-object p0

    :pswitch_27
    const-string p0, "innerFec"

    return-object p0

    :pswitch_28
    const-string p0, "symbolRate"

    return-object p0

    :pswitch_29
    const-string p0, "signalStrength"

    return-object p0

    :pswitch_2a
    const-string p0, "signalQuality"

    return-object p0

    :pswitch_2b
    const-string p0, "preBer"

    return-object p0

    :pswitch_2c
    const-string p0, "per"

    return-object p0

    :pswitch_2d
    const-string p0, "ber"

    return-object p0

    :pswitch_2e
    const-string p0, "snr"

    return-object p0

    :pswitch_2f
    const-string p0, "isDemodLocked"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
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
.end method

.method public static blacklist agc(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xe

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist allPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x29

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ber(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bers([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist codeRates([J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public static blacklist dvbtCellIds([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x28

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist freqOffset(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x12

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hierarchy(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x13

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist innerFec(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x8

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist interleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist interval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist inversion(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvAverageJitterMs(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvContentUrl(Ljava/lang/String;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvPacketsLost(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2c

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvPacketsReceived(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2b

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvWorstJitterMs(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isDemodLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isEWBS(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xd

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLayerError([Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLinear(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x23

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLnaOn(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xf

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isMiso(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x22

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isRfLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x14

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isShortFrames(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x24

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtMode(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x25

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtSegment([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist lnbVoltage(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x11

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulations([Landroid/hardware/tv/tuner/FrontendModulation;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist partialReceptionFlag(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x26

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist per(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xc

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist preBer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x21

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist signalQuality(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist signalStrength(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist snr(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist standardExt(Landroid/hardware/tv/tuner/FrontendStandardExt;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist streamIdList([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x27

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist symbolRate(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist systemId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist transmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tsDataRate([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x20

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist uec(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v1, 0x29

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStandardExt()Landroid/hardware/tv/tuner/FrontendStandardExt;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAgc()I
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    return-object p0
.end method

.method public blacklist getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    return-object p0
.end method

.method public blacklist getBer()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getBers()[I
    .locals 1

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public blacklist getCodeRates()[J
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [J

    return-object p0
.end method

.method public blacklist getDvbtCellIds()[I
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public blacklist getFreqOffset()J
    .locals 2

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getHierarchy()I
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getInnerFec()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    return-object p0
.end method

.method public blacklist getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    return-object p0
.end method

.method public blacklist getInversion()I
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getIptvAverageJitterMs()I
    .locals 1

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getIptvContentUrl()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIptvPacketsLost()J
    .locals 2

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getIptvPacketsReceived()J
    .locals 2

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getIptvWorstJitterMs()I
    .locals 1

    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getIsDemodLocked()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIsEWBS()Z
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIsLayerError()[Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [Z

    return-object p0
.end method

.method public blacklist getIsLinear()Z
    .locals 1

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIsLnaOn()Z
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIsMiso()Z
    .locals 1

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIsRfLocked()Z
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIsShortFrames()Z
    .locals 1

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIsdbtMode()I
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getIsdbtSegment()[I
    .locals 1

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public blacklist getLnbVoltage()I
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getMer()I
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    return-object p0
.end method

.method public blacklist getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [Landroid/hardware/tv/tuner/FrontendModulation;

    return-object p0
.end method

.method public blacklist getPartialReceptionFlag()I
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getPer()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getPlpId()I
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    return-object p0
.end method

.method public blacklist getPreBer()I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/tuner/FrontendRollOff;

    return-object p0
.end method

.method public blacklist getSignalQuality()I
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getSignalStrength()I
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getSnr()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final whitelist getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getStandardExt()Landroid/hardware/tv/tuner/FrontendStandardExt;
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/tuner/FrontendStandardExt;

    return-object p0
.end method

.method public blacklist getStreamIdList()[I
    .locals 1

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public blacklist getSymbolRate()I
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getSystemId()I
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getTag()I
    .locals 0

    iget p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    return p0
.end method

.method public blacklist getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    .locals 1

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    return-object p0
.end method

.method public blacklist getTsDataRate()[I
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public blacklist getUec()I
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "union: unknown tag: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object v1, Landroid/hardware/tv/tuner/FrontendStandardExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/FrontendStandardExt;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_6
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_e
    sget-object v1, Landroid/hardware/tv/tuner/FrontendRollOff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/FrontendRollOff;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_11
    sget-object v1, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_14
    sget-object v1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_15
    sget-object v1, Landroid/hardware/tv/tuner/FrontendGuardInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_16
    sget-object v1, Landroid/hardware/tv/tuner/FrontendBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/FrontendBandwidth;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_19
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1a
    sget-object v1, Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_26
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
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
.end method

.method public blacklist setAgc(I)V
    .locals 1

    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setAllPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)V
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setBandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)V
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setBer(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setBers([I)V
    .locals 1

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setCodeRates([J)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setDvbtCellIds([I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setFreqOffset(J)V
    .locals 1

    const/16 v0, 0x12

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setHierarchy(I)V
    .locals 1

    const/16 v0, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setInnerFec(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setInterleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)V
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setInterval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setInversion(I)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIptvAverageJitterMs(I)V
    .locals 1

    const/16 v0, 0x2e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIptvContentUrl(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIptvPacketsLost(J)V
    .locals 1

    const/16 v0, 0x2c

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIptvPacketsReceived(J)V
    .locals 1

    const/16 v0, 0x2b

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIptvWorstJitterMs(I)V
    .locals 1

    const/16 v0, 0x2d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsDemodLocked(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsEWBS(Z)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsLayerError([Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsLinear(Z)V
    .locals 1

    const/16 v0, 0x23

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsLnaOn(Z)V
    .locals 1

    const/16 v0, 0xf

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsMiso(Z)V
    .locals 1

    const/16 v0, 0x22

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsRfLocked(Z)V
    .locals 1

    const/16 v0, 0x14

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsShortFrames(Z)V
    .locals 1

    const/16 v0, 0x24

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsdbtMode(I)V
    .locals 1

    const/16 v0, 0x25

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIsdbtSegment([I)V
    .locals 1

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setLnbVoltage(I)V
    .locals 1

    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setMer(I)V
    .locals 1

    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setModulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setModulations([Landroid/hardware/tv/tuner/FrontendModulation;)V
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setPartialReceptionFlag(I)V
    .locals 1

    const/16 v0, 0x26

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setPer(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setPlpId(I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setPlpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)V
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setPreBer(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setRollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)V
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSignalQuality(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSignalStrength(I)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSnr(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setStandardExt(Landroid/hardware/tv/tuner/FrontendStandardExt;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setStreamIdList([I)V
    .locals 1

    const/16 v0, 0x27

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSymbolRate(I)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSystemId(I)V
    .locals 1

    const/16 v0, 0x1d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setTransmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setTsDataRate([I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setUec(I)V
    .locals 1

    const/16 v0, 0x1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStandardExt()Landroid/hardware/tv/tuner/FrontendStandardExt;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvAverageJitterMs()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvWorstJitterMs()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvPacketsLost()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvPacketsReceived()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvContentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getDvbtCellIds()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStreamIdList()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPartialReceptionFlag()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtMode()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsShortFrames()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLinear()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsMiso()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTsDataRate()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtSegment()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void

    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSystemId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getUec()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getCodeRates()[J

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void

    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBers()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void

    :pswitch_1a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void

    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsRfLocked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getHierarchy()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getFreqOffset()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getMer()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLayerError()[Z

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void

    :pswitch_20
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLnaOn()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_21
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAgc()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_22
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsEWBS()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_24
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getLnbVoltage()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_25
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInversion()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInnerFec()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSymbolRate()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_29
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalStrength()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalQuality()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPreBer()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPer()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBer()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSnr()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsDemodLocked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
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
.end method
