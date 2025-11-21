.class public Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;
.super Ljava/lang/Object;
.source "SemWifiP2pDeviceList.java"


# instance fields
.field private final blacklist mDevices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private blacklist isInvalidDevice(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist clear()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist get(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    return-object p0
.end method

.method public blacklist getDeviceList()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    return-object p0
.end method

.method public blacklist remove(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->isInvalidDevice(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist remove(Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;)Z
    .locals 2

    iget-object p1, p1, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->remove(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->isInvalidDevice(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist updateStatus(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->updateStatus(I)V

    :cond_1
    :goto_0
    return-void
.end method
