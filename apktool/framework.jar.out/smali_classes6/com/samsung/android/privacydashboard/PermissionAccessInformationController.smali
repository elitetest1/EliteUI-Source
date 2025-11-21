.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;
.super Ljava/lang/Object;
.source "PermissionAccessInformationController.java"


# static fields
.field private static final blacklist OP_CAPTURE_SCREEN:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "PermissionAccessInformationController"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFlushExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

.field private blacklist mPermissionAccessInformations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/privacydashboard/PermissionAccessInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadLock:Ljava/util/concurrent/locks/Lock;

.field private final blacklist mUselessPackages:[Ljava/lang/String;

.field private final blacklist mWriterLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    invoke-direct {p1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    return-void
.end method

.method private blacklist isOpCodeEnable(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isPackageEnable(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public blacklist flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;->write(Landroid/content/Context;Ljava/util/Iterator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public blacklist flushAsync()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    invoke-direct {p0, p3}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isPackageEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isOpCodeEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    const/16 v1, 0x12c

    move v2, p6

    if-lt v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-direct {p0, v0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V

    :cond_1
    return-void
.end method
