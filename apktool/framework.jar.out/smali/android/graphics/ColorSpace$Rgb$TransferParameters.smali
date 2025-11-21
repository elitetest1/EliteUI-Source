.class public Landroid/graphics/ColorSpace$Rgb$TransferParameters;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferParameters"
.end annotation


# static fields
.field private static final blacklist TYPE_HLGish:D = -3.0

.field private static final blacklist TYPE_PQish:D = -2.0


# instance fields
.field public final whitelist a:D

.field public final whitelist b:D

.field public final whitelist c:D

.field public final whitelist d:D

.field public final whitelist e:D

.field public final whitelist f:D

.field public final whitelist g:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$misHLGish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isHLGish()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPQish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isPQish()Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(DDDDD)V
    .locals 15

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    return-void
.end method

.method public constructor whitelist <init>(DDDDDDD)V
    .locals 13

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v6, v7}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isSpecialG(D)Z

    move-result v8

    if-nez v8, :cond_a

    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-ltz v10, :cond_9

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Math;->ulp(F)F

    move-result v12

    add-float/2addr v12, v11

    float-to-double v11, v12

    cmpg-double v11, v4, v11

    if-gtz v11, :cond_9

    if-nez v10, :cond_1

    cmpl-double v10, p1, v8

    if-eqz v10, :cond_0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter a or g is zero, the transfer function is constant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v4, v10

    if-ltz v10, :cond_3

    cmpl-double v10, v2, v8

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter c is zero, the transfer function is constant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    cmpl-double v10, p1, v8

    if-eqz v10, :cond_4

    cmpl-double v10, v6, v8

    if-nez v10, :cond_5

    :cond_4
    cmpl-double v10, v2, v8

    if-eqz v10, :cond_8

    :cond_5
    cmpg-double v10, v2, v8

    if-ltz v10, :cond_7

    cmpg-double v10, p1, v8

    if-ltz v10, :cond_6

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The transfer function must be positive or increasing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The transfer function must be increasing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parameter d must be in the range [0..1], was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    iput-wide p1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iput-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iput-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    move-wide/from16 v0, p9

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    move-wide/from16 v0, p11

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iput-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters cannot be NaN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist isHLGish()Z
    .locals 4

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPQish()Z
    .locals 4

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isSpecialG(D)Z
    .locals 2

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide p0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_8

    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
