.class public final Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;
.super Lcom/samsung/android/graphics/imagefilter/FilterEffect;
.source "CurveFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;,
        Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;,
        Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;
    }
.end annotation


# static fields
.field private static final blacklist CURVE_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final blacklist CURVE_TEXTURE_HEIGHT:I = 0x1

.field private static final blacklist CURVE_TEXTURE_WIDTH:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "CurveFilter"

.field private static final blacklist declareCode:Ljava/lang/String; = "uniform shader curveTexture;\nuniform float isValid;\n"

.field private static final blacklist mainCode:Ljava/lang/String; = "{\n    vec4 color = sampledColor;\n    if (color.a == 0.0) {\n       return color;\n    };\n    if (isValid != 1.0) {\n       sampledColor = half4(color.r, color.g, color.b, sampledColor.a);\n    } else {\n       float r = curveTexture.eval(vec2(color.r*255, 0.5)).r;\n       float g = curveTexture.eval(vec2(color.g*255, 0.5)).g;\n       float b = curveTexture.eval(vec2(color.b*255, 0.5)).b;\n       sampledColor = half4(r, g, b, sampledColor.a);\n    };\n}\n"


# instance fields
.field private final blacklist bezierBuffer:[I

.field private blacklist bitmapCache:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

.field private blacklist curveLevel:F

.field private blacklist maxX:F

.field private blacklist maxY:F

.field private blacklist minX:F

.field private blacklist minY:F

.field private final blacklist shader:Landroid/graphics/RuntimeShader;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->CURVE_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/graphics/imagefilter/FilterEffect;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->setFilterType(I)V

    new-instance v0, Landroid/graphics/RuntimeShader;

    const-string/jumbo v1, "uniform shader curveTexture;\nuniform float isValid;\n"

    const-string/jumbo v2, "{\n    vec4 color = sampledColor;\n    if (color.a == 0.0) {\n       return color;\n    };\n    if (isValid != 1.0) {\n       sampledColor = half4(color.r, color.g, color.b, sampledColor.a);\n    } else {\n       float r = curveTexture.eval(vec2(color.r*255, 0.5)).r;\n       float g = curveTexture.eval(vec2(color.g*255, 0.5)).g;\n       float b = curveTexture.eval(vec2(color.b*255, 0.5)).b;\n       sampledColor = half4(r, g, b, sampledColor.a);\n    };\n}\n"

    const-string v3, ""

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->assembleShaderCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->shader:Landroid/graphics/RuntimeShader;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bezierBuffer:[I

    new-instance v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;-><init>(Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter-IA;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bitmapCache:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    return-void
.end method

.method private blacklist PrintPath(Landroid/graphics/Path;)V
    .locals 12

    const p0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p0

    array-length p1, p0

    div-int/lit8 p1, p1, 0x3

    new-array v0, p1, [F

    new-array v1, p1, [F

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const-string v6, "CurveFilter"

    if-ge v3, p1, :cond_2

    add-int/lit8 v7, v5, 0x1

    aget v8, p0, v5

    add-int/lit8 v9, v5, 0x2

    aget v7, p0, v7

    add-int/lit8 v5, v5, 0x3

    aget v9, p0, v9

    aput v7, v0, v3

    aput v9, v1, v3

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    const-string v10, " prevX :"

    const/4 v11, 0x1

    if-nez v9, :cond_0

    cmpl-float v9, v7, v7

    if-eqz v9, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "fraction : "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " prev : 0.0 x : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v11

    :cond_0
    cmpg-float v8, v7, v7

    if-gez v8, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v11

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    if-ge v2, p1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mX : "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mY : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "line"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-ge v2, p1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " Y : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static blacklist clamp(FFF)F
    .locals 0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private blacklist createCurveBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->setBezierBuffer()V

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bezierBuffer:[I

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findLowerIndex(Ljava/util/ArrayList;F)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;",
            ">;F)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    iget v1, v1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    :goto_0
    if-gt v0, p0, :cond_3

    add-int v1, v0, p0

    ushr-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    iget v2, v2, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    iget v4, v4, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    cmpg-float v5, v2, p2

    if-gtz v5, :cond_1

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    return v1

    :cond_1
    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    move p0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    return p0
.end method

.method private blacklist getControlPoints()Ljava/util/Map$Entry;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "[F",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    iget v2, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    iget v2, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must minX < maxX, minY < maxY "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurveFilter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    iget v2, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    iget v3, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42f00000    # 120.0f

    div-float v4, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v5, v1, v2

    const/high16 v6, 0x40000000    # 2.0f

    if-gez v5, :cond_2

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v1, v2

    goto :goto_0

    :cond_2
    div-float v2, v1, v2

    add-float/2addr v2, v6

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v8, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    cmpl-float v9, v8, v7

    if-lez v9, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    neg-float v9, v8

    :goto_1
    mul-float/2addr v2, v9

    mul-float/2addr v2, v6

    div-float/2addr v2, v3

    add-float/2addr v2, v5

    const/16 v9, 0xc

    new-array v9, v9, [F

    iget v10, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    const/4 v11, 0x0

    aput v10, v9, v11

    iget v12, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    const/4 v13, 0x1

    aput v12, v9, v13

    cmpl-float v14, v8, v7

    const/4 v15, 0x3

    const/16 v16, 0x2

    if-nez v14, :cond_4

    iget v1, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    aput v1, v9, v16

    iget v0, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    aput v0, v9, v15

    move/from16 v0, v16

    goto/16 :goto_3

    :cond_4
    iget v14, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    const/16 v17, 0xa

    aput v14, v9, v17

    move/from16 v18, v3

    iget v3, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    const/16 v19, 0xb

    aput v3, v9, v19

    cmpl-float v7, v8, v7

    const/high16 v20, 0x41c80000    # 25.0f

    const/high16 v21, 0x437f0000    # 255.0f

    const/16 v22, 0x4

    const/16 v23, 0x8

    const/16 v24, 0x5

    const/16 v25, 0x7

    const/16 v26, 0x6

    const/16 v27, 0x9

    const/high16 v28, 0x42c80000    # 100.0f

    const/high16 v29, 0x428c0000    # 70.0f

    const/high16 v30, 0x40400000    # 3.0f

    if-lez v7, :cond_5

    mul-float/2addr v4, v8

    sub-float/2addr v14, v4

    aput v14, v9, v23

    aput v3, v9, v27

    sub-float v4, v14, v10

    div-float v4, v4, v30

    sub-float v4, v14, v4

    sub-float/2addr v4, v2

    aput v4, v9, v22

    sub-float v7, v3, v12

    div-float v7, v7, v30

    sub-float/2addr v3, v7

    add-float/2addr v3, v2

    aput v3, v9, v24

    sub-float/2addr v14, v4

    mul-float/2addr v14, v8

    div-float v14, v14, v18

    add-float/2addr v4, v14

    div-float v3, v1, v21

    mul-float/2addr v3, v2

    mul-float/2addr v6, v3

    sub-float v7, v8, v29

    neg-float v7, v7

    div-float v7, v7, v20

    const/high16 v10, 0x42340000    # 45.0f

    div-float/2addr v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, v9, v26

    aget v4, v9, v24

    aget v6, v9, v27

    sub-float/2addr v6, v4

    iget v7, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    mul-float/2addr v6, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float/2addr v6, v8

    div-float v6, v6, v18

    add-float/2addr v4, v6

    const/high16 v6, -0x40800000    # -1.0f

    div-float v8, v28, v7

    mul-float/2addr v8, v6

    sub-float v6, v7, v29

    neg-float v6, v6

    const/high16 v10, 0x41700000    # 15.0f

    div-float/2addr v6, v10

    const/high16 v10, 0x425c0000    # 55.0f

    div-float/2addr v7, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Float;->max(FF)F

    move-result v6

    mul-float/2addr v3, v6

    sub-float/2addr v4, v3

    aput v4, v9, v25

    aget v3, v9, v11

    aget v4, v9, v23

    sub-float/2addr v4, v3

    div-float v4, v4, v30

    add-float/2addr v3, v4

    sub-float/2addr v3, v2

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v1, v4

    iget v4, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    sub-float v4, v4, v29

    neg-float v4, v4

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, -0x40666666    # -1.2f

    invoke-static {v5, v4}, Ljava/lang/Float;->max(FF)F

    move-result v4

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    aput v3, v9, v16

    aget v1, v9, v13

    aget v3, v9, v27

    sub-float/2addr v3, v1

    div-float v3, v3, v30

    add-float/2addr v1, v3

    iget v0, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    add-float v0, v0, v28

    const/high16 v3, 0x42800000    # 64.0f

    div-float/2addr v0, v3

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    aput v1, v9, v15

    goto/16 :goto_2

    :cond_5
    mul-float/2addr v4, v8

    sub-float/2addr v10, v4

    aput v10, v9, v16

    aput v12, v9, v15

    sub-float/2addr v14, v10

    div-float v14, v14, v30

    add-float/2addr v14, v10

    add-float/2addr v14, v2

    aput v14, v9, v26

    sub-float/2addr v3, v12

    div-float v3, v3, v30

    add-float/2addr v12, v3

    sub-float/2addr v12, v2

    aput v12, v9, v25

    sub-float v3, v14, v10

    mul-float/2addr v3, v8

    div-float v3, v3, v18

    add-float/2addr v14, v3

    div-float v3, v1, v21

    mul-float/2addr v3, v2

    mul-float/2addr v6, v3

    neg-float v4, v8

    sub-float v4, v4, v29

    neg-float v4, v4

    div-float v4, v4, v20

    neg-float v7, v8

    const/high16 v8, 0x42340000    # 45.0f

    div-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v6, v4

    sub-float/2addr v14, v6

    aput v14, v9, v22

    aget v4, v9, v25

    aget v6, v9, v15

    sub-float v6, v4, v6

    iget v7, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    mul-float/2addr v6, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float/2addr v6, v8

    div-float v6, v6, v18

    add-float/2addr v4, v6

    neg-float v6, v7

    div-float v6, v28, v6

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v6, v8

    neg-float v8, v7

    sub-float v8, v8, v29

    neg-float v8, v8

    const/high16 v10, 0x41700000    # 15.0f

    div-float/2addr v8, v10

    neg-float v7, v7

    const/high16 v10, 0x425c0000    # 55.0f

    div-float/2addr v7, v10

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Float;->max(FF)F

    move-result v6

    mul-float/2addr v3, v6

    add-float/2addr v4, v3

    aput v4, v9, v24

    aget v3, v9, v17

    aget v4, v9, v16

    sub-float v4, v3, v4

    div-float v4, v4, v30

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v1, v4

    iget v4, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    neg-float v4, v4

    sub-float v4, v4, v29

    neg-float v4, v4

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, -0x40666666    # -1.2f

    invoke-static {v5, v4}, Ljava/lang/Float;->max(FF)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    aput v3, v9, v23

    aget v1, v9, v19

    aget v3, v9, v15

    sub-float v3, v1, v3

    div-float v3, v3, v30

    sub-float/2addr v1, v3

    iget v0, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    neg-float v0, v0

    add-float v0, v0, v28

    const/high16 v3, 0x42800000    # 64.0f

    div-float/2addr v0, v3

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    aput v1, v9, v27

    :goto_2
    move/from16 v0, v26

    :goto_3
    aget v1, v9, v11

    :goto_4
    if-ge v13, v0, :cond_7

    mul-int/lit8 v2, v13, 0x2

    aget v3, v9, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_6

    const v3, 0x3a83126f    # 0.001f

    add-float/2addr v1, v3

    aput v1, v9, v2

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9, v0}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isValidBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-ne p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ne p0, p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist setBezierBuffer()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bezierBuffer:[I

    array-length v1, v1

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    invoke-direct {v0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->getControlPoints()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v6

    new-array v8, v8, [F

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    float-to-double v11, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v11, v13

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-gez v11, :cond_3

    move v11, v12

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    if-ge v11, v14, :cond_0

    aget v14, v6, v11

    aput v14, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v13

    :goto_2
    if-lez v11, :cond_2

    move v14, v12

    :goto_3
    if-ge v14, v11, :cond_1

    mul-int/lit8 v15, v14, 0x2

    aget v16, v8, v15

    add-int/lit8 v17, v15, 0x2

    aget v17, v8, v17

    sub-float v17, v17, v16

    mul-float v17, v17, v10

    add-float v16, v16, v17

    aput v16, v8, v15

    add-int/lit8 v16, v15, 0x1

    aget v17, v8, v16

    add-int/lit8 v15, v15, 0x3

    aget v15, v8, v15

    sub-float v15, v15, v17

    mul-float/2addr v15, v10

    add-float v17, v17, v15

    aput v17, v8, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_2
    new-instance v11, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    aget v12, v8, v12

    div-float/2addr v12, v2

    aget v13, v8, v13

    div-float/2addr v13, v2

    invoke-direct {v11, v12, v13}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;-><init>(FF)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v10, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    iput v3, v4, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    iput v9, v3, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    iget v4, v4, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->y:F

    iput v4, v3, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->y:F

    move v3, v12

    :goto_4
    if-ge v3, v1, :cond_6

    int-to-float v4, v3

    div-float/2addr v4, v2

    cmpl-float v5, v4, v9

    if-nez v5, :cond_4

    const v5, 0x3a83126f    # 0.001f

    add-float/2addr v4, v5

    :cond_4
    invoke-direct {v0, v7, v4}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->findLowerIndex(Ljava/util/ArrayList;F)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    add-int/2addr v5, v13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;

    iget v8, v5, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    iget v10, v6, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    sub-float/2addr v8, v10

    cmpl-float v10, v8, v9

    if-lez v10, :cond_5

    iget v10, v6, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    sub-float/2addr v4, v10

    div-float/2addr v4, v8

    goto :goto_5

    :cond_5
    move v4, v9

    :goto_5
    iget v8, v6, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->y:F

    iget v5, v5, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->y:F

    iget v6, v6, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v8, v5

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v5, 0xff

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bezierBuffer:[I

    and-int/2addr v4, v5

    shl-int/lit8 v5, v4, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v8, v4, 0x8

    or-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bitmapCache:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->clear()V

    return-void
.end method

.method public blacklist getDeclareShaderCode()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uniform shader curveTexture;\nuniform float isValid;\n"

    return-object p0
.end method

.method public blacklist getMainShaderCode()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "{\n    vec4 color = sampledColor;\n    if (color.a == 0.0) {\n       return color;\n    };\n    if (isValid != 1.0) {\n       sampledColor = half4(color.r, color.g, color.b, sampledColor.a);\n    } else {\n       float r = curveTexture.eval(vec2(color.r*255, 0.5)).r;\n       float g = curveTexture.eval(vec2(color.g*255, 0.5)).g;\n       float b = curveTexture.eval(vec2(color.b*255, 0.5)).b;\n       sampledColor = half4(r, g, b, sampledColor.a);\n    };\n}\n"

    return-object p0
.end method

.method public blacklist getParam(I)F
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    return p0

    :cond_1
    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    return p0

    :cond_2
    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    return p0

    :cond_3
    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    return p0

    :cond_4
    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    return p0
.end method

.method public blacklist getShader()Landroid/graphics/RuntimeShader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->shader:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public blacklist setParam(IF)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    return-void

    :cond_1
    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    return-void

    :cond_2
    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    return-void

    :cond_3
    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    return-void

    :cond_4
    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    return-void
.end method

.method public blacklist updateShader(Landroid/graphics/RuntimeShader;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bitmapCache:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

    iget v1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    iget v2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    iget v3, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    iget v4, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    iget v5, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->contains(FFFFF)Z

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->CURVE_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->createCurveBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {p0, v9, v1, v2, v0}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->isValidBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bitmapCache:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

    iget v4, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    iget v5, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    iget v6, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    iget v7, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    iget v8, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->put(FFFFFLandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->bitmapCache:Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;

    iget v4, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minX:F

    iget v5, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->minY:F

    iget v6, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxX:F

    iget v7, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->maxY:F

    iget v8, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->curveLevel:F

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;->get(FFFFF)Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

    sget-object v4, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->CURVE_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;->isValidBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "curveTexture"

    iget-object v0, v0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapEntry;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    move p0, v2

    goto :goto_1

    :cond_2
    const-string p0, "CurveFilter"

    const-string/jumbo v0, "mapping shader is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    if-ne p0, v2, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    const-string v0, "isValid"

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method
