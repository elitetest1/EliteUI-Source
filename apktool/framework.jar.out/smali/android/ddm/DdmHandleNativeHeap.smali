.class public Landroid/ddm/DdmHandleNativeHeap;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleNativeHeap.java"


# static fields
.field public static final greylist-max-o CHUNK_NHGT:I

.field private static greylist-max-o mInstance:Landroid/ddm/DdmHandleNativeHeap;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "NHGT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    new-instance v0, Landroid/ddm/DdmHandleNativeHeap;

    invoke-direct {v0}, Landroid/ddm/DdmHandleNativeHeap;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method private native greylist-max-o getLeakInfo()[B
.end method

.method private greylist-max-o handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    invoke-direct {p0}, Landroid/ddm/DdmHandleNativeHeap;->getLeakInfo()[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Sending "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ddm-nativeheap"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v0, "NHGT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {p1, v0, p0, v1, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object p1

    :cond_0
    const/4 p0, 0x1

    const-string p1, "Something went wrong"

    invoke-static {p0, p1}, Landroid/ddm/DdmHandleNativeHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o register()V
    .locals 2

    sget v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    sget-object v1, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    invoke-static {v1}, Landroid/ddm/DdmHandleNativeHeap;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ddm-nativeheap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    sget v1, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleNativeHeap;->handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown packet "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/ddm/DdmHandleNativeHeap;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist test-api onConnected()V
    .locals 0

    return-void
.end method

.method public blacklist test-api onDisconnected()V
    .locals 0

    return-void
.end method
