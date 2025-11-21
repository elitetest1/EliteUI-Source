.class final Landroid/app/PropertyInvalidatedCache$NonceSharedMem;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonceSharedMem"
.end annotation


# instance fields
.field private volatile blacklist mHandle:I

.field private final blacklist mShortName:Ljava/lang/String;

.field private volatile blacklist mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    return-void
.end method

.method private blacklist initialize(Z)I
    .locals 3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v1

    iput-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->storeName(Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getHandleForName(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .locals 2

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initialize(Z)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getNonce(I)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist setNonceInternal(J)V
    .locals 2

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initialize(Z)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unable to assign nonce handle: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->setNonce(IJ)Z

    return-void
.end method
