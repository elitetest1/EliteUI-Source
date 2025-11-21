.class public Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "CodecDescriptor.java"


# instance fields
.field private blacklist bitrate:I

.field private final blacklist data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dimension:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mediaFormat:Landroid/media/MediaFormat;

.field private final blacklist mediaType:Lcom/samsung/android/sume/core/types/MediaType;

.field private blacklist mimeType:Ljava/lang/String;

.field private blacklist runInstant:Z

.field private blacklist scale:F

.field private blacklist surface:Landroid/view/Surface;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/MediaType;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->bitrate:I

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->runInstant:Z

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->data:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBitrate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->bitrate:I

    return p0
.end method

.method public blacklist getFilterId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-class p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-class p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMediaFormat()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mediaFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    return-object p0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRectSize()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->dimension:Landroid/util/Pair;

    return-object p0
.end method

.method public blacklist getScale()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->scale:F

    return p0
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public blacklist isRunInstant()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->runInstant:Z

    return p0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->data:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->bitrate:I

    return-void
.end method

.method public blacklist setDimension(II)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->dimension:Landroid/util/Pair;

    return-void
.end method

.method public blacklist setMediaFormat(Landroid/media/MediaFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mediaFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method public blacklist setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRunInstant(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->runInstant:Z

    return-void
.end method

.method public blacklist setScale(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->scale:F

    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->surface:Landroid/view/Surface;

    return-void
.end method
