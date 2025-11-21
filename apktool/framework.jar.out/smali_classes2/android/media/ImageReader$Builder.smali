.class public final Landroid/media/ImageReader$Builder;
.super Ljava/lang/Object;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
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

.field private blacklist mUsage:J

.field private blacklist mUseLegacyImageFormat:Z

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    iput v0, p0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    iput v1, p0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    const-wide/16 v2, 0x3

    iput-wide v2, p0, Landroid/media/ImageReader$Builder;->mUsage:J

    iput-boolean v1, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    iput p1, p0, Landroid/media/ImageReader$Builder;->mWidth:I

    iput p2, p0, Landroid/media/ImageReader$Builder;->mHeight:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/ImageReader;
    .locals 12

    iget-boolean v0, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/ImageReader;

    iget v2, p0, Landroid/media/ImageReader$Builder;->mWidth:I

    iget v3, p0, Landroid/media/ImageReader$Builder;->mHeight:I

    iget v4, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    iget v5, p0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    iget-wide v6, p0, Landroid/media/ImageReader$Builder;->mUsage:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;Landroid/media/ImageReader-IA;)V

    return-object v1

    :cond_0
    new-instance v2, Landroid/media/ImageReader;

    iget v3, p0, Landroid/media/ImageReader$Builder;->mWidth:I

    iget v4, p0, Landroid/media/ImageReader$Builder;->mHeight:I

    iget v5, p0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    iget-wide v6, p0, Landroid/media/ImageReader$Builder;->mUsage:J

    iget v9, p0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    iget v10, p0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/media/ImageReader;-><init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;IILandroid/media/ImageReader-IA;)V

    return-object v2
.end method

.method public whitelist setDefaultDataSpace(I)Landroid/media/ImageReader$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    iput p1, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    return-object p0
.end method

.method public whitelist setDefaultHardwareBufferFormat(I)Landroid/media/ImageReader$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    iput p1, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    return-object p0
.end method

.method public whitelist setImageFormat(I)Landroid/media/ImageReader$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    iput p1, p0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    return-object p0
.end method

.method public whitelist setMaxImages(I)Landroid/media/ImageReader$Builder;
    .locals 0

    iput p1, p0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    return-object p0
.end method

.method public whitelist setUsage(J)Landroid/media/ImageReader$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/ImageReader$Builder;->mUsage:J

    return-object p0
.end method
