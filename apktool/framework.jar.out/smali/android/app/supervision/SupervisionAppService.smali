.class public Landroid/app/supervision/SupervisionAppService;
.super Landroid/app/Service;
.source "SupervisionAppService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/app/supervision/ISupervisionAppService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/app/supervision/SupervisionAppService$1;

    invoke-direct {v0, p0}, Landroid/app/supervision/SupervisionAppService$1;-><init>(Landroid/app/supervision/SupervisionAppService;)V

    iput-object v0, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionAppService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionAppService;

    invoke-interface {p0}, Landroid/app/supervision/ISupervisionAppService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist onDisabled()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public blacklist onEnabled()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method
