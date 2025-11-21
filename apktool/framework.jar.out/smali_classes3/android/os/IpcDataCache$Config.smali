.class public Landroid/os/IpcDataCache$Config;
.super Ljava/lang/Object;
.source "IpcDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IpcDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field final blacklist mArgs:Landroid/app/PropertyInvalidatedCache$Args;

.field private blacklist mChildren:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field final blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    iput-object p1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    iput-object p2, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {p1, p2}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {p1, p2}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    return-void
.end method

.method private final blacklist registerChild(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public blacklist cacheNulls(Z)Landroid/os/IpcDataCache$Config;
    .locals 2

    new-instance v0, Landroid/os/IpcDataCache$Config;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    iget-object p0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;
    .locals 2

    new-instance v0, Landroid/os/IpcDataCache$Config;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, v1, p1}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/IpcDataCache$Config;->registerChild(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist disableAllForCurrentProcess()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    invoke-virtual {p0}, Landroid/os/IpcDataCache$Config;->disableForCurrentProcess()V

    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist disableForCurrentProcess()V
    .locals 0

    iget-object p0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist invalidateCache()V
    .locals 0

    iget-object p0, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-static {p0}, Landroid/os/IpcDataCache;->invalidateCache(Landroid/app/PropertyInvalidatedCache$Args;)V

    return-void
.end method

.method public blacklist isolateUids(Z)Landroid/os/IpcDataCache$Config;
    .locals 2

    new-instance v0, Landroid/os/IpcDataCache$Config;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache$Args;->isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    iget-object p0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    return-object v0
.end method
