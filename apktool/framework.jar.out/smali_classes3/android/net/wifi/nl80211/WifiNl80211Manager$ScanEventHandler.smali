.class Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
.super Landroid/net/wifi/nl80211/IScanEvent$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanEventHandler"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public static synthetic blacklist $r8$lambda$3_Ae4X131TyRAHEMB4lo0izKNbY(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanResultReady$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oY7fWMJZBoJ-sJSXdBLawrNe-9Y(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanResultReady$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$s7nvkmsm4i2HbTl41fyj_f2DJCA(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanRequestFailed$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xDzD8cFvMcUzGef2IZ7fGiFTonI(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanFailed$2()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    return-void
.end method

.method private synthetic blacklist lambda$OnScanFailed$2()V
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed()V

    return-void
.end method

.method private synthetic blacklist lambda$OnScanRequestFailed$3(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$mtoFrameworkScanStatusCode(Landroid/net/wifi/nl80211/WifiNl80211Manager;I)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$OnScanResultReady$0(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmPreScanResultListener(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/net/wifi/nl80211/WifiNl80211Manager$PreScanResultListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PreScanResultListener;->onPreScanResult(Ljava/util/List;I)V

    return-void
.end method

.method private synthetic blacklist lambda$OnScanResultReady$1()V
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanResultReady()V

    return-void
.end method


# virtual methods
.method public blacklist OnScanFailed()V
    .locals 4

    const-string v0, "WifiNl80211Manager"

    const-string v1, "Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public blacklist OnScanRequestFailed(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scan failed event with error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public blacklist OnScanResultReady()V
    .locals 6

    const-string v0, "WifiNl80211Manager"

    const-string v1, "Scan result ready event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmInterfaceNameForPreScan(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmPreScanResultListener(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/net/wifi/nl80211/WifiNl80211Manager$PreScanResultListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmInterfaceNameForPreScan(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScanResults(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmPreScanListenerType(Landroid/net/wifi/nl80211/WifiNl80211Manager;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmPreScanResultExecutor(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/Executor;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmPreScanResultExecutor(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmPreScanListenerType(Landroid/net/wifi/nl80211/WifiNl80211Manager;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmPreScanResultListener(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/net/wifi/nl80211/WifiNl80211Manager$PreScanResultListener;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PreScanResultListener;->onPreScanResult(Ljava/util/List;I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
