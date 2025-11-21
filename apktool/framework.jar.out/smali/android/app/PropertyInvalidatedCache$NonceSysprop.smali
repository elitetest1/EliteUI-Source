.class final Landroid/app/PropertyInvalidatedCache$NonceSysprop;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonceSysprop"
.end annotation


# instance fields
.field private volatile blacklist mHandle:Landroid/os/SystemProperties$Handle;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .locals 4

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;

    move-result-object v3

    iput-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    if-nez v3, :cond_0

    monitor-exit v0

    return-wide v1

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    invoke-virtual {p0, v1, v2}, Landroid/os/SystemProperties$Handle;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist setNonceInternal(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/SystemPropertySetter;->setWithRetry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
