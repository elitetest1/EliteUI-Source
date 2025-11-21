.class public final Landroid/content/rollback/RollbackManager;
.super Ljava/lang/Object;
.source "RollbackManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/RollbackManager$Status;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.content.rollback.extra.STATUS"

.field public static final whitelist EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.rollback.extra.STATUS_MESSAGE"

.field public static final blacklist PROPERTY_ROLLBACK_LIFETIME_MILLIS:Ljava/lang/String; = "rollback_lifetime_in_millis"

.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_FAILURE_INSTALL:I = 0x3

.field public static final whitelist STATUS_FAILURE_ROLLBACK_UNAVAILABLE:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field private final blacklist mBinder:Landroid/content/rollback/IRollbackManager;

.field private final blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/rollback/IRollbackManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/rollback/RollbackManager;->mCallerPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    return-void
.end method


# virtual methods
.method public blacklist blockRollbackManager(J)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {p0, p1, p2}, Landroid/content/rollback/IRollbackManager;->blockRollbackManager(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Landroid/content/rollback/RollbackManager;->mCallerPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p0, p3}, Landroid/content/rollback/IRollbackManager;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist expireRollbackForPackage(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {p0, p1}, Landroid/content/rollback/IRollbackManager;->expireRollbackForPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAvailableRollbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {p0}, Landroid/content/rollback/IRollbackManager;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getRecentlyCommittedRollbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {p0}, Landroid/content/rollback/IRollbackManager;->getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist reloadPersistedData()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {p0}, Landroid/content/rollback/IRollbackManager;->reloadPersistedData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
