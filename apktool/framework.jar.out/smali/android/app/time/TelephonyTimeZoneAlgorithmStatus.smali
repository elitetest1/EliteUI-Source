.class public final Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneAlgorithmStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlgorithmStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus$1;

    invoke-direct {v0}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus$1;-><init>()V

    sput-object v0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->requireValidDetectionAlgorithmStatus(I)I

    move-result p1

    iput p1, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

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
    check-cast p1, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iget p0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    iget p1, p1, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAlgorithmStatus()I
    .locals 0

    iget p0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TelephonyTimeZoneAlgorithmStatus{mAlgorithmStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    invoke-static {p0}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
