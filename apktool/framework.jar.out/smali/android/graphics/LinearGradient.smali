.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# instance fields
.field private greylist mColor0:I

.field private greylist-max-r mColor1:I

.field private final blacklist mColorLongs:[J

.field private greylist mColors:[I

.field private greylist-max-r mPositions:[F

.field private greylist-max-r mTileMode:Landroid/graphics/Shader$TileMode;

.field private greylist-max-r mX0:F

.field private greylist-max-r mX1:F

.field private greylist-max-r mY0:F

.field private greylist-max-r mY1:F


# direct methods
.method public constructor whitelist <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 10

    invoke-static {p5}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v5

    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFJJLandroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public constructor whitelist <init>(FFFFJJLandroid/graphics/Shader$TileMode;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p5, v0, v1

    const/4 p5, 0x1

    aput-wide p7, v0, p5

    const/4 p6, 0x0

    move-object p7, p9

    move-object p5, v0

    invoke-direct/range {p0 .. p7}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public constructor whitelist <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 9

    invoke-static {p5}, Landroid/graphics/LinearGradient;->convertColors([I)[J

    move-result-object v5

    sget-object p5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    return-void
.end method

.method public constructor whitelist <init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V
    .locals 10

    invoke-virtual {p5}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [J

    invoke-static {p5}, Landroid/graphics/LinearGradient;->detectColorSpace([J)Landroid/graphics/ColorSpace;

    move-result-object v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    return-void
.end method

.method private constructor blacklist <init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V
    .locals 1

    invoke-direct {p0, p8}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    if-eqz p6, :cond_1

    array-length p8, p5

    array-length v0, p6

    if-ne p8, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "color and position arrays must be of equal length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    iput-object p5, p0, Landroid/graphics/LinearGradient;->mColorLongs:[J

    if-eqz p6, :cond_2

    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method private native blacklist nativeCreate(JFFFF[J[FIJ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .locals 12

    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v7, p0, Landroid/graphics/LinearGradient;->mColorLongs:[J

    iget-object v8, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    iget-object p3, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v9, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-virtual {p0}, Landroid/graphics/LinearGradient;->colorSpace()Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v10

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/graphics/LinearGradient;->nativeCreate(JFFFF[J[FIJ)J

    move-result-wide p0

    return-wide p0
.end method
