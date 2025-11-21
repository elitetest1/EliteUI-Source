.class Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams$1;
.super Ljava/lang/Object;
.source "EnableSecureLockDeviceParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;
    .locals 1

    new-instance p0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;-><init>(Landroid/os/Parcel;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams-IA;)V

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

    invoke-virtual {p0, p1}, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;
    .locals 0

    new-array p0, p1, [Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

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

    invoke-virtual {p0, p1}, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams$1;->newArray(I)[Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

    move-result-object p0

    return-object p0
.end method
