.class Landroid/telephony/VopsSupportInfo$1;
.super Ljava/lang/Object;
.source "VopsSupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VopsSupportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/VopsSupportInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VopsSupportInfo;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Landroid/telephony/NrVopsSupportInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/NrVopsSupportInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bad VopsSupportInfo Parcel"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Landroid/telephony/LteVopsSupportInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/LteVopsSupportInfo;

    move-result-object p0

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

    invoke-virtual {p0, p1}, Landroid/telephony/VopsSupportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/telephony/VopsSupportInfo;
    .locals 0

    new-array p0, p1, [Landroid/telephony/VopsSupportInfo;

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

    invoke-virtual {p0, p1}, Landroid/telephony/VopsSupportInfo$1;->newArray(I)[Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    return-object p0
.end method
