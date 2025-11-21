.class Landroid/telephony/satellite/stub/SatellitePosition$1;
.super Ljava/lang/Object;
.source "SatellitePosition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/SatellitePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/satellite/stub/SatellitePosition;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/satellite/stub/SatellitePosition;
    .locals 0

    new-instance p0, Landroid/telephony/satellite/stub/SatellitePosition;

    invoke-direct {p0}, Landroid/telephony/satellite/stub/SatellitePosition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/SatellitePosition;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/SatellitePosition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/satellite/stub/SatellitePosition;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/telephony/satellite/stub/SatellitePosition;
    .locals 0

    new-array p0, p1, [Landroid/telephony/satellite/stub/SatellitePosition;

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

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/SatellitePosition$1;->newArray(I)[Landroid/telephony/satellite/stub/SatellitePosition;

    move-result-object p0

    return-object p0
.end method
