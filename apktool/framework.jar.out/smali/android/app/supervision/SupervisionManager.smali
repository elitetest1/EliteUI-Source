.class public Landroid/app/supervision/SupervisionManager;
.super Ljava/lang/Object;
.source "SupervisionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist ACTION_DISABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.DISABLE_SUPERVISION"

.field public static final blacklist ACTION_ENABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.ENABLE_SUPERVISION"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/supervision/ISupervisionManager;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/app/supervision/ISupervisionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    return-void
.end method


# virtual methods
.method public blacklist createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/app/supervision/ISupervisionManager;->createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getActiveSupervisionAppPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/app/supervision/ISupervisionManager;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist isSupervisionEnabled()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/supervision/SupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isSupervisionEnabledForUser(I)Z
    .locals 0

    iget-object p0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/supervision/ISupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setSupervisionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/supervision/SupervisionManager;->setSupervisionEnabledForUser(IZ)V

    return-void
.end method

.method public blacklist setSupervisionEnabledForUser(IZ)V
    .locals 0

    iget-object p0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/supervision/ISupervisionManager;->setSupervisionEnabledForUser(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist shouldAllowBypassingSupervisionRoleQualification()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/app/supervision/ISupervisionManager;->shouldAllowBypassingSupervisionRoleQualification()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
