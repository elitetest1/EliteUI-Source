.class Landroid/media/quality/SoundProfileHandle$1;
.super Ljava/lang/Object;
.source "SoundProfileHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/SoundProfileHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/quality/SoundProfileHandle;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/quality/SoundProfileHandle;
    .locals 0

    new-instance p0, Landroid/media/quality/SoundProfileHandle;

    invoke-direct {p0}, Landroid/media/quality/SoundProfileHandle;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/quality/SoundProfileHandle;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Landroid/media/quality/SoundProfileHandle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/quality/SoundProfileHandle;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/quality/SoundProfileHandle;
    .locals 0

    new-array p0, p1, [Landroid/media/quality/SoundProfileHandle;

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

    invoke-virtual {p0, p1}, Landroid/media/quality/SoundProfileHandle$1;->newArray(I)[Landroid/media/quality/SoundProfileHandle;

    move-result-object p0

    return-object p0
.end method
