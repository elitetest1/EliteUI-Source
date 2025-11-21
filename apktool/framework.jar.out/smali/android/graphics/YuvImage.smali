.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final greylist-max-o WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static final blacklist sSupportedFormats:[Ljava/lang/String;

.field private static final blacklist sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

.field private static final blacklist sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;


# instance fields
.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mData:[B

.field private greylist-max-o mFormat:I

.field private greylist-max-o mHeight:I

.field private greylist-max-o mStrides:[I

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const-string v0, "YCBCR_P010"

    const-string v1, "YUV_420_888"

    const-string v2, "NV21"

    const-string v3, "YUY2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    new-array v0, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    return-void
.end method

.method public constructor whitelist <init>([BIII[I)V
    .locals 8

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[ILandroid/graphics/ColorSpace;)V

    return-void
.end method

.method public constructor whitelist <init>([BIII[ILandroid/graphics/ColorSpace;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-eq p2, v0, :cond_1

    const/16 v0, 0x36

    if-eq p2, v0, :cond_1

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "only supports the following ImageFormat:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-lez p3, :cond_5

    if-lez p4, :cond_5

    if-eqz p1, :cond_4

    if-eqz p6, :cond_3

    if-nez p5, :cond_2

    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object p5

    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_1

    :cond_2
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    :goto_1
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    iput-object p6, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ColorSpace cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "yuv cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must large than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, v1, -0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget p0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x14

    if-ne p0, v1, :cond_1

    and-int/lit8 p0, v0, -0x2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private greylist-max-o calculateStrides(II)[I
    .locals 0

    const/16 p0, 0x11

    if-eq p2, p0, :cond_3

    const/16 p0, 0x14

    if-eq p2, p0, :cond_2

    const/16 p0, 0x23

    if-eq p2, p0, :cond_1

    const/16 p0, 0x36

    if-ne p2, p0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    filled-new-array {p1, p1}, [I

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "only supports the following ImageFormat:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 p0, p1, 0x1

    div-int/lit8 p0, p0, 0x2

    filled-new-array {p1, p0, p0}, [I

    move-result-object p0

    return-object p0

    :cond_2
    mul-int/lit8 p1, p1, 0x2

    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    :cond_3
    filled-new-array {p1, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isSupportedJpegRColorSpace(ZI)Z
    .locals 4

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method private static native greylist-max-o nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z
.end method

.method private static blacklist printSupportedFormats()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist printSupportedJpegRColorSpaces(Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method greylist-max-o calculateOffsets(II)[I
    .locals 3

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v0, v2

    mul-int v2, p2, v1

    add-int/2addr v2, p1

    iget p0, p0, Landroid/graphics/YuvImage;->mHeight:I

    mul-int/2addr p0, v1

    div-int/lit8 p2, p2, 0x2

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/2addr p2, v0

    add-int/2addr p0, p2

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    filled-new-array {v2, p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget p0, p0, v2

    mul-int/2addr p2, p0

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    filled-new-array {p2}, [I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 11

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only ImageFormat.NV21 and ImageFormat.YUY2 are supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_3

    const/16 v0, 0x64

    if-gt p2, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v6

    iget-object v2, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v3, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 p0, 0x1000

    new-array v10, p0, [B

    move v8, p2

    move-object v9, p3

    invoke-static/range {v2 .. v10}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "stream cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "quality must be 0..100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rectangle is not inside the image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only SRGB color space is supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/YuvImage;->compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z

    move-result p0

    return p0
.end method

.method public blacklist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z
    .locals 12

    if-eqz p1, :cond_6

    iget-object v1, p0, Landroid/graphics/YuvImage;->mData:[B

    array-length v1, v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x36

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/graphics/YuvImage;->mWidth:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    if-ne v1, v2, :cond_3

    if-ltz p2, :cond_2

    const/16 v1, 0x64

    if-gt p2, v1, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    invoke-static {v3, v1}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/YuvImage;->mData:[B

    iget-object v2, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v2

    move-object v3, v1

    move v1, v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v4

    move-object v5, v3

    move v3, v4

    iget v4, p0, Landroid/graphics/YuvImage;->mWidth:I

    move-object v7, v5

    iget v5, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/16 v8, 0x1000

    new-array v8, v8, [B

    iget-object v10, p0, Landroid/graphics/YuvImage;->mStrides:[I

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v11

    move v6, p2

    move-object/from16 v9, p4

    move-object v0, v7

    move-object v7, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Not supported color space. SDR only supports: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "HDR only supports: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HDR and SDR resolution mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support ImageFormat.YCBCR_P010 and ImageFormat.YUV_420_888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input images cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDR input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 0

    iget-object p0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public whitelist getHeight()I
    .locals 0

    iget p0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return p0
.end method

.method public whitelist getStrides()[I
    .locals 0

    iget-object p0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object p0
.end method

.method public whitelist getWidth()I
    .locals 0

    iget p0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return p0
.end method

.method public whitelist getYuvData()[B
    .locals 0

    iget-object p0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object p0
.end method

.method public whitelist getYuvFormat()I
    .locals 0

    iget p0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return p0
.end method
