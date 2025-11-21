.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;,
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;
    }
.end annotation


# static fields
.field public static final blacklist TYPE_BEZIER_CURVETO:B = 0x4t

.field public static final blacklist TYPE_CLOSE:B = 0x6t

.field public static final blacklist TYPE_ELLIPTICAL_ARC:B = 0x5t

.field public static final blacklist TYPE_LINETO:B = 0x2t

.field public static final blacklist TYPE_MOVETO:B = 0x1t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_QUADRATIC_CURVETO:B = 0x3t


# instance fields
.field public final blacklist mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

.field public blacklist mPathInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist path:Landroid/graphics/Path;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private blacklist addCommand([FCC[F)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v12, 0x0

    aget v1, p1, v12

    const/4 v13, 0x1

    aget v2, p1, v13

    const/4 v14, 0x2

    aget v3, p1, v14

    const/4 v15, 0x3

    aget v4, p1, v15

    sparse-switch v10, :sswitch_data_0

    :sswitch_0
    move/from16 v16, v14

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    return-void

    :sswitch_2
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_3
    move/from16 v16, v13

    goto :goto_1

    :sswitch_4
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_5
    const/4 v5, 0x7

    :goto_0
    move/from16 v16, v5

    :goto_1
    move v7, v1

    move v8, v2

    move v9, v12

    move/from16 v1, p2

    :goto_2
    array-length v2, v11

    if-ge v9, v2, :cond_1e

    const/16 v2, 0x41

    if-eq v10, v2, :cond_1b

    const/16 v2, 0x43

    if-eq v10, v2, :cond_1a

    const/16 v6, 0x48

    if-eq v10, v6, :cond_19

    const/16 v6, 0x51

    if-eq v10, v6, :cond_18

    const/16 p2, 0x0

    const/16 v5, 0x56

    if-eq v10, v5, :cond_17

    const/16 v5, 0x61

    if-eq v10, v5, :cond_14

    const/16 v5, 0x63

    if-eq v10, v5, :cond_13

    move/from16 v17, v12

    const/16 v12, 0x68

    if-eq v10, v12, :cond_12

    const/16 v12, 0x71

    if-eq v10, v12, :cond_11

    move/from16 v18, v13

    const/16 v13, 0x76

    if-eq v10, v13, :cond_10

    const/16 v13, 0x4c

    if-eq v10, v13, :cond_f

    const/16 v13, 0x4d

    if-eq v10, v13, :cond_e

    const/16 v13, 0x73

    move/from16 v19, v14

    const/16 v14, 0x53

    const/high16 v20, 0x40000000    # 2.0f

    if-eq v10, v14, :cond_b

    move/from16 v21, v15

    const/16 v15, 0x74

    const/16 v14, 0x54

    if-eq v10, v14, :cond_8

    const/16 v2, 0x6c

    if-eq v10, v2, :cond_7

    const/16 v2, 0x6d

    if-eq v10, v2, :cond_6

    if-eq v10, v13, :cond_3

    if-eq v10, v15, :cond_0

    :goto_3
    move v14, v9

    goto/16 :goto_10

    :cond_0
    if-eq v1, v12, :cond_2

    if-eq v1, v15, :cond_2

    if-eq v1, v6, :cond_2

    if-ne v1, v14, :cond_1

    goto :goto_4

    :cond_1
    move/from16 v1, p2

    move v5, v1

    goto :goto_5

    :cond_2
    :goto_4
    sub-float v5, v7, v3

    sub-float v1, v8, v4

    :goto_5
    add-float/2addr v5, v7

    add-float/2addr v1, v8

    aget v2, v11, v9

    add-float/2addr v2, v7

    add-int/lit8 v3, v9, 0x1

    aget v4, v11, v3

    add-float/2addr v4, v8

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v2, v11, v9

    add-float/2addr v7, v2

    aget v2, v11, v3

    add-float/2addr v8, v2

    move v4, v1

    move v3, v5

    goto :goto_3

    :cond_3
    if-eq v1, v5, :cond_5

    if-eq v1, v13, :cond_5

    const/16 v2, 0x43

    if-eq v1, v2, :cond_5

    const/16 v2, 0x53

    if-ne v1, v2, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v1, p2

    move v5, v1

    goto :goto_7

    :cond_5
    :goto_6
    sub-float v5, v7, v3

    sub-float v1, v8, v4

    :goto_7
    add-float/2addr v5, v7

    add-float v2, v8, v1

    aget v1, v11, v9

    add-float v3, v7, v1

    add-int/lit8 v12, v9, 0x1

    aget v1, v11, v12

    add-float v4, v8, v1

    add-int/lit8 v13, v9, 0x2

    aget v1, v11, v13

    add-float/2addr v1, v7

    add-int/lit8 v14, v9, 0x3

    aget v6, v11, v14

    add-float/2addr v6, v8

    move/from16 v22, v5

    move v5, v1

    move/from16 v1, v22

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v1, v11, v9

    add-float/2addr v1, v7

    aget v2, v11, v12

    add-float/2addr v2, v8

    aget v3, v11, v13

    add-float/2addr v7, v3

    aget v3, v11, v14

    goto/16 :goto_9

    :cond_6
    aget v1, v11, v9

    add-float/2addr v7, v1

    add-int/lit8 v1, v9, 0x1

    aget v1, v11, v1

    add-float/2addr v8, v1

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto :goto_3

    :cond_7
    aget v1, v11, v9

    add-float/2addr v7, v1

    add-int/lit8 v1, v9, 0x1

    aget v1, v11, v1

    add-float/2addr v8, v1

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_3

    :cond_8
    if-eq v1, v12, :cond_9

    if-eq v1, v15, :cond_9

    if-eq v1, v6, :cond_9

    if-ne v1, v14, :cond_a

    :cond_9
    mul-float v7, v7, v20

    sub-float/2addr v7, v3

    mul-float v8, v8, v20

    sub-float/2addr v8, v4

    :cond_a
    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v3, v11, v2

    invoke-virtual {v0, v7, v8, v1, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v1, v11, v9

    aget v2, v11, v2

    move v3, v7

    move v4, v8

    move v14, v9

    move v7, v1

    goto/16 :goto_c

    :cond_b
    move/from16 v21, v15

    if-eq v1, v5, :cond_c

    if-eq v1, v13, :cond_c

    const/16 v2, 0x43

    if-eq v1, v2, :cond_c

    const/16 v2, 0x53

    if-ne v1, v2, :cond_d

    :cond_c
    mul-float v7, v7, v20

    sub-float/2addr v7, v3

    mul-float v8, v8, v20

    sub-float/2addr v8, v4

    :cond_d
    move v1, v7

    move v2, v8

    aget v3, v11, v9

    add-int/lit8 v7, v9, 0x1

    aget v4, v11, v7

    add-int/lit8 v8, v9, 0x2

    aget v5, v11, v8

    add-int/lit8 v12, v9, 0x3

    aget v6, v11, v12

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v1, v11, v9

    aget v2, v11, v7

    aget v3, v11, v8

    aget v4, v11, v12

    move v7, v3

    move v8, v4

    move v14, v9

    goto/16 :goto_d

    :cond_e
    move/from16 v19, v14

    move/from16 v21, v15

    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v2, v11, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto :goto_8

    :cond_f
    move/from16 v19, v14

    move/from16 v21, v15

    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v2, v11, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    :goto_8
    move v7, v1

    move v8, v2

    goto/16 :goto_3

    :cond_10
    move/from16 v19, v14

    move/from16 v21, v15

    aget v1, v11, v9

    add-float/2addr v8, v1

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_3

    :cond_11
    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    aget v1, v11, v9

    add-float/2addr v1, v7

    add-int/lit8 v2, v9, 0x1

    aget v3, v11, v2

    add-float/2addr v3, v8

    add-int/lit8 v4, v9, 0x2

    aget v5, v11, v4

    add-float/2addr v5, v7

    add-int/lit8 v6, v9, 0x3

    aget v12, v11, v6

    add-float/2addr v12, v8

    invoke-virtual {v0, v1, v3, v5, v12}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v1, v11, v9

    add-float/2addr v1, v7

    aget v2, v11, v2

    add-float/2addr v2, v8

    aget v3, v11, v4

    add-float/2addr v7, v3

    aget v3, v11, v6

    :goto_9
    add-float/2addr v8, v3

    move v3, v1

    move v4, v2

    goto/16 :goto_3

    :cond_12
    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    aget v1, v11, v9

    add-float/2addr v7, v1

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_3

    :cond_13
    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    aget v1, v11, v9

    add-float/2addr v1, v7

    add-int/lit8 v2, v9, 0x1

    aget v2, v11, v2

    add-float/2addr v2, v8

    add-int/lit8 v12, v9, 0x2

    aget v3, v11, v12

    add-float/2addr v3, v7

    add-int/lit8 v13, v9, 0x3

    aget v4, v11, v13

    add-float/2addr v4, v8

    add-int/lit8 v14, v9, 0x4

    aget v5, v11, v14

    add-float/2addr v5, v7

    add-int/lit8 v15, v9, 0x5

    aget v6, v11, v15

    add-float/2addr v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v0, v11, v12

    add-float/2addr v0, v7

    aget v1, v11, v13

    add-float/2addr v1, v8

    aget v2, v11, v14

    add-float/2addr v7, v2

    aget v2, v11, v15

    add-float/2addr v8, v2

    move v3, v0

    move v4, v1

    goto/16 :goto_3

    :cond_14
    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    add-int/lit8 v12, v9, 0x5

    aget v0, v11, v12

    add-float v3, v0, v7

    add-int/lit8 v13, v9, 0x6

    aget v0, v11, v13

    add-float v4, v0, v8

    aget v5, v11, v9

    add-int/lit8 v0, v9, 0x1

    aget v6, v11, v0

    add-int/lit8 v0, v9, 0x2

    aget v0, v11, v0

    add-int/lit8 v1, v9, 0x3

    aget v1, v11, v1

    cmpl-float v1, v1, p2

    move v2, v8

    if-eqz v1, :cond_15

    move/from16 v8, v18

    goto :goto_a

    :cond_15
    move/from16 v8, v17

    :goto_a
    add-int/lit8 v1, v9, 0x4

    aget v1, v11, v1

    cmpl-float v1, v1, p2

    move v14, v9

    if-eqz v1, :cond_16

    move/from16 v9, v18

    goto :goto_b

    :cond_16
    move/from16 v9, v17

    :goto_b
    move v1, v7

    move v7, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    aget v3, v11, v12

    add-float v7, v1, v3

    aget v1, v11, v13

    add-float v8, v2, v1

    move v3, v7

    move v4, v8

    goto/16 :goto_10

    :cond_17
    move v1, v7

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    move v14, v9

    aget v2, v11, v14

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    :goto_c
    move v8, v2

    goto/16 :goto_10

    :cond_18
    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    move v14, v9

    aget v1, v11, v14

    add-int/lit8 v9, v14, 0x1

    aget v2, v11, v9

    add-int/lit8 v3, v14, 0x2

    aget v4, v11, v3

    add-int/lit8 v5, v14, 0x3

    aget v6, v11, v5

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v1, v11, v14

    aget v2, v11, v9

    aget v3, v11, v3

    aget v4, v11, v5

    move v7, v3

    move v8, v4

    :goto_d
    move v3, v1

    move v4, v2

    goto/16 :goto_10

    :cond_19
    move v2, v8

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    move v14, v9

    aget v1, v11, v14

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    move v7, v1

    goto/16 :goto_10

    :cond_1a
    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    move v14, v9

    aget v1, v11, v14

    add-int/lit8 v9, v14, 0x1

    aget v2, v11, v9

    add-int/lit8 v9, v14, 0x2

    aget v3, v11, v9

    add-int/lit8 v7, v14, 0x3

    aget v4, v11, v7

    add-int/lit8 v8, v14, 0x4

    aget v5, v11, v8

    add-int/lit8 v12, v14, 0x5

    aget v6, v11, v12

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v0, v11, v8

    aget v1, v11, v12

    aget v2, v11, v9

    aget v3, v11, v7

    move v7, v0

    move v8, v1

    move v4, v3

    move v3, v2

    goto :goto_10

    :cond_1b
    move v1, v7

    move v2, v8

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    const/16 p2, 0x0

    move v14, v9

    add-int/lit8 v12, v14, 0x5

    aget v3, v11, v12

    add-int/lit8 v13, v14, 0x6

    aget v4, v11, v13

    aget v5, v11, v14

    add-int/lit8 v9, v14, 0x1

    aget v6, v11, v9

    add-int/lit8 v9, v14, 0x2

    aget v7, v11, v9

    add-int/lit8 v9, v14, 0x3

    aget v0, v11, v9

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1c

    move/from16 v8, v18

    goto :goto_e

    :cond_1c
    move/from16 v8, v17

    :goto_e
    add-int/lit8 v9, v14, 0x4

    aget v0, v11, v9

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    move/from16 v9, v18

    goto :goto_f

    :cond_1d
    move/from16 v9, v17

    :goto_f
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    aget v0, v11, v12

    aget v1, v11, v13

    move v3, v0

    move v7, v3

    move v4, v1

    move v8, v4

    :goto_10
    add-int v9, v14, v16

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v15, v21

    goto/16 :goto_2

    :cond_1e
    move v1, v7

    move v2, v8

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v21, v15

    aput v1, p1, v17

    aput v2, p1, v18

    aput v3, p1, v19

    aput v4, p1, v21

    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x56 -> :sswitch_3
        0x5a -> :sswitch_1
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x76 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private blacklist arcToBezier(DDDDDDDDD)V
    .locals 46

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double/2addr v13, v7

    mul-double/2addr v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    int-to-double v9, v4

    div-double v9, p17, v9

    const/16 v23, 0x0

    move-wide/from16 v29, v2

    move-wide/from16 v25, v11

    move-wide/from16 v27, v17

    move/from16 v2, v23

    move-wide/from16 v11, p9

    move-wide/from16 v17, p11

    move-wide/from16 v23, p15

    :goto_0
    if-ge v2, v4, :cond_0

    add-double v31, v23, v9

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, p1, v37

    mul-double v39, v19, v33

    sub-double v0, v37, v39

    mul-double v37, p5, v7

    mul-double v37, v37, v35

    add-double v37, p3, v37

    mul-double v39, v21, v33

    move/from16 p7, v2

    add-double v2, v37, v39

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v33, v35

    sub-double v23, v31, v23

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v23, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v41, v35, v39

    mul-double v41, v41, v35

    add-double v41, v41, v29

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    sub-double v35, v35, v41

    mul-double v23, v23, v35

    div-double v23, v23, v39

    mul-double v27, v27, v23

    add-double v11, v11, v27

    mul-double v25, v25, v23

    move/from16 v27, v4

    move-wide/from16 v35, v5

    add-double v4, v17, v25

    mul-double v17, v23, v37

    move-wide/from16 p13, v7

    sub-double v6, v0, v17

    mul-double v23, v23, v33

    move-wide/from16 p17, v9

    sub-double v8, v2, v23

    double-to-float v10, v11

    double-to-float v4, v4

    double-to-float v5, v6

    double-to-float v6, v8

    double-to-float v7, v0

    double-to-float v8, v2

    move-object/from16 v39, p0

    move/from16 v41, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v8

    move/from16 v40, v10

    invoke-virtual/range {v39 .. v45}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v4, p7, 0x1

    move-wide/from16 v7, p13

    move-wide/from16 v9, p17

    move-wide v11, v0

    move-wide/from16 v17, v2

    move v2, v4

    move/from16 v4, v27

    move-wide/from16 v23, v31

    move-wide/from16 v25, v33

    move-wide/from16 v5, v35

    move-wide/from16 v27, v37

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private blacklist createNodesFromPathData(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x6d

    move v4, v1

    move v5, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->nextStart(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-direct {p0, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->getFloats(Ljava/lang/String;)[F

    move-result-object v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v0, v3, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :cond_1
    add-int/lit8 v5, v4, 0x1

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_0

    :cond_2
    sub-int/2addr v4, v5

    if-ne v4, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    new-array v1, v2, [F

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist drawArc(FFFFFFFZZ)V
    .locals 43

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    float-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v1

    mul-double v12, v10, v4

    move/from16 v6, p2

    float-to-double v14, v6

    mul-double v16, v14, v8

    add-double v12, v12, v16

    move-wide/from16 v17, v14

    move-wide v15, v10

    move-wide v13, v12

    float-to-double v11, v0

    div-double/2addr v13, v11

    neg-float v10, v1

    float-to-double v0, v10

    mul-double/2addr v0, v8

    mul-double v21, v17, v4

    add-double v0, v0, v21

    move-wide/from16 v21, v13

    float-to-double v13, v2

    div-double/2addr v0, v13

    move-wide/from16 v23, v0

    float-to-double v0, v3

    mul-double/2addr v0, v4

    move/from16 v10, p4

    move-wide/from16 v25, v0

    float-to-double v0, v10

    mul-double v27, v0, v8

    add-double v25, v25, v27

    div-double v25, v25, v11

    move-wide/from16 v27, v0

    neg-float v0, v3

    float-to-double v0, v0

    mul-double/2addr v0, v8

    mul-double v27, v27, v4

    add-double v0, v0, v27

    div-double/2addr v0, v13

    sub-double v27, v21, v25

    sub-double v29, v23, v0

    add-double v31, v21, v25

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    div-double v31, v31, v33

    add-double v35, v23, v0

    div-double v35, v35, v33

    mul-double v33, v27, v27

    mul-double v37, v29, v29

    add-double v33, v33, v37

    const-wide/16 v37, 0x0

    cmpl-double v39, v33, v37

    if-nez v39, :cond_0

    return-void

    :cond_0
    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    div-double v39, v39, v33

    const-wide/high16 v41, 0x3fd0000000000000L    # 0.25

    sub-double v39, v39, v41

    cmpg-double v41, v39, v37

    if-gez v41, :cond_1

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v4

    double-to-float v0, v0

    mul-float v5, p5, v0

    mul-float/2addr v0, v2

    move/from16 v1, p1

    move/from16 v8, p8

    move/from16 v9, p9

    move v2, v6

    move v4, v10

    move v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    return-void

    :cond_1
    move/from16 v2, p9

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v27, v27, v6

    mul-double v6, v6, v29

    move/from16 v3, p8

    if-ne v3, v2, :cond_2

    sub-double v31, v31, v6

    add-double v35, v35, v27

    goto :goto_0

    :cond_2
    add-double v31, v31, v6

    sub-double v35, v35, v27

    :goto_0
    sub-double v6, v23, v35

    move-wide/from16 v23, v0

    sub-double v0, v21, v31

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v21

    sub-double v0, v23, v35

    sub-double v6, v25, v31

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v21

    cmpl-double v3, v0, v37

    if-ltz v3, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eq v2, v6, :cond_5

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v3, :cond_4

    sub-double/2addr v0, v6

    goto :goto_2

    :cond_4
    add-double/2addr v0, v6

    :cond_5
    :goto_2
    move-wide/from16 v23, v0

    mul-double v31, v31, v11

    mul-double v35, v35, v13

    mul-double v0, v31, v4

    mul-double v2, v35, v8

    sub-double/2addr v0, v2

    mul-double v31, v31, v8

    mul-double v35, v35, v4

    add-double v9, v31, v35

    move-object/from16 v6, p0

    move-wide v7, v0

    invoke-direct/range {v6 .. v24}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcToBezier(DDDDDDDDD)V

    return-void
.end method

.method private blacklist drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V
    .locals 9

    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget p1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v6, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v8, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget p1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget p1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget p1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V
    .locals 4

    const/4 p0, 0x0

    iput-boolean p0, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    move v0, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, p2, :cond_2

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    :cond_1
    move p0, v3

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iput v0, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    return-void
.end method

.method private blacklist getFloats(Ljava/lang/String;)[F
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;-><init>(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath-IA;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    iget v5, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v0

    move v0, v6

    :cond_1
    iget-boolean v4, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    new-array p0, v0, [F

    return-object p0
.end method

.method private blacklist nextStart(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p2, p0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v1, p0, -0x5a

    mul-int/2addr v0, v1

    if-lez v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 p0, p0, -0x7a

    mul-int/2addr v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method


# virtual methods
.method public blacklist arcTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-direct {v1, p0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object p0

    return-object p0
.end method

.method public blacklist close()V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist cubicTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 0

    const/16 p3, 0x1f

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->save(I)I

    iget p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->alpha:F

    mul-float/2addr p5, p3

    iget-object p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->setShadowLayer()V

    iget-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleFill:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleStroke:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public blacklist drawPath()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v7

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unsupported command type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v3, v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v4, v0, v2

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcTo(FFFFFF)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_22

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string/jumbo v4, "strokeWidth"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    iget v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iput v4, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v4, "strokeOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    const/16 v6, 0x23

    const v7, 0xffffff

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v9, v6, :cond_3

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    :cond_4
    if-nez v8, :cond_5

    new-instance v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v3, v7

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    iput v2, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v4, "strokeColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v9, 0x10

    const/high16 v10, -0x10000

    const-string v11, "#"

    const/4 v12, 0x1

    if-eqz v4, :cond_b

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v5, v6, :cond_7

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    :cond_8
    if-nez v8, :cond_9

    new-instance v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto :goto_1

    :cond_a
    iput v10, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    :goto_1
    iget v2, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    iget v3, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v3, v7

    not-int v3, v3

    or-int/2addr v2, v3

    iput v2, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_4

    :cond_b
    const-string v4, "fillColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x20

    if-eqz v4, :cond_10

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v5, v6, :cond_c

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    :cond_d
    if-nez v8, :cond_e

    new-instance v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_4

    :cond_f
    iput v10, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_4

    :cond_10
    const-string v4, "fillOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v9, v6, :cond_11

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    :cond_12
    if-nez v8, :cond_13

    new-instance v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    and-int/2addr v3, v7

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    iput v2, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v4, "pathData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct {p0, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->createNodesFromPathData(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v4, "trimPathStart"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_4

    :cond_16
    const-string/jumbo v4, "trimPathEnd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v4, "trimPathOffset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_4

    :cond_18
    const-string/jumbo v4, "strokeLineCap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "round"

    if-eqz v4, :cond_1c

    new-instance v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>()V

    const-string v4, "butt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-byte v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_2

    :cond_19
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-byte v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_ROUND:B

    iput-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_2

    :cond_1a
    const-string/jumbo v4, "square"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-byte v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_SQUARE:B

    iput-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    :cond_1b
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1c
    const-string/jumbo v4, "strokeLineJoin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    new-instance v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>()V

    const-string/jumbo v4, "miter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-byte v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_3

    :cond_1d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-byte v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    iput-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_3

    :cond_1e
    const-string v4, "bevel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-byte v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    iput-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    :cond_1f
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_20
    const-string/jumbo v4, "strokeMiterLimit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_22
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v3, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x18

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public blacklist getTotalElementCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public blacklist lineTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist moveTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist quadTo(FFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :cond_4
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
