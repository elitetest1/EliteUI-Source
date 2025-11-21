.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final greylist-max-o TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final whitelist boundingBox:Landroid/graphics/RectF;

.field public final whitelist length:F

.field private greylist-max-o mCachedPath:Landroid/graphics/Path;

.field public final whitelist points:[F

.field private final greylist-max-o timestamps:[J


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [F

    new-array v3, v1, [J

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    move-object/from16 v9, p1

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/gesture/GesturePoint;

    mul-int/lit8 v11, v6, 0x2

    iget v12, v10, Landroid/gesture/GesturePoint;->x:F

    aput v12, v2, v11

    add-int/lit8 v11, v11, 0x1

    iget v12, v10, Landroid/gesture/GesturePoint;->y:F

    aput v12, v2, v11

    iget-wide v11, v10, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v11, v3, v7

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v4, Landroid/graphics/RectF;->top:F

    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    iput v8, v4, Landroid/graphics/RectF;->left:F

    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    iput v8, v4, Landroid/graphics/RectF;->right:F

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v6

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    float-to-double v11, v8

    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    add-int/lit8 v13, v6, -0x1

    mul-int/lit8 v13, v13, 0x2

    aget v14, v2, v13

    sub-float/2addr v8, v14

    float-to-double v14, v8

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v13, v13, 0x1

    aget v13, v2, v13

    sub-float/2addr v8, v13

    move/from16 v16, v6

    float-to-double v5, v8

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    double-to-float v5, v11

    iget v6, v10, Landroid/gesture/GesturePoint;->x:F

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v4, v6, v8}, Landroid/graphics/RectF;->union(FF)V

    move v8, v5

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v16, 0x1

    goto :goto_0

    :cond_1
    iput-object v3, v0, Landroid/gesture/GestureStroke;->timestamps:[J

    iput-object v2, v0, Landroid/gesture/GestureStroke;->points:[F

    iput-object v4, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iput v8, v0, Landroid/gesture/GestureStroke;->length:F

    return-void
.end method

.method static greylist-max-o deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/gesture/GestureStroke;

    invoke-direct {p0, v1}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private greylist-max-o makePath()V
    .locals 11

    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    :goto_0
    if-ge v5, v1, :cond_3

    aget v6, v0, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    move v3, v6

    move v4, v7

    goto :goto_2

    :cond_0
    sub-float v8, v6, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v7, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v8, v8, v10

    if-gez v8, :cond_1

    cmpl-float v8, v9, v10

    if-ltz v8, :cond_2

    :cond_1
    add-float v8, v6, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v10, v7, v4

    div-float/2addr v10, v9

    invoke-virtual {v2, v3, v4, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    iput-object v2, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public whitelist clearPath()V
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object p0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public whitelist computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object p0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object p0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object p0
.end method

.method greylist-max-o serialize(Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object p0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    array-length v1, v0

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v3, v2, 0x1

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    div-int/lit8 v3, v2, 0x2

    aget-wide v3, p0, v3

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist toPath(FFI)Landroid/graphics/Path;
    .locals 7

    invoke-static {p0, p3}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object p3

    iget-object p0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-static {p3, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p2, p0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    move p1, p2

    :cond_0
    invoke-static {p3, p1, p1}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    array-length p0, p3

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p2

    move p2, p1

    :goto_0
    if-ge v1, p0, :cond_4

    aget v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p3, v3

    if-nez v0, :cond_1

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v0, p1

    :goto_1
    move p1, v2

    move p2, v3

    goto :goto_2

    :cond_1
    sub-float v4, v2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v3, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v4, v4, v6

    if-gez v4, :cond_2

    cmpl-float v4, v5, v6

    if-ltz v4, :cond_3

    :cond_2
    add-float v4, v2, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v6, v3, p2

    div-float/2addr v6, v5

    invoke-virtual {v0, p1, p2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return-object v0
.end method
