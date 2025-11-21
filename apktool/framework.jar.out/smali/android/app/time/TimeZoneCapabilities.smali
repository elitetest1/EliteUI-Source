.class public final Landroid/app/time/TimeZoneCapabilities;
.super Ljava/lang/Object;
.source "TimeZoneCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeZoneCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigureAutoDetectionEnabledCapability:I

.field private final blacklist mConfigureGeoDetectionEnabledCapability:I

.field private final blacklist mConfigureNotificationsEnabledCapability:I

.field private final blacklist mSetManualTimeZoneCapability:I

.field private final blacklist mUseLocationEnabled:Z

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigureNotificationsEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseLocationEnabled(Landroid/app/time/TimeZoneCapabilities;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeZoneCapabilities;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/TimeZoneCapabilities$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneCapabilities$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmUseLocationEnabled(Landroid/app/time/TimeZoneCapabilities$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmSetManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureNotificationsEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result p1

    iput p1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities$Builder;Landroid/app/time/TimeZoneCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/TimeZoneCapabilities;-><init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .locals 2

    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->setUseLocationEnabled(Z)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSetManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureNotificationsEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

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
    check-cast p1, Landroid/app/time/TimeZoneCapabilities;

    iget-object v2, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    iget v3, p1, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    iget-boolean v3, p1, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    iget v3, p1, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    iget v3, p1, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    iget p1, p1, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getConfigureAutoDetectionEnabledCapability()I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method public whitelist getConfigureGeoDetectionEnabledCapability()I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return p0
.end method

.method public blacklist getConfigureNotificationsEnabledCapability()I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    return p0
.end method

.method public whitelist getSetManualTimeZoneCapability()I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isUseLocationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeZoneDetectorCapabilities{mUserHandle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigureAutoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUseLocationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigureGeoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSetManualTimeZoneCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigureNotificationsEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;
    .locals 3

    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>(Landroid/app/time/TimeZoneConfiguration;)V

    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result p1

    if-ge p1, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    :cond_1
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result p1

    if-ge p1, v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    :cond_3
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsNotificationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureNotificationsEnabledCapability()I

    move-result p0

    if-ge p0, v2, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->areNotificationsEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setNotificationsEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget p2, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
