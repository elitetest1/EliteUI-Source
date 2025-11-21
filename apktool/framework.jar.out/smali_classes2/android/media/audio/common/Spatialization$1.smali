.class Landroid/media/audio/common/Spatialization$1;
.super Ljava/lang/Object;
.source "Spatialization.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/Spatialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/Spatialization;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/Spatialization;
    .locals 0

    new-instance p0, Landroid/media/audio/common/Spatialization;

    invoke-direct {p0}, Landroid/media/audio/common/Spatialization;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/audio/common/Spatialization;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Landroid/media/audio/common/Spatialization$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/Spatialization;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/audio/common/Spatialization;
    .locals 0

    new-array p0, p1, [Landroid/media/audio/common/Spatialization;

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

    invoke-virtual {p0, p1}, Landroid/media/audio/common/Spatialization$1;->newArray(I)[Landroid/media/audio/common/Spatialization;

    move-result-object p0

    return-object p0
.end method
