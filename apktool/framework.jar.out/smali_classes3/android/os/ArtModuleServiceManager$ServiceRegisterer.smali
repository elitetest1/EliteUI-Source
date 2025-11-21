.class public final Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "ArtModuleServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ArtModuleServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceRegisterer"
.end annotation


# instance fields
.field private final blacklist mRetry:Z

.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mRetry:Z

    return-void
.end method


# virtual methods
.method public blacklist waitForService()Landroid/os/IBinder;
    .locals 4

    iget-boolean v0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mRetry:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/16 v1, 0x1388

    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    const-string v0, "ctl.start"

    iget-object v2, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    add-int/lit8 v1, v1, -0x64

    goto :goto_0

    :cond_1
    return-object v0
.end method
