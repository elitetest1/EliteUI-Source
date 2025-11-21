.class Landroid/service/timezone/TimeZoneProviderStatus$1;
.super Ljava/lang/Object;
.source "TimeZoneProviderStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderStatus;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance v1, Landroid/service/timezone/TimeZoneProviderStatus;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/service/timezone/TimeZoneProviderStatus;-><init>(IIILandroid/service/timezone/TimeZoneProviderStatus-IA;)V

    return-object v1
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

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 0

    new-array p0, p1, [Landroid/service/timezone/TimeZoneProviderStatus;

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

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderStatus$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p0

    return-object p0
.end method
