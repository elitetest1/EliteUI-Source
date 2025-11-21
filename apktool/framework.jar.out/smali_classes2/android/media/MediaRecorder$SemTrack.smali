.class public Landroid/media/MediaRecorder$SemTrack;
.super Ljava/lang/Object;
.source "MediaRecorder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemTrack"
.end annotation


# instance fields
.field private blacklist mMime:Ljava/lang/String;

.field private blacklist mNativeContext:J

.field private blacklist mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaRecorder$SemTrack;->mRecorder:Landroid/media/MediaRecorder;

    iput-object p3, p0, Landroid/media/MediaRecorder$SemTrack;->mMime:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p2, p4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object p3, p2

    :cond_1
    iget-object p1, p0, Landroid/media/MediaRecorder$SemTrack;->mRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaRecorder$SemTrack;->native_setup(Landroid/media/MediaRecorder;[Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaRecorder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaRecorder$SemTrack;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Ljava/lang/String;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private native blacklist nativeWriteSampleData(JLandroid/media/MediaRecorder;Ljava/nio/ByteBuffer;IIJI)V
.end method

.method private native blacklist native_release()V
.end method

.method private native blacklist native_setup(Landroid/media/MediaRecorder;[Ljava/lang/String;[Ljava/lang/Object;)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRecorder$SemTrack;->release()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRecorder$SemTrack;->release()V

    return-void
.end method

.method public blacklist release()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRecorder$SemTrack;->native_release()V

    return-void
.end method

.method public blacklist writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 12

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-wide v3, p0, Landroid/media/MediaRecorder$SemTrack;->mNativeContext:J

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/media/MediaRecorder$SemTrack;->mRecorder:Landroid/media/MediaRecorder;

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v9, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v11, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaRecorder$SemTrack;->nativeWriteSampleData(JLandroid/media/MediaRecorder;Ljava/nio/ByteBuffer;IIJI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "source has been released!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferInfo must specify a valid buffer offset and size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
