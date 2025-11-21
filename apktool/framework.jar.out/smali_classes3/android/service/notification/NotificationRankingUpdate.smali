.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private blacklist mRankingMapFd:Landroid/os/SharedMemory;

.field private final blacklist mSharedMemoryName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    const-string v1, "NotificationRankingUpdatedSharedMemory"

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->rankingUpdateAshmem()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/os/SharedMemory;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    iput-object v2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-nez v2, :cond_0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    iput-object v2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationRankingUpdate;->addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V

    :cond_2
    throw p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/NotificationListenerService$RankingMap;

    iput-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method public constructor blacklist <init>([Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    const-string v0, "NotificationRankingUpdatedSharedMemory"

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {v0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method private blacklist addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    const-class v3, Landroid/app/Notification$Action;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v4, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/service/notification/NotificationRankingUpdate;

    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object p1, p1, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method public final blacklist isFdNotNullAndClosed()Z
    .locals 1

    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->getFd()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 11

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->rankingUpdateAshmem()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    aget-object v6, v3, v5

    iget-object v8, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v8, v6}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    new-instance v6, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v6}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {v6, v8}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Landroid/service/notification/NotificationListenerService$Ranking;)V

    invoke-virtual {v6, v7}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    new-array v4, v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v3, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    :try_start_0
    invoke-virtual {v0, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const-string v3, "NotificationRankingUpdatedSharedMemory"

    invoke-static {v3, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->marshall(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v1, v3}, Landroid/os/SharedMemory;->setProtect(I)Z

    iget-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz v7, :cond_2

    iget-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p1, :cond_2

    invoke-static {v7}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz v7, :cond_3

    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p2, :cond_3

    invoke-static {v7}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V

    :cond_3
    throw p1

    :cond_4
    iget-object p0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
