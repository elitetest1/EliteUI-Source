.class public interface abstract Landroid/media/AudioRouting;
.super Ljava/lang/Object;
.source "AudioRouting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRouting$OnRoutingChangedListener;
    }
.end annotation


# virtual methods
.method public abstract whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
.end method

.method public abstract whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
.end method

.method public abstract whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
.end method

.method public whitelist getRoutedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public abstract whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
.end method

.method public abstract whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
.end method
