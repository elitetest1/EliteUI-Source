.class Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment$1;
.super Ljava/lang/Object;
.source "NextEnrollment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
    .locals 0

    new-instance p0, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
    .locals 0

    new-array p0, p1, [Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment$1;->newArray(I)[Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    move-result-object p0

    return-object p0
.end method
