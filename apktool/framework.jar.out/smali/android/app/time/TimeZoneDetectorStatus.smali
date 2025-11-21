.class public final Landroid/app/time/TimeZoneDetectorStatus;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneDetectorStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDetectorStatus:I

.field private final blacklist mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

.field private final blacklist mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/TimeZoneDetectorStatus$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneDetectorStatus$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneDetectorStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/time/TelephonyTimeZoneAlgorithmStatus;Landroid/app/time/LocationTimeZoneAlgorithmStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->requireValidDetectorStatus(I)I

    move-result p1

    iput p1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iput-object p1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iput-object p1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

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
    check-cast p1, Landroid/app/time/TimeZoneDetectorStatus;

    iget v2, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    iget v3, p1, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iget-object v3, p1, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {v2, v3}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iget-object p1, p1, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {p0, p1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getDetectorStatus()I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    return p0
.end method

.method public blacklist getLocationTimeZoneAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    return-object p0
.end method

.method public blacklist getTelephonyTimeZoneAlgorithmStatus()Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iget-object p0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeZoneDetectorStatus{mDetectorStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-static {v1}, Landroid/app/time/DetectorStatusTypes;->detectorStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTelephonyTimeZoneAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocationTimeZoneAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
