.class public abstract Landroid/content/BroadcastReceiver;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/BroadcastReceiver$PendingResult;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_STORE_ENABLED:Z


# instance fields
.field private greylist-max-o mDebugUnregister:Z

.field private greylist mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_STORE_ENABLED()Z
    .locals 1

    sget-boolean v0, Landroid/content/BroadcastReceiver;->DEBUG_STORE_ENABLED:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/Flags;->debugStoreEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/BroadcastReceiver;->DEBUG_STORE_ENABLED:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist abortBroadcast()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    return-void
.end method

.method greylist-max-o checkSynchronousHint()V
    .locals 2

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v0, "BroadcastReceiver"

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call while result is not pending"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist clearAbortBroadcast()V
    .locals 1

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    :cond_0
    return-void
.end method

.method public final whitelist getAbortBroadcast()Z
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist getDebugUnregister()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    return p0
.end method

.method public final greylist getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-object p0
.end method

.method public final whitelist getResultCode()I
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist getResultData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist getResultExtras(Z)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final whitelist getSendingUser()Landroid/os/UserHandle;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getSendingUserId()I
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return p0
.end method

.method public whitelist getSentFromPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromPackage:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getSentFromUid()I
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromUid:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final whitelist goAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 4

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    sget-boolean v1, Landroid/content/BroadcastReceiver;->DEBUG_STORE_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/DebugStore;->recordGoAsync(I)V

    :cond_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "BroadcastReceiver#goAsync#ClassName:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method public final whitelist isInitialStickyBroadcast()Z
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist isOrderedBroadcast()Z
    .locals 0

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public whitelist peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, v0, p1}, Landroid/app/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist setDebugUnregister(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    return-void
.end method

.method public final whitelist setOrderedHint(Z)V
    .locals 0

    return-void
.end method

.method public final greylist setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    iput-object p1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method

.method public final whitelist setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    iget-object p1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, p1, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    return-void
.end method

.method public final whitelist setResultCode(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    return-void
.end method

.method public final whitelist setResultData(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    return-void
.end method

.method public final whitelist setResultExtras(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iget-object p0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    return-void
.end method
