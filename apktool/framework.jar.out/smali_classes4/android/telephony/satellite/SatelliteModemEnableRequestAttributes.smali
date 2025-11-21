.class public final Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;
.super Ljava/lang/Object;
.source "SatelliteModemEnableRequestAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsEnabled:Z

.field private final blacklist mIsForDemoMode:Z

.field private final blacklist mIsForEmergencyMode:Z

.field private final blacklist mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    const-class v0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZZZLandroid/telephony/satellite/SatelliteSubscriptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    iput-boolean p2, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    iput-boolean p3, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    iput-object p4, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    return-void
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
    check-cast p1, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;

    iget-boolean v2, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    iget-boolean v3, p1, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    iget-boolean v3, p1, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    iget-boolean v3, p1, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    iget-object p1, p1, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getSatelliteSubscriptionInfo()Landroid/telephony/satellite/SatelliteSubscriptionInfo;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    return p0
.end method

.method public blacklist isForDemoMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    return p0
.end method

.method public blacklist isForEmergencyMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SatelliteModemEnableRequestAttributes{, mIsEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsForDemoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsForEmergencyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSatelliteSubscriptionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
