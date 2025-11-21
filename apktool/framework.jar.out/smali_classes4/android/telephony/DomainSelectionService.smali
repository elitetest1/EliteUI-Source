.class public abstract Landroid/telephony/DomainSelectionService;
.super Landroid/app/Service;
.source "DomainSelectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;,
        Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;,
        Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;,
        Landroid/telephony/DomainSelectionService$SelectionAttributes;,
        Landroid/telephony/DomainSelectionService$EmergencyScanType;,
        Landroid/telephony/DomainSelectionService$SelectorType;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DomainSelectionService"

.field public static final whitelist SCAN_TYPE_FULL_SERVICE:I = 0x2

.field public static final whitelist SCAN_TYPE_LIMITED_SERVICE:I = 0x1

.field public static final whitelist SCAN_TYPE_NO_PREFERENCE:I = 0x0

.field public static final whitelist SELECTOR_TYPE_CALLING:I = 0x1

.field public static final whitelist SELECTOR_TYPE_SMS:I = 0x2

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.DomainSelectionService"


# instance fields
.field private final blacklist mDomainSelectionServiceController:Landroid/os/IBinder;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExecutorLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/DomainSelectionService;->executeMethodAsyncNoException(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smexecuteMethodAsync(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/telephony/DomainSelectionService;->executeMethodAsync(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/DomainSelectionService;->mExecutorLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/DomainSelectionService$1;

    invoke-direct {v0, p0}, Landroid/telephony/DomainSelectionService$1;-><init>(Landroid/telephony/DomainSelectionService;)V

    iput-object v0, p0, Landroid/telephony/DomainSelectionService;->mDomainSelectionServiceController:Landroid/os/IBinder;

    return-void
.end method

.method private static blacklist executeMethodAsync(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Binder - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " exception: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    new-instance p0, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Binder - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist getDomainName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/telephony/NetworkRegistrationInfo;->domainToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$executeMethodAsync$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$1(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final blacklist getCachedExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    iget-object v0, p0, Landroid/telephony/DomainSelectionService;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/DomainSelectionService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService;->getCreateExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_0
    iput-object v1, p0, Landroid/telephony/DomainSelectionService;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_1
    iget-object p0, p0, Landroid/telephony/DomainSelectionService;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist getCreateExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public whitelist onBarringInfoUpdated(IILandroid/telephony/BarringInfo;)V
    .locals 0

    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.telephony.DomainSelectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DomainSelectionService"

    const-string v0, "DomainSelectionService Bound."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/telephony/DomainSelectionService;->mDomainSelectionServiceController:Landroid/os/IBinder;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public abstract whitelist onDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Landroid/telephony/TransportSelectorCallback;)V
.end method

.method public whitelist onServiceStateUpdated(IILandroid/telephony/ServiceState;)V
    .locals 0

    return-void
.end method
