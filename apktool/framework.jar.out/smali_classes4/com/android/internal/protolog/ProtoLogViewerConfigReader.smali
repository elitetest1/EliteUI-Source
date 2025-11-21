.class public Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# instance fields
.field private final blacklist mGroupHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mLogMessageMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    return-void
.end method

.method static synthetic blacklist lambda$loadViewerConfig$0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic blacklist lambda$unloadViewerConfig$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private blacklist loadGroupId(Ljava/lang/String;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {p0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    if-eq v8, v2, :cond_3

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    if-eq v8, v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide v8, 0x10900000002L

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-wide v6, 0x10d00000001L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    int-to-long v6, v6

    goto :goto_1

    :cond_3
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    :cond_4
    return-wide v6

    :cond_5
    :try_start_1
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in viewer config"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p1
.end method

.method private blacklist loadViewerConfigMappingForGroup(Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadGroupId(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v3}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const-wide v8, 0x20b00000001L

    invoke-virtual {v4, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    const/4 v5, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v15

    if-eq v15, v6, :cond_4

    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v15

    if-eq v15, v7, :cond_3

    const/4 v6, 0x2

    if-eq v15, v6, :cond_2

    const/4 v6, 0x4

    if-eq v15, v6, :cond_1

    const-wide/16 v15, 0x0

    goto :goto_2

    :cond_1
    const-wide/16 v15, 0x0

    const-wide v10, 0x10d00000004L

    invoke-virtual {v4, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    move v12, v6

    goto :goto_2

    :cond_2
    const-wide/16 v15, 0x0

    const-wide v5, 0x10900000002L

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const-wide/16 v15, 0x0

    const-wide v10, 0x10600000001L

    invoke-virtual {v4, v10, v11}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v13

    :goto_2
    const/4 v6, -0x1

    goto :goto_1

    :cond_4
    const-wide/16 v15, 0x0

    if-eqz v12, :cond_8

    cmp-long v6, v13, v15

    if-eqz v6, :cond_7

    if-eqz v5, :cond_6

    int-to-long v6, v12

    cmp-long v6, v6, v0

    if-nez v6, :cond_5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v4, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to get message string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to get message id"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to get group id"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    :cond_a
    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_b

    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw v1
.end method


# virtual methods
.method public blacklist getViewerString(J)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized blacklist loadViewerConfig([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfigMappingForGroup(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " log definitions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load log definitions: IOException while processing viewer config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public blacklist messageHashIsAvailableInFile(J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {p0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-wide v4, 0x20b00000001L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    :cond_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-wide v6, 0x10600000001L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v6, p1

    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    :cond_2
    return v3

    :cond_3
    :try_start_1
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    :cond_5
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1
.end method

.method public declared-synchronized blacklist unloadViewerConfig([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unloading viewer config hash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
