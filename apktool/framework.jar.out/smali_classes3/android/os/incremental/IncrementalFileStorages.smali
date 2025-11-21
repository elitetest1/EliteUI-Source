.class public final Landroid/os/incremental/IncrementalFileStorages;
.super Ljava/lang/Object;
.source "IncrementalFileStorages.java"


# static fields
.field private static final blacklist SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalFileStorages"


# instance fields
.field private blacklist mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field private blacklist mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mStageDir:Ljava/io/File;


# direct methods
.method private constructor blacklist <init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Couldn\'t create linked incremental storage at "

    const-string v1, "Couldn\'t create incremental storage at "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    iput-object p3, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    const/4 v2, 0x5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p2

    iput-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz p2, :cond_3

    const-string p2, "android"

    invoke-virtual {p4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->isFullyLoaded()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Inherited storage has missing pages."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p3, p2, p4, v2}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object p2

    iput-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p4, v2}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParams;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object p2

    iput-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz p2, :cond_4

    :goto_1
    return-void

    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    throw p1
.end method

.method private blacklist addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p1, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    iget-wide v2, p1, Landroid/content/pm/InstallationFileParcel;->size:J

    iget-object v6, p1, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    iget-object v7, p1, Landroid/content/pm/InstallationFileParcel;->signature:[B

    const/4 v8, 0x0

    const/16 v4, 0x1ff

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V

    :cond_0
    return-void
.end method

.method private blacklist cleanUp()Landroid/os/incremental/IncrementalStorage;
    .locals 3

    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static blacklist initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Landroid/content/pm/DataLoaderParams;",
            "Landroid/content/pm/IDataLoaderStatusListener;",
            "Landroid/os/incremental/StorageHealthCheckParams;",
            "Landroid/os/incremental/IStorageHealthListener;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstallationFileParcel;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ")",
            "Landroid/os/incremental/IncrementalFileStorages;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "incremental"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    if-eqz p0, :cond_3

    move-object v0, p1

    new-instance p1, Landroid/os/incremental/IncrementalFileStorages;

    invoke-direct {p1, v0, p2, p0, p3}, Landroid/os/incremental/IncrementalFileStorages;-><init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V

    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/InstallationFileParcel;

    iget v1, p7, Landroid/content/pm/InstallationFileParcel;->location:I

    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p1, p7}, Landroid/os/incremental/IncrementalFileStorages;->addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to add file to IncFS: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p7, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", reason: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown file location: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p7, Landroid/content/pm/InstallationFileParcel;->location:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p9}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    :cond_2
    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p8

    invoke-virtual/range {p1 .. p6}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to obtain incrementalManager."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist cleanUpAndMarkComplete()V
    .locals 0

    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/incremental/IncrementalStorage;->onInstallationComplete()V

    :cond_0
    return-void
.end method

.method public blacklist disallowReadLogs()V
    .locals 0

    iget-object p0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p0}, Landroid/os/incremental/IncrementalStorage;->disallowReadLogs()V

    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;[BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    array-length p0, p2

    int-to-long v2, p0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v8, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V

    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p0, p2}, Landroid/os/incremental/IncrementalStorage;->makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual/range {p0 .. p5}, Landroid/os/incremental/IncrementalStorage;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to start or restart loading data for Incremental installation."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
