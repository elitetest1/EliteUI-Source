.class public Lcom/samsung/android/media/SemQuramImageBufferData;
.super Ljava/lang/Object;
.source "SemQuramImageBufferData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemQuramImageBufferData$Type;
    }
.end annotation


# instance fields
.field public blacklist bitmap:Landroid/graphics/Bitmap;

.field public blacklist buffer:Ljava/nio/ByteBuffer;

.field public blacklist handle:J

.field public blacklist height:I

.field public blacklist type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BITMAP:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    iput v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->HANDLE:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    iput p2, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    iput-wide p3, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    return-void
.end method

.method public constructor blacklist <init>(IILjava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BUFFER:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    iput p2, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BITMAP:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    iput p1, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    return-void
.end method


# virtual methods
.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blacklist getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    return-wide v0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    return p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    return p0
.end method

.method public blacklist isEmpty()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public blacklist isUseBitmap()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    sget-object v1, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BITMAP:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isUseBuffer()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    sget-object v1, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BUFFER:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isUseHandle()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    sget-object v1, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->HANDLE:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist recycle()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->recycleNativeBuffer(J)V

    iput-wide v2, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    return-void
.end method
