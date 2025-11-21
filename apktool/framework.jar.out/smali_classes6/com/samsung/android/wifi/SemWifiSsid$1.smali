.class Lcom/samsung/android/wifi/SemWifiSsid$1;
.super Ljava/lang/Object;
.source "SemWifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiSsid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemWifiSsid;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemWifiSsid;
    .locals 3

    new-instance p0, Lcom/samsung/android/wifi/SemWifiSsid;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemWifiSsid;-><init>(Lcom/samsung/android/wifi/SemWifiSsid-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    iget-object p1, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemWifiSsid;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemWifiSsid;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/wifi/SemWifiSsid;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiSsid$1;->newArray(I)[Lcom/samsung/android/wifi/SemWifiSsid;

    move-result-object p0

    return-object p0
.end method
