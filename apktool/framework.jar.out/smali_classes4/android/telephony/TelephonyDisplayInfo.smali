.class public final Landroid/telephony/TelephonyDisplayInfo;
.super Ljava/lang/Object;
.source "TelephonyDisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/TelephonyDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist OVERRIDE_NETWORK_TYPE_LTE_ADVANCED_PRO:I = 0x2

.field public static final whitelist OVERRIDE_NETWORK_TYPE_LTE_CA:I = 0x1

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NONE:I = 0x0

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_ADVANCED:I = 0x5

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_NSA:I = 0x3

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_NSA_MMWAVE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist m5gAvailable:Z

.field private final blacklist mIsNtn:Z

.field private final blacklist mIsRoaming:Z

.field private final blacklist mIsSatelliteConstrainedData:Z

.field private final blacklist mNetworkType:I

.field private final blacklist mOverrideNetworkType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/TelephonyDisplayInfo$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyDisplayInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZZZ)V

    return-void
.end method

.method public constructor blacklist <init>(IIZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    iput p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    iput-boolean p3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    iput-boolean p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    return-void
.end method

.method public constructor blacklist <init>(IIZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    iput p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    iput-boolean p3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    iput-boolean p4, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    iput-boolean p5, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    return-void
.end method

.method public static blacklist overrideNetworkTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "NR_ADVANCED"

    return-object p0

    :cond_1
    const-string p0, "NR_NSA_MMWAVE"

    return-object p0

    :cond_2
    const-string p0, "NR_NSA"

    return-object p0

    :cond_3
    const-string p0, "LTE_ADV_PRO"

    return-object p0

    :cond_4
    const-string p0, "LTE_CA"

    return-object p0

    :cond_5
    const-string p0, "NONE"

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
    check-cast p1, Landroid/telephony/TelephonyDisplayInfo;

    iget v2, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    iget v3, p1, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    iget v3, p1, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    iget-boolean v3, p1, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    iget-boolean v3, p1, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    iget-boolean v3, p1, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    iget-boolean p1, p1, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getNetworkType()I
    .locals 0

    iget p0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    return p0
.end method

.method public whitelist getOverrideNetworkType()I
    .locals 0

    iget p0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist is5gAvailable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    return p0
.end method

.method public blacklist isNtn()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    return p0
.end method

.method public whitelist isRoaming()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    return p0
.end method

.method public blacklist isSatelliteConstrainedData()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    return p0
.end method

.method public blacklist set5gAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TelephonyDisplayInfo {network="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", overrideNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSatelliteConstrainedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p0, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
