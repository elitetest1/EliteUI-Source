.class Landroid/net/TelephonyNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "TelephonyNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TelephonyNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TelephonyNetworkSpecifier;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/TelephonyNetworkSpecifier;
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance p1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-direct {p1, p0}, Landroid/net/TelephonyNetworkSpecifier;-><init>(I)V

    return-object p1
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

    invoke-virtual {p0, p1}, Landroid/net/TelephonyNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TelephonyNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/net/TelephonyNetworkSpecifier;
    .locals 0

    new-array p0, p1, [Landroid/net/TelephonyNetworkSpecifier;

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

    invoke-virtual {p0, p1}, Landroid/net/TelephonyNetworkSpecifier$1;->newArray(I)[Landroid/net/TelephonyNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method
