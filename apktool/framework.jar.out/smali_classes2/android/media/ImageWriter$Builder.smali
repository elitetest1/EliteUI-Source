.class public final Landroid/media/ImageWriter$Builder;
.super Ljava/lang/Object;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataSpace:I

.field private blacklist mHardwareBufferFormat:I

.field private blacklist mHeight:I

.field private blacklist mImageFormat:I

.field private blacklist mMaxImages:I

.field private blacklist mSemTransform:I

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mUsage:J

.field private blacklist mUseLegacyImageFormat:Z

.field private blacklist mUseSurfaceImageFormatInfo:Z

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(Landroid/view/Surface;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    iput v1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iput-boolean v1, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput v1, p0, Landroid/media/ImageWriter$Builder;->mSemTransform:I

    iput-object p1, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/ImageWriter;
    .locals 14

    iget-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/ImageWriter;

    iget-object v2, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v3, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v4, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v5, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iget v6, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v7, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v8, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V

    return-object v1

    :cond_0
    new-instance v2, Landroid/media/ImageWriter;

    iget-object v3, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v4, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v5, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v6, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    iget v7, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iget v8, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v9, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v10, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    iget v12, p0, Landroid/media/ImageWriter$Builder;->mSemTransform:I

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJILandroid/media/ImageWriter-IA;)V

    return-object v2
.end method

.method public whitelist semSetTransform(I)Landroid/media/ImageWriter$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mSemTransform:I

    return-object p0

    :cond_0
    const/4 p1, 0x7

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mSemTransform:I

    return-object p0

    :cond_1
    iput v2, p0, Landroid/media/ImageWriter$Builder;->mSemTransform:I

    return-object p0

    :cond_2
    const/4 p1, 0x4

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mSemTransform:I

    return-object p0

    :cond_3
    iput v0, p0, Landroid/media/ImageWriter$Builder;->mSemTransform:I

    return-object p0
.end method

.method public whitelist setDataSpace(I)Landroid/media/ImageWriter$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iput-boolean p1, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput-boolean p1, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    return-object p0
.end method

.method public whitelist setHardwareBufferFormat(I)Landroid/media/ImageWriter$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iput-boolean p1, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput-boolean p1, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    return-object p0
.end method

.method public whitelist setImageFormat(I)Landroid/media/ImageWriter$Builder;
    .locals 2

    invoke-static {p1}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid imageFormat is specified: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iput-boolean p1, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    return-object p0
.end method

.method public whitelist setMaxImages(I)Landroid/media/ImageWriter$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    return-object p0
.end method

.method public whitelist setUsage(J)Landroid/media/ImageWriter$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    return-object p0
.end method

.method public whitelist setWidthAndHeight(II)Landroid/media/ImageWriter$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iput p2, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    return-object p0
.end method
