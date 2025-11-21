.class public abstract Lcom/samsung/android/allshare/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/Device$DeviceType;,
        Lcom/samsung/android/allshare/Device$InformationType;,
        Lcom/samsung/android/allshare/Device$DeviceDomain;
    }
.end annotation


# direct methods
.method protected constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
.end method

.method public abstract whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
.end method

.method public abstract whitelist getID()Ljava/lang/String;
.end method

.method public abstract whitelist getIPAddress()Ljava/lang/String;
.end method

.method public abstract whitelist getIcon()Landroid/net/Uri;
.end method

.method public abstract blacklist getIconList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getModelName()Ljava/lang/String;
.end method

.method public abstract whitelist getNIC()Ljava/lang/String;
.end method

.method public abstract whitelist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getP2pMacAddress()Ljava/lang/String;
.end method

.method public abstract whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
.end method

.method public abstract whitelist getScreenSharingInfo()Ljava/lang/String;
.end method

.method public abstract blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
.end method

.method public abstract blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
.end method

.method public abstract blacklist getSecProductP2pMacAddr()Ljava/lang/String;
.end method

.method public abstract whitelist isSeekableOnPaused()Z
.end method

.method public abstract blacklist isSupportedByType(I)Z
.end method

.method public abstract whitelist isWholeHomeAudio()Z
.end method

.method public abstract blacklist requestMobileToTV(Ljava/lang/String;I)V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] Name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Ip["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Model["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
