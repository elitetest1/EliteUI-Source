.class public final Landroid/telephony/PreciseDataConnectionState;
.super Ljava/lang/Object;
.source "PreciseDataConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PreciseDataConnectionState$Builder;,
        Landroid/telephony/PreciseDataConnectionState$NetworkValidationStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GET_DATA_CONNECTION_STATE_R_VERSION:J = 0x8da79b8L

.field public static final whitelist NETWORK_VALIDATION_FAILURE:I = 0x4

.field public static final whitelist NETWORK_VALIDATION_IN_PROGRESS:I = 0x2

.field public static final whitelist NETWORK_VALIDATION_NOT_REQUESTED:I = 0x1

.field public static final whitelist NETWORK_VALIDATION_SUCCESS:I = 0x3

.field public static final whitelist NETWORK_VALIDATION_UNSUPPORTED:I


# instance fields
.field private final blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private final blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mFailCause:I

.field private final blacklist mId:I

.field private final greylist-max-o mLinkProperties:Landroid/net/LinkProperties;

.field private final blacklist mNetId:I

.field private final greylist-max-o mNetworkType:I

.field private final blacklist mNetworkValidationStatus:I

.field private final greylist-max-o mState:I

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/PreciseDataConnectionState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$1;-><init>()V

    sput-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    iput p2, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    iput p3, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    iput p4, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    iput p5, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    iput-object p6, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    iput p7, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    iput-object p8, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iput-object p9, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    iput p10, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;ILandroid/telephony/PreciseDataConnectionState-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;I)V

    return-void
.end method

.method public constructor greylist-max-r <init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    invoke-virtual {v1, p3}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;I)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    const-class v0, Landroid/net/LinkProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    const-class v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const-class v0, Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PreciseDataConnectionState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PreciseDataConnectionState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist networkValidationStatusToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "failure"

    return-object p0

    :cond_1
    const-string/jumbo p0, "success"

    return-object p0

    :cond_2
    const-string p0, "in progress"

    return-object p0

    :cond_3
    const-string/jumbo p0, "not requested"

    return-object p0

    :cond_4
    const-string/jumbo p0, "unsupported"

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/PreciseDataConnectionState;

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    iget v3, p1, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    iget v3, p1, Landroid/telephony/PreciseDataConnectionState;->mId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    iget v3, p1, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    iget v3, p1, Landroid/telephony/PreciseDataConnectionState;->mState:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    iget v3, p1, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    iget v3, p1, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    iget p1, p1, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 0

    iget-object p0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method public whitelist getDataConnectionApn()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public whitelist getDataConnectionApnTypeBitMask()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getDataConnectionFailCause()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    return p0
.end method

.method public whitelist getDataConnectionState()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-wide/32 v0, 0x8da79b8

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    return p0
.end method

.method public blacklist getDefaultQos()Landroid/telephony/data/Qos;
    .locals 0

    iget-object p0, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    return p0
.end method

.method public whitelist getLastCauseCode()I
    .locals 0

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    return p0
.end method

.method public whitelist getLinkProperties()Landroid/net/LinkProperties;
    .locals 0

    iget-object p0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public blacklist getNetId()I
    .locals 0

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    return p0
.end method

.method public whitelist getNetworkType()I
    .locals 0

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    return p0
.end method

.method public whitelist getNetworkValidationStatus()I
    .locals 0

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    return p0
.end method

.method public whitelist getState()I
    .locals 0

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    return p0
.end method

.method public whitelist getTransportType()I
    .locals 0

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 11

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v8, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v9, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", network type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", APN Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", default QoS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fail cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", network validation status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    invoke-static {p0}, Landroid/telephony/PreciseDataConnectionState;->networkValidationStatusToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
