.class public final Landroid/os/incremental/IncrementalStorage;
.super Ljava/lang/Object;
.source "IncrementalStorage.java"


# static fields
.field private static final blacklist INCFS_MAX_ADD_DATA_SIZE:I = 0x80

.field private static final blacklist INCFS_MAX_HASH_SIZE:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalStorage"

.field private static final blacklist UUID_BYTE_SIZE:I = 0x10


# instance fields
.field private final blacklist mId:I

.field private final blacklist mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/IIncrementalService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iput p2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    return-void
.end method

.method public static blacklist bytesToId([B)Ljava/util/UUID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected array of size 16, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist idToBytes(Ljava/util/UUID;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist validateV4Signature([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v0}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v0

    iget-object p0, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {p0}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object p0

    iget v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    iget-byte v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    array-length v1, v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported salt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    iget-object p0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    array-length p0, p0

    const/16 v0, 0x80

    if-gt p0, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "additionalData has to be at most 128 bytes"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "rawRootHash has to be 32 bytes"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported log2BlockSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported hashAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "v4 signature version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read v4 signature:"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist bind(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bind(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bind() failed with errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bindPermanent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bind() permanent failed with errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v1, p0, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist disallowReadLogs()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0}, Landroid/os/incremental/IIncrementalService;->disallowReadLogs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist getFileMetadata(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0, p1}, Landroid/os/incremental/IIncrementalService;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getFileMetadata(Ljava/util/UUID;)[B
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0, p1}, Landroid/os/incremental/IIncrementalService;->getMetadataById(I[B)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    return p0
.end method

.method public blacklist getLoadingProgress()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "getLoadingProgress() failed at querying loading progress, errno "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v2, p0}, Landroid/os/incremental/IIncrementalService;->getLoadingProgress(I)F

    move-result p0

    cmpg-float v2, p0, v1

    if-ltz v2, :cond_0

    return p0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-float p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1
.end method

.method public blacklist getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0}, Landroid/os/incremental/IIncrementalService;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist isFileFullyLoaded(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "isFileFullyLoaded() failed, errno "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v2, p0, p1}, Landroid/os/incremental/IIncrementalService;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1
.end method

.method public blacklist isFullyLoaded()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "isFullyLoaded() failed at querying loading progress, errno "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v2, p0}, Landroid/os/incremental/IIncrementalService;->isFullyLoaded(I)I

    move-result p0

    if-ltz p0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1
.end method

.method public blacklist makeDirectories(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "makeDirectory() failed with errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, p0, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectories(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist makeDirectory(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "makeDirectory() failed with errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, p0, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectory(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "makeFile() failed with errno "

    if-nez p5, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File ID and metadata cannot both be null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p7}, Landroid/os/incremental/IncrementalStorage;->validateV4Signature([B)V

    move-object v1, p5

    new-instance p5, Landroid/os/incremental/IncrementalNewFileParams;

    invoke-direct {p5}, Landroid/os/incremental/IncrementalNewFileParams;-><init>()V

    iput-wide p2, p5, Landroid/os/incremental/IncrementalNewFileParams;->size:J

    if-nez p6, :cond_2

    const/4 p2, 0x0

    new-array p6, p2, [B

    :cond_2
    iput-object p6, p5, Landroid/os/incremental/IncrementalNewFileParams;->metadata:[B

    invoke-static {v1}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object p2

    iput-object p2, p5, Landroid/os/incremental/IncrementalNewFileParams;->fileId:[B

    iput-object p7, p5, Landroid/os/incremental/IncrementalNewFileParams;->signature:[B

    move-object p3, p1

    iget-object p1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object p6, p8

    invoke-interface/range {p1 .. p6}, Landroid/os/incremental/IIncrementalService;->makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method

.method public blacklist makeFileFromRange(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "makeFileFromRange() failed, errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Landroid/os/incremental/IIncrementalService;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "makeLink() failed with errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result p2

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist moveDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "moveDir() failed at making bind mount, errno "

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    :try_start_1
    iget-object p2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {p2, p0, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "moveDir() requires that destination dir already exists."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "moveFile() failed at makeLink(), errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, p1, v2, p2}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    :try_start_1
    iget-object p2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {p2, p0, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public blacklist onInstallationComplete()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0}, Landroid/os/incremental/IIncrementalService;->onInstallationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0, p1}, Landroid/os/incremental/IIncrementalService;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .locals 7

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/incremental/IIncrementalService;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist unBind(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "unbind() failed with errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, p0, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist unlink(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "unlink() failed with errno "

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, p0, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist unregisterLoadingProgressListener()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0}, Landroid/os/incremental/IIncrementalService;->unregisterLoadingProgressListener(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist waitForNativeBinariesExtraction()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, p0}, Landroid/os/incremental/IIncrementalService;->waitForNativeBinariesExtraction(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method
