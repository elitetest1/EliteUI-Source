.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o mMaxArrays:I = 0x4


# instance fields
.field greylist-max-o mArrays:[I

.field greylist-max-o mDimFaces:Z

.field greylist-max-o mDimMipmaps:Z

.field greylist-max-o mDimX:I

.field greylist-max-o mDimY:I

.field greylist-max-o mDimYuv:I

.field greylist-max-o mDimZ:I

.field greylist-max-o mElement:Landroid/renderscript/Element;

.field greylist-max-o mElementCount:I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static whitelist createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v2

    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, v2, v3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    return-object p0

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .locals 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide p2

    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, p2, p3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    iput v5, p0, Landroid/renderscript/Type;->mDimY:I

    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    return-object p0

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .locals 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    if-lt p4, v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide p2

    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, p2, p3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    iput v5, p0, Landroid/renderscript/Type;->mDimY:I

    iput v6, p0, Landroid/renderscript/Type;->mDimZ:I

    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    return-object p0

    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method greylist-max-o calcElementCount()V
    .locals 8

    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v1, :cond_1

    move v1, v5

    :cond_1
    if-nez v2, :cond_2

    move v2, v5

    :cond_2
    if-nez v3, :cond_3

    move v3, v5

    :cond_3
    mul-int v6, v1, v2

    mul-int/2addr v6, v3

    mul-int/2addr v6, v4

    :goto_1
    if-eqz v0, :cond_8

    if-gt v1, v5, :cond_4

    if-gt v2, v5, :cond_4

    if-le v3, v5, :cond_8

    :cond_4
    if-le v1, v5, :cond_5

    shr-int/lit8 v1, v1, 0x1

    :cond_5
    if-le v2, v5, :cond_6

    shr-int/lit8 v2, v2, 0x1

    :cond_6
    if-le v3, v5, :cond_7

    shr-int/lit8 v3, v3, 0x1

    :cond_7
    mul-int v7, v1, v2

    mul-int/2addr v7, v3

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v2, v1

    if-ge v0, v2, :cond_9

    aget v1, v1, v0

    mul-int/2addr v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iput v6, p0, Landroid/renderscript/Type;->mElementCount:I

    return-void
.end method

.method public greylist-max-o getArray(I)I
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Array dimension out of range."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o getArrayCount()I
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz p0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCount()I
    .locals 0

    iget p0, p0, Landroid/renderscript/Type;->mElementCount:I

    return p0
.end method

.method public whitelist getElement()Landroid/renderscript/Element;
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object p0
.end method

.method public whitelist getX()I
    .locals 0

    iget p0, p0, Landroid/renderscript/Type;->mDimX:I

    return p0
.end method

.method public whitelist getY()I
    .locals 0

    iget p0, p0, Landroid/renderscript/Type;->mDimY:I

    return p0
.end method

.method public whitelist getYuv()I
    .locals 0

    iget p0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return p0
.end method

.method public whitelist getZ()I
    .locals 0

    iget p0, p0, Landroid/renderscript/Type;->mDimZ:I

    return p0
.end method

.method public whitelist hasFaces()Z
    .locals 0

    iget-boolean p0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return p0
.end method

.method public whitelist hasMipmaps()Z
    .locals 0

    iget-boolean p0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return p0
.end method

.method greylist-max-o updateFromNative()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [J

    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v2, v2

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimY:I

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimZ:I

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    const/4 v3, 0x4

    aget-wide v3, v0, v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimFaces:Z

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->updateFromNative()V

    :cond_2
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    return-void
.end method
