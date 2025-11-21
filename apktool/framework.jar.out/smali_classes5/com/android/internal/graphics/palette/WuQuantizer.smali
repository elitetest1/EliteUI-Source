.class public final Lcom/android/internal/graphics/palette/WuQuantizer;
.super Ljava/lang/Object;
.source "WuQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;,
        Lcom/android/internal/graphics/palette/WuQuantizer$Box;,
        Lcom/android/internal/graphics/palette/WuQuantizer$Direction;,
        Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BITS:I = 0x5

.field private static final blacklist MAX_INDEX:I = 0x20

.field private static final blacklist SIDE_LENGTH:I = 0x21

.field private static final blacklist TOTAL_SIZE:I = 0x8c61


# instance fields
.field private blacklist mColors:[I

.field private blacklist mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

.field private blacklist mInputPixelToCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMoments:[D

.field private blacklist mMomentsB:[I

.field private blacklist mMomentsG:[I

.field private blacklist mMomentsR:[I

.field private blacklist mPalette:Lcom/android/internal/graphics/palette/Palette;

.field private blacklist mWeights:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    :goto_0
    sub-int/2addr p1, p0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unexpected direction "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto :goto_0
.end method

.method private blacklist constructHistogram(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x8c61

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    shr-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v6, v5, v4

    add-int/2addr v6, v0

    aput v6, v5, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v6, v5, v4

    mul-int v7, v2, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v6, v5, v4

    mul-int v7, v3, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v6, v5, v4

    mul-int v7, v1, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v6, v5, v4

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v1

    add-int/2addr v2, v1

    mul-int/2addr v0, v2

    int-to-double v0, v0

    add-double/2addr v6, v0

    aput-wide v6, v5, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
    .locals 13

    new-array v0, p1, [Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    new-instance v3, Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/graphics/palette/WuQuantizer$Box;-><init>(Lcom/android/internal/graphics/palette/WuQuantizer-IA;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, p1, [D

    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v2, v2, v0

    const/16 v3, 0x20

    iput v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    const/4 v2, 0x1

    move v4, v0

    move v5, v4

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_7

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v5, v4

    aget-object v5, v5, v3

    invoke-direct {p0, v6, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    if-le v5, v2, :cond_1

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v8

    goto :goto_2

    :cond_1
    move-wide v8, v6

    :goto_2
    aput-wide v8, v1, v4

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    if-le v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v4

    goto :goto_3

    :cond_2
    move-wide v4, v6

    :goto_3
    aput-wide v4, v1, v3

    goto :goto_4

    :cond_3
    aput-wide v6, v1, v4

    add-int/lit8 v3, v3, -0x1

    :goto_4
    aget-wide v4, v1, v0

    move v8, v0

    move v9, v2

    :goto_5
    if-gt v9, v3, :cond_5

    aget-wide v10, v1, v9

    cmpl-double v12, v10, v4

    if-lez v12, :cond_4

    move v8, v9

    move-wide v4, v10

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_6

    move v5, v3

    goto :goto_6

    :cond_6
    move v5, v3

    move v4, v8

    goto :goto_1

    :cond_7
    :goto_6
    new-instance p0, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    invoke-direct {p0, p1, v5}, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;-><init>(II)V

    return-object p0
.end method

.method private blacklist createMoments()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x21

    if-ge v2, v3, :cond_2

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    new-array v7, v3, [I

    new-array v8, v3, [D

    const/4 v9, 0x1

    :goto_1
    if-ge v9, v3, :cond_1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move v13, v10

    move-wide v14, v11

    const/4 v1, 0x1

    move v11, v13

    move v12, v11

    :goto_2
    if-ge v1, v3, :cond_0

    invoke-static {v2, v9, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v16

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v3, v3, v16

    add-int/2addr v10, v3

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v3, v3, v16

    add-int/2addr v11, v3

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v3, v3, v16

    add-int/2addr v12, v3

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v3, v3, v16

    add-int/2addr v13, v3

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v17, v3, v16

    add-double v14, v14, v17

    aget v3, v4, v1

    add-int/2addr v3, v10

    aput v3, v4, v1

    aget v3, v5, v1

    add-int/2addr v3, v11

    aput v3, v5, v1

    aget v3, v6, v1

    add-int/2addr v3, v12

    aput v3, v6, v1

    aget v3, v7, v1

    add-int/2addr v3, v13

    aput v3, v7, v1

    aget-wide v17, v8, v1

    add-double v17, v17, v14

    aput-wide v17, v8, v1

    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v9, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v3

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v18, v1, v3

    aget v19, v4, v17

    add-int v18, v18, v19

    aput v18, v1, v16

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v18, v1, v3

    aget v19, v5, v17

    add-int v18, v18, v19

    aput v18, v1, v16

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v18, v1, v3

    aget v19, v6, v17

    add-int v18, v18, v19

    aput v18, v1, v16

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v18, v1, v3

    aget v19, v7, v17

    add-int v18, v18, v19

    aput v18, v1, v16

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v18, v1, v3

    aget-wide v20, v8, v17

    add-double v18, v18, v20

    aput-wide v18, v1, v16

    add-int/lit8 v1, v17, 0x1

    const/16 v3, 0x21

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/16 v3, 0x21

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private blacklist createResult(I)[I
    .locals 9

    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v4, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v4, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    div-int/2addr v6, v5

    iget-object v7, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v4, v7}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v7

    div-int/2addr v7, v5

    iget-object v8, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v4, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v4

    div-int/2addr v4, v5

    invoke-static {v6, v7, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v3, [I

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private blacklist cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v7

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v8

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v9

    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    const/4 v10, 0x1

    add-int/lit8 v4, v0, 0x1

    iget v5, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object p0

    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    add-int/lit8 v4, p1, 0x1

    iget v5, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object p1

    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    add-int/lit8 v4, v0, 0x1

    iget v5, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    iget-wide v5, p1, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    iget-wide v7, v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_1

    cmpl-double v1, v3, v7

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    if-gez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    goto :goto_0

    :cond_1
    cmpl-double v1, v5, v3

    if-ltz v1, :cond_2

    cmpl-double v1, v5, v7

    if-ltz v1, :cond_2

    sget-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    :goto_0
    iget v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v3, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v3, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput v3, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v10, :cond_4

    const/4 p0, 0x2

    if-ne v3, p0, :cond_3

    iget p0, v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unexpected direction "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget p0, p1, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    goto :goto_1

    :cond_5
    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    :goto_1
    iget p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr p0, p1

    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr p1, v0

    mul-int/2addr p0, p1

    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr p1, v0

    mul-int/2addr p0, p1

    iput p0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    iget p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr p0, p1

    iget p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr p1, v0

    mul-int/2addr p0, p1

    iget p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr p1, v0

    mul-int/2addr p0, p1

    iput p0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    return v10
.end method

.method private static blacklist getIndex(III)I
    .locals 2

    shl-int/lit8 v0, p0, 0xa

    shl-int/lit8 v1, p0, 0x6

    add-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private blacklist maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    move/from16 v11, p4

    move v10, v9

    move-wide v8, v7

    move/from16 v7, p3

    :goto_0
    if-ge v7, v11, :cond_3

    iget-object v12, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v7, v12}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v7, v13}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v13

    add-int/2addr v13, v4

    iget-object v14, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v7, v14}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v14

    add-int/2addr v14, v5

    iget-object v15, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v7, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v15

    add-int/2addr v15, v6

    if-nez v15, :cond_0

    goto :goto_1

    :cond_0
    mul-int v16, v12, v12

    mul-int v17, v13, v13

    add-int v16, v16, v17

    mul-int v17, v14, v14

    add-int v0, v16, v17

    int-to-double v0, v0

    move-wide/from16 v16, v0

    int-to-double v0, v15

    div-double v0, v16, v0

    sub-int v12, p5, v12

    sub-int v13, p6, v13

    sub-int v14, p7, v14

    sub-int v15, p8, v15

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    mul-int/2addr v12, v12

    mul-int/2addr v13, v13

    add-int/2addr v12, v13

    mul-int/2addr v14, v14

    add-int/2addr v12, v14

    int-to-double v12, v12

    int-to-double v14, v15

    div-double/2addr v12, v14

    add-double/2addr v0, v12

    cmpl-double v12, v0, v8

    if-lez v12, :cond_2

    move-wide v8, v0

    move v10, v7

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    invoke-direct {v0, v10, v8, v9}, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;-><init>(ID)V

    return-object v0
.end method

.method private static blacklist top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    invoke-static {p1, v0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    invoke-static {v0, p0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "unexpected direction "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, p2, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p2, p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {p2, v0, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0
.end method

.method private blacklist variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D
    .locals 9

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {p1, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {p1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v4, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v5, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v4

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v2, v2

    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {p1, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result p0

    int-to-double v0, v0

    int-to-double p0, p0

    div-double/2addr v0, p0

    sub-double/2addr v3, v0

    return-wide v3
.end method

.method private static blacklist volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I
    .locals 4

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p1, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p1, p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public blacklist getColors()[I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    return-object p0
.end method

.method public blacklist getQuantizedColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist inputPixelToCount()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    return-object p0
.end method

.method public blacklist quantize([II)V
    .locals 5

    new-instance v0, Lcom/android/internal/graphics/palette/QuantizerMap;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/QuantizerMap;->quantize([II)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;->getColorToCount()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    add-int/lit8 v3, p2, 0x1

    aput v0, v2, p2

    move p2, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/WuQuantizer;->constructHistogram(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->createMoments()V

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mResultCount:I

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/WuQuantizer;->createResult(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    array-length v0, p2

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    new-instance v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-direct {v4, v3, v1}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/internal/graphics/palette/Palette;->from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    return-void
.end method
