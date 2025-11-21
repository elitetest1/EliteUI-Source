.class Landroid/app/admin/DnsEvent$1;
.super Ljava/lang/Object;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DnsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/DnsEvent;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DnsEvent;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Landroid/app/admin/DnsEvent;

    invoke-direct {p0, p1, v1}, Landroid/app/admin/DnsEvent;-><init>(Landroid/os/Parcel;Landroid/app/admin/DnsEvent-IA;)V

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

    invoke-virtual {p0, p1}, Landroid/app/admin/DnsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DnsEvent;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/admin/DnsEvent;
    .locals 0

    new-array p0, p1, [Landroid/app/admin/DnsEvent;

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

    invoke-virtual {p0, p1}, Landroid/app/admin/DnsEvent$1;->newArray(I)[Landroid/app/admin/DnsEvent;

    move-result-object p0

    return-object p0
.end method
