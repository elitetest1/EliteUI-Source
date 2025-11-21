.class public final Lcom/android/server/knox/zt/devicetrust/AppMonitor;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/zt/devicetrust/AppMonitor$InstanceHolder;
    }
.end annotation


# instance fields
.field private volatile blacklist isMonitoringOn:Z

.field private volatile blacklist mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/knox/zt/devicetrust/AppMonitor-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;-><init>()V

    return-void
.end method

.method public static blacklist get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;
    .locals 1

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getEndpointMonitor()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    return-object p0
.end method


# virtual methods
.method public blacklist isOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->isMonitoringOn:Z

    return p0
.end method

.method public blacklist reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->getEndpointMonitor()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;->reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist reportApplicationDying(JIILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->getEndpointMonitor()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;->reportApplicationDying(JIILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public blacklist setOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->isMonitoringOn:Z

    return-void
.end method
