.class Landroid/hardware/power/ChannelConfig$1;
.super Ljava/lang/Object;
.source "ChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/ChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/power/ChannelConfig;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/ChannelConfig;
    .locals 0

    new-instance p0, Landroid/hardware/power/ChannelConfig;

    invoke-direct {p0}, Landroid/hardware/power/ChannelConfig;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/power/ChannelConfig;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Landroid/hardware/power/ChannelConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/ChannelConfig;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/hardware/power/ChannelConfig;
    .locals 0

    new-array p0, p1, [Landroid/hardware/power/ChannelConfig;

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

    invoke-virtual {p0, p1}, Landroid/hardware/power/ChannelConfig$1;->newArray(I)[Landroid/hardware/power/ChannelConfig;

    move-result-object p0

    return-object p0
.end method
