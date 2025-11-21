.class final Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "PackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageMonitorCallback"
.end annotation


# instance fields
.field private final blacklist mMonitorWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/content/PackageMonitor;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->mMonitorWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private blacklist onHandlePackageMonitorCallback(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p0, "PackageMonitor"

    const-string p1, "No intent is set for PackageMonitorCallback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->mMonitorWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/content/PackageMonitor;->-$$Nest$mpostHandlePackageEvent(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->onHandlePackageMonitorCallback(Landroid/os/Bundle;)V

    return-void
.end method
