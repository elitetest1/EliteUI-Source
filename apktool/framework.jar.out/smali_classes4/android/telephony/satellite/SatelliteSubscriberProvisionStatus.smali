.class public final Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
.super Ljava/lang/Object;
.source "SatelliteSubscriberProvisionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mProvisioned:Z

.field private blacklist mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->-$$Nest$fgetmSubscriberInfo(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Landroid/telephony/satellite/SatelliteSubscriberInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->-$$Nest$fgetmProvisioned(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

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
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iget-object v3, p1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    iget-boolean p1, p1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getSatelliteSubscriberInfo()Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isProvisioned()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SatelliteSubscriberInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ProvisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
