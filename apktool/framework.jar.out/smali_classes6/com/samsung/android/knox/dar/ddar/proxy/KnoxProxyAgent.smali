.class public Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;
.super Landroid/app/Service;
.source "KnoxProxyAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "KnoxProxyAgent"


# instance fields
.field blacklist mPolicyServiceLock:Ljava/lang/Object;

.field blacklist mPolicyServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected blacklist establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "KnoxProxyAgent"

    const-string p1, "Service not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
    .locals 3

    const-string v0, "Proxy Agent Service "

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "KnoxProxyAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v1

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist onAgentReconnected()V
    .locals 0

    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;-><init>(Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent-IA;)V

    return-object p1
.end method

.method public whitelist onCreate()V
    .locals 1

    const-string p0, "KnoxProxyAgent"

    const-string/jumbo v0, "onCreate!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z
    .locals 4

    const-string v0, "Proxy Agent Service "

    const-string v1, "Proxy Agent Service "

    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "KnoxProxyAgent"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "KnoxProxyAgent"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registered"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "KnoxProxyAgent"

    const-string p1, "Service not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "KnoxProxyAgent"

    const-string p1, "Service not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
