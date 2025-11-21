.class public Lcom/samsung/android/cover/SemCoverService;
.super Landroid/app/Service;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;,
        Lcom/samsung/android/cover/SemCoverService$MyHandler;
    }
.end annotation


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "SemCoverService"


# instance fields
.field private greylist mAttach:Z

.field private greylist mHandler:Landroid/os/Handler;

.field private final greylist mLock:Ljava/lang/Object;

.field private greylist mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetmAttach(Lcom/samsung/android/cover/SemCoverService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fputmAttach(Lcom/samsung/android/cover/SemCoverService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/cover/SemCoverService$MyHandler;

    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/cover/SemCoverService$MyHandler;-><init>(Lcom/samsung/android/cover/SemCoverService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public greylist getCoverHost()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;-><init>(Lcom/samsung/android/cover/SemCoverService;Lcom/samsung/android/cover/SemCoverService-IA;)V

    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    return-object p0
.end method

.method public greylist onCoverAppCovered(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public greylist onCoverDetached()V
    .locals 0

    return-void
.end method

.method public greylist onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public greylist onSystemReady()V
    .locals 0

    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->onCoverDetached()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
