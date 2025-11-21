.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static final blacklist ThreadTmp:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/opengl/Matrix$1;

    invoke-direct {v0}, Landroid/opengl/Matrix$1;-><init>()V

    sput-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist frustumM([FIFFFFFF)V
    .locals 7

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_4

    cmpl-float v0, p5, p4

    if-eqz v0, :cond_3

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-lez v1, :cond_1

    cmpg-float v1, p7, v0

    if-lez v1, :cond_0

    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    sub-float v3, p5, p4

    div-float v3, v2, v3

    sub-float v4, p6, p7

    div-float/2addr v2, v4

    mul-float v4, p6, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    mul-float v6, p6, v3

    mul-float/2addr v6, v5

    add-float/2addr p3, p2

    mul-float/2addr p3, v1

    add-float/2addr p5, p4

    mul-float/2addr p5, v3

    add-float p2, p7, p6

    mul-float/2addr p2, v2

    mul-float/2addr p7, p6

    mul-float/2addr p7, v2

    mul-float/2addr p7, v5

    aput v4, p0, p1

    add-int/lit8 p4, p1, 0x5

    aput v6, p0, p4

    add-int/lit8 p4, p1, 0x8

    aput p3, p0, p4

    add-int/lit8 p3, p1, 0x9

    aput p5, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0xe

    aput p7, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x1

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x3

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x4

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x7

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0xc

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0xd

    aput v0, p0, p2

    add-int/lit8 p1, p1, 0xf

    aput v0, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "far <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "near <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "top == bottom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist invertM([FI[FI)Z
    .locals 37

    aget v0, p2, p3

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    add-int/lit8 v6, p3, 0x6

    aget v6, p2, v6

    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    add-int/lit8 v8, p3, 0x8

    aget v8, p2, v8

    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    add-int/lit8 v10, p3, 0xa

    aget v10, p2, v10

    add-int/lit8 v11, p3, 0xb

    aget v11, p2, v11

    add-int/lit8 v12, p3, 0xc

    aget v12, p2, v12

    add-int/lit8 v13, p3, 0xd

    aget v13, p2, v13

    add-int/lit8 v14, p3, 0xe

    aget v14, p2, v14

    add-int/lit8 v15, p3, 0xf

    aget v15, p2, v15

    mul-float v16, v10, v15

    mul-float v17, v14, v11

    mul-float v18, v6, v15

    mul-float v19, v14, v7

    mul-float v20, v6, v11

    mul-float v21, v10, v7

    mul-float v22, v2, v15

    mul-float v23, v14, v3

    mul-float v24, v2, v11

    mul-float v25, v10, v3

    mul-float v26, v2, v7

    mul-float v27, v6, v3

    mul-float v28, v16, v5

    mul-float v29, v19, v9

    add-float v28, v28, v29

    mul-float v29, v20, v13

    add-float v28, v28, v29

    mul-float v29, v17, v5

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v21, v13

    add-float v29, v29, v30

    sub-float v28, v28, v29

    mul-float v29, v17, v1

    mul-float v30, v22, v9

    add-float v29, v29, v30

    mul-float v30, v25, v13

    add-float v29, v29, v30

    mul-float v30, v16, v1

    mul-float v31, v23, v9

    add-float v30, v30, v31

    mul-float v31, v24, v13

    add-float v30, v30, v31

    sub-float v29, v29, v30

    mul-float v30, v18, v1

    mul-float v31, v23, v5

    add-float v30, v30, v31

    mul-float v31, v26, v13

    add-float v30, v30, v31

    mul-float v31, v19, v1

    mul-float v32, v22, v5

    add-float v31, v31, v32

    mul-float v32, v27, v13

    add-float v31, v31, v32

    sub-float v30, v30, v31

    mul-float v31, v21, v1

    mul-float v32, v24, v5

    add-float v31, v31, v32

    mul-float v32, v27, v9

    add-float v31, v31, v32

    mul-float v32, v20, v1

    mul-float v33, v25, v5

    add-float v32, v32, v33

    mul-float v33, v26, v9

    add-float v32, v32, v33

    sub-float v31, v31, v32

    mul-float v32, v17, v4

    mul-float v33, v18, v8

    add-float v32, v32, v33

    mul-float v33, v21, v12

    add-float v32, v32, v33

    mul-float v33, v16, v4

    mul-float v34, v19, v8

    add-float v33, v33, v34

    mul-float v34, v20, v12

    add-float v33, v33, v34

    sub-float v32, v32, v33

    mul-float v16, v16, v0

    mul-float v33, v23, v8

    add-float v16, v16, v33

    mul-float v33, v24, v12

    add-float v16, v16, v33

    mul-float v17, v17, v0

    mul-float v33, v22, v8

    add-float v17, v17, v33

    mul-float v33, v25, v12

    add-float v17, v17, v33

    sub-float v16, v16, v17

    mul-float v19, v19, v0

    mul-float v22, v22, v4

    add-float v19, v19, v22

    mul-float v17, v27, v12

    add-float v19, v19, v17

    mul-float v18, v18, v0

    mul-float v23, v23, v4

    add-float v18, v18, v23

    mul-float v17, v26, v12

    add-float v18, v18, v17

    sub-float v19, v19, v18

    mul-float v20, v20, v0

    mul-float v25, v25, v4

    add-float v20, v20, v25

    mul-float v26, v26, v8

    add-float v20, v20, v26

    mul-float v21, v21, v0

    mul-float v24, v24, v4

    add-float v21, v21, v24

    mul-float v27, v27, v8

    add-float v21, v21, v27

    sub-float v20, v20, v21

    mul-float v17, v8, v13

    mul-float v18, v12, v9

    mul-float v21, v4, v13

    mul-float v22, v12, v5

    mul-float v23, v4, v9

    mul-float v24, v8, v5

    mul-float/2addr v13, v0

    mul-float v25, v12, v1

    mul-float/2addr v9, v0

    mul-float v26, v8, v1

    mul-float/2addr v5, v0

    mul-float/2addr v1, v4

    mul-float v27, v17, v7

    mul-float v33, v22, v11

    add-float v27, v27, v33

    mul-float v33, v23, v15

    add-float v27, v27, v33

    mul-float v33, v18, v7

    mul-float v34, v21, v11

    add-float v33, v33, v34

    mul-float v34, v24, v15

    add-float v33, v33, v34

    sub-float v27, v27, v33

    mul-float v33, v18, v3

    mul-float v34, v13, v11

    add-float v33, v33, v34

    mul-float v34, v26, v15

    add-float v33, v33, v34

    mul-float v34, v17, v3

    mul-float v35, v25, v11

    add-float v34, v34, v35

    mul-float v35, v9, v15

    add-float v34, v34, v35

    sub-float v33, v33, v34

    mul-float v34, v21, v3

    mul-float v35, v25, v7

    add-float v34, v34, v35

    mul-float v35, v5, v15

    add-float v34, v34, v35

    mul-float v35, v22, v3

    mul-float v36, v13, v7

    add-float v35, v35, v36

    mul-float/2addr v15, v1

    add-float v35, v35, v15

    sub-float v34, v34, v35

    mul-float v15, v24, v3

    mul-float v35, v9, v7

    add-float v15, v15, v35

    mul-float v35, v1, v11

    add-float v15, v15, v35

    mul-float v3, v3, v23

    mul-float v7, v7, v26

    add-float/2addr v3, v7

    mul-float/2addr v11, v5

    add-float/2addr v3, v11

    sub-float/2addr v15, v3

    mul-float v3, v21, v10

    mul-float v7, v24, v14

    add-float/2addr v3, v7

    mul-float v7, v18, v6

    add-float/2addr v3, v7

    mul-float v7, v23, v14

    mul-float v11, v17, v6

    add-float/2addr v7, v11

    mul-float v11, v22, v10

    add-float/2addr v7, v11

    sub-float/2addr v3, v7

    mul-float v7, v9, v14

    mul-float v17, v17, v2

    add-float v7, v7, v17

    mul-float v11, v25, v10

    add-float/2addr v7, v11

    mul-float v11, v13, v10

    mul-float v17, v26, v14

    add-float v11, v11, v17

    mul-float v18, v18, v2

    add-float v11, v11, v18

    sub-float/2addr v7, v11

    mul-float/2addr v13, v6

    mul-float v11, v1, v14

    add-float/2addr v13, v11

    mul-float v22, v22, v2

    add-float v13, v13, v22

    mul-float/2addr v14, v5

    mul-float v21, v21, v2

    add-float v14, v14, v21

    mul-float v25, v25, v6

    add-float v14, v14, v25

    sub-float/2addr v13, v14

    mul-float/2addr v5, v10

    mul-float v23, v23, v2

    add-float v5, v5, v23

    mul-float v26, v26, v6

    add-float v5, v5, v26

    mul-float/2addr v9, v6

    mul-float/2addr v1, v10

    add-float/2addr v9, v1

    mul-float v24, v24, v2

    add-float v9, v9, v24

    sub-float/2addr v5, v9

    mul-float v0, v0, v28

    mul-float v4, v4, v29

    add-float/2addr v0, v4

    mul-float v8, v8, v30

    add-float/2addr v0, v8

    mul-float v12, v12, v31

    add-float/2addr v0, v12

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    mul-float v28, v28, v1

    aput v28, p0, p1

    add-int/lit8 v0, p1, 0x1

    mul-float v29, v29, v1

    aput v29, p0, v0

    add-int/lit8 v0, p1, 0x2

    mul-float v30, v30, v1

    aput v30, p0, v0

    add-int/lit8 v0, p1, 0x3

    mul-float v31, v31, v1

    aput v31, p0, v0

    add-int/lit8 v0, p1, 0x4

    mul-float v32, v32, v1

    aput v32, p0, v0

    add-int/lit8 v0, p1, 0x5

    mul-float v16, v16, v1

    aput v16, p0, v0

    add-int/lit8 v0, p1, 0x6

    mul-float v19, v19, v1

    aput v19, p0, v0

    add-int/lit8 v0, p1, 0x7

    mul-float v20, v20, v1

    aput v20, p0, v0

    add-int/lit8 v0, p1, 0x8

    mul-float v27, v27, v1

    aput v27, p0, v0

    add-int/lit8 v0, p1, 0x9

    mul-float v33, v33, v1

    aput v33, p0, v0

    add-int/lit8 v0, p1, 0xa

    mul-float v34, v34, v1

    aput v34, p0, v0

    add-int/lit8 v0, p1, 0xb

    mul-float/2addr v15, v1

    aput v15, p0, v0

    add-int/lit8 v0, p1, 0xc

    mul-float/2addr v3, v1

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0xd

    mul-float/2addr v7, v1

    aput v7, p0, v0

    add-int/lit8 v0, p1, 0xe

    mul-float/2addr v13, v1

    aput v13, p0, v0

    add-int/lit8 v0, p1, 0xf

    mul-float/2addr v5, v1

    aput v5, p0, v0

    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist length(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static whitelist multiplyMM([FI[FI[FI)V
    .locals 14

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    if-eqz p0, :cond_e

    if-eqz v3, :cond_d

    if-eqz v6, :cond_c

    if-ltz p1, :cond_b

    if-ltz p3, :cond_a

    if-ltz p5, :cond_9

    array-length v0, p0

    add-int/lit8 v1, p1, 0x10

    if-lt v0, v1, :cond_8

    array-length v0, v3

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_7

    array-length v0, v6

    add-int/lit8 v1, p5, 0x10

    if-lt v0, v1, :cond_6

    const/16 v2, 0x10

    const/16 v5, 0x10

    move-object v0, p0

    move v1, p1

    move/from16 v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0x10

    const/16 v5, 0x10

    move-object v0, p0

    move v1, p1

    move/from16 v4, p5

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-ge v7, v8, :cond_5

    mul-int/lit8 v0, v7, 0x4

    add-int v1, v0, p5

    aget v1, p4, v1

    aget v2, p2, p3

    mul-float/2addr v2, v1

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    mul-float/2addr v3, v1

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    mul-float/2addr v4, v1

    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    mul-float/2addr v5, v1

    move v1, v9

    :goto_1
    if-ge v1, v8, :cond_1

    add-int v6, v0, v1

    add-int v6, v6, p5

    aget v6, p4, v6

    mul-int/lit8 v10, v1, 0x4

    add-int v11, v10, p3

    aget v11, p2, v11

    mul-float/2addr v11, v6

    add-float/2addr v2, v11

    add-int/lit8 v11, v10, 0x1

    add-int v11, v11, p3

    aget v11, p2, v11

    mul-float/2addr v11, v6

    add-float/2addr v3, v11

    add-int/lit8 v11, v10, 0x2

    add-int v11, v11, p3

    aget v11, p2, v11

    mul-float/2addr v11, v6

    add-float/2addr v4, v11

    add-int/lit8 v10, v10, 0x3

    add-int v10, v10, p3

    aget v10, p2, v10

    mul-float/2addr v10, v6

    add-float/2addr v5, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int v1, v0, p1

    aput v2, p0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v1, p1

    aput v3, p0, v1

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p1

    aput v4, p0, v1

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    aput v5, p0, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move v1, v7

    :goto_3
    if-ge v1, v8, :cond_4

    mul-int/lit8 v2, v1, 0x4

    add-int v3, v2, p5

    aget v3, p4, v3

    aget v4, p2, p3

    mul-float/2addr v4, v3

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    mul-float/2addr v5, v3

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    mul-float/2addr v6, v3

    add-int/lit8 v10, p3, 0x3

    aget v10, p2, v10

    mul-float/2addr v10, v3

    move v3, v9

    :goto_4
    if-ge v3, v8, :cond_3

    add-int v11, v2, v3

    add-int v11, v11, p5

    aget v11, p4, v11

    mul-int/lit8 v12, v3, 0x4

    add-int v13, v12, p3

    aget v13, p2, v13

    mul-float/2addr v13, v11

    add-float/2addr v4, v13

    add-int/lit8 v13, v12, 0x1

    add-int v13, v13, p3

    aget v13, p2, v13

    mul-float/2addr v13, v11

    add-float/2addr v5, v13

    add-int/lit8 v13, v12, 0x2

    add-int v13, v13, p3

    aget v13, p2, v13

    mul-float/2addr v13, v11

    add-float/2addr v6, v13

    add-int/lit8 v12, v12, 0x3

    add-int v12, v12, p3

    aget v12, p2, v12

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    aput v4, v0, v2

    add-int/lit8 v3, v2, 0x1

    aput v5, v0, v3

    add-int/lit8 v3, v2, 0x2

    aput v6, v0, v3

    add-int/lit8 v2, v2, 0x3

    aput v10, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    const/16 v1, 0x10

    if-ge v7, v1, :cond_5

    add-int v1, v7, p1

    aget v2, v0, v7

    aput v2, p0, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhs.length < rhsOffset + 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhs.length < lhsOffset + 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "result.length < resultOffset + 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhsOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhsOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resultOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhs == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhs == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "result == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist multiplyMV([FI[FI[FI)V
    .locals 6

    if-eqz p0, :cond_8

    if-eqz p2, :cond_7

    if-eqz p4, :cond_6

    if-ltz p1, :cond_5

    if-ltz p3, :cond_4

    if-ltz p5, :cond_3

    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_2

    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_1

    array-length v0, p4

    add-int/lit8 v1, p5, 0x4

    if-lt v0, v1, :cond_0

    aget v0, p2, p3

    aget v1, p4, p5

    mul-float/2addr v0, v1

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x1

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v2, p3, 0x8

    aget v2, p2, v2

    add-int/lit8 v4, p5, 0x2

    aget v4, p4, v4

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    add-int/lit8 v2, p3, 0xc

    aget v2, p2, v2

    add-int/lit8 p5, p5, 0x3

    aget p4, p4, p5

    mul-float/2addr v2, p4

    add-float/2addr v0, v2

    add-int/lit8 p5, p3, 0x1

    aget p5, p2, p5

    mul-float/2addr p5, v1

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    mul-float/2addr v2, v3

    add-float/2addr p5, v2

    add-int/lit8 v2, p3, 0x9

    aget v2, p2, v2

    mul-float/2addr v2, v4

    add-float/2addr p5, v2

    add-int/lit8 v2, p3, 0xd

    aget v2, p2, v2

    mul-float/2addr v2, p4

    add-float/2addr p5, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    mul-float/2addr v2, v1

    add-int/lit8 v5, p3, 0x6

    aget v5, p2, v5

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    add-int/lit8 v5, p3, 0xa

    aget v5, p2, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    add-int/lit8 v5, p3, 0xe

    aget v5, p2, v5

    mul-float/2addr v5, p4

    add-float/2addr v2, v5

    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    mul-float/2addr v5, v1

    add-int/lit8 v1, p3, 0x7

    aget v1, p2, v1

    mul-float/2addr v1, v3

    add-float/2addr v5, v1

    add-int/lit8 v1, p3, 0xb

    aget v1, p2, v1

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    add-int/lit8 p3, p3, 0xf

    aget p2, p2, p3

    mul-float/2addr p2, p4

    add-float/2addr v5, p2

    aput v0, p0, p1

    add-int/lit8 p2, p1, 0x1

    aput p5, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput v2, p0, p2

    add-int/lit8 p1, p1, 0x3

    aput v5, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhsVec.length < rhsVecOffset + 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhsMat.length < lhsMatOffset + 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resultVec.length < resultVecOffset + 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhsVecOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhsMatOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resultVecOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhsVec == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhsMat == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resultVec == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist orthoM([FIFFFFFF)V
    .locals 7

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_2

    cmpl-float v0, p4, p5

    if-eqz v0, :cond_1

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_0

    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sub-float v2, p5, p4

    div-float v2, v1, v2

    sub-float v3, p7, p6

    div-float v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    mul-float/2addr v4, v2

    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v3

    add-float/2addr p3, p2

    neg-float p2, p3

    mul-float/2addr p2, v0

    add-float/2addr p5, p4

    neg-float p3, p5

    mul-float/2addr p3, v2

    add-float/2addr p7, p6

    neg-float p4, p7

    mul-float/2addr p4, v3

    aput v5, p0, p1

    add-int/lit8 p5, p1, 0x5

    aput v4, p0, p5

    add-int/lit8 p5, p1, 0xa

    aput v6, p0, p5

    add-int/lit8 p5, p1, 0xc

    aput p2, p0, p5

    add-int/lit8 p2, p1, 0xd

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xe

    aput p4, p0, p2

    add-int/lit8 p2, p1, 0xf

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x1

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x3

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x4

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x7

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xb

    aput p3, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bottom == top"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist overlap([FII[FII)Z
    .locals 1

    const/4 v0, 0x0

    if-eq p0, p3, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p4, :cond_1

    return p0

    :cond_1
    add-int/2addr p2, p1

    add-int/2addr p5, p4

    if-ne p2, p5, :cond_2

    return p0

    :cond_2
    if-ge p1, p4, :cond_3

    if-ge p4, p2, :cond_3

    return p0

    :cond_3
    if-ge p1, p5, :cond_4

    if-ge p5, p2, :cond_4

    return p0

    :cond_4
    if-ge p4, p1, :cond_5

    if-ge p1, p5, :cond_5

    return p0

    :cond_5
    if-ge p4, p2, :cond_6

    if-ge p2, p5, :cond_6

    return p0

    :cond_6
    return v0
.end method

.method public static whitelist perspectiveM([FIFFFF)V
    .locals 4

    float-to-double v0, p2

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    sub-float v1, p4, p5

    div-float/2addr v0, v1

    div-float p3, p2, p3

    aput p3, p0, p1

    add-int/lit8 p3, p1, 0x1

    const/4 v1, 0x0

    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x2

    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x3

    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x4

    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x5

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x7

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xa

    add-float p3, p5, p4

    mul-float/2addr p3, v0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xc

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xd

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xe

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p5, p3

    mul-float/2addr p5, p4

    mul-float/2addr p5, v0

    aput p5, p0, p2

    add-int/lit8 p1, p1, 0xf

    aput v1, p0, p1

    return-void
.end method

.method public static whitelist rotateM([FIFFFF)V
    .locals 8

    move-object v2, p0

    move v3, p1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->rotateM([FI[FIFFFF)V

    return-void
.end method

.method public static whitelist rotateM([FI[FIFFFF)V
    .locals 7

    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [F

    const/16 v2, 0x10

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    move-object p4, v1

    const/16 p5, 0x10

    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static whitelist scaleM([FIFFF)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x4

    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x8

    aget v2, p0, v1

    mul-float/2addr v2, p4

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static whitelist scaleM([FI[FIFFF)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    aget v3, p2, v2

    mul-float/2addr v3, p4

    aput v3, p0, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v2, 0x4

    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, v2, 0xc

    aget v2, p2, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static whitelist setIdentityM([FI)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    const/4 v3, 0x0

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    add-int v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p0, v1

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static whitelist setLookAtM([FIFFFFFFFFF)V
    .locals 5

    sub-float/2addr p5, p2

    sub-float/2addr p6, p3

    sub-float/2addr p7, p4

    invoke-static {p5, p6, p7}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    mul-float/2addr p5, v0

    mul-float/2addr p6, v0

    mul-float/2addr p7, v0

    mul-float v0, p6, p10

    mul-float v2, p7, p9

    sub-float/2addr v0, v2

    mul-float v2, p7, p8

    mul-float/2addr p10, p5

    sub-float/2addr v2, p10

    mul-float/2addr p9, p5

    mul-float/2addr p8, p6

    sub-float/2addr p9, p8

    invoke-static {v0, v2, p9}, Landroid/opengl/Matrix;->length(FFF)F

    move-result p8

    div-float p8, v1, p8

    mul-float/2addr v0, p8

    mul-float/2addr v2, p8

    mul-float/2addr p9, p8

    mul-float p8, v2, p7

    mul-float p10, p9, p6

    sub-float/2addr p8, p10

    mul-float p10, p9, p5

    mul-float v3, v0, p7

    sub-float/2addr p10, v3

    mul-float v3, v0, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    aput v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    aput p8, p0, v0

    add-int/lit8 p8, p1, 0x2

    neg-float p5, p5

    aput p5, p0, p8

    add-int/lit8 p5, p1, 0x3

    const/4 p8, 0x0

    aput p8, p0, p5

    add-int/lit8 p5, p1, 0x4

    aput v2, p0, p5

    add-int/lit8 p5, p1, 0x5

    aput p10, p0, p5

    add-int/lit8 p5, p1, 0x6

    neg-float p6, p6

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0x7

    aput p8, p0, p5

    add-int/lit8 p5, p1, 0x8

    aput p9, p0, p5

    add-int/lit8 p5, p1, 0x9

    aput v3, p0, p5

    add-int/lit8 p5, p1, 0xa

    neg-float p6, p7

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xb

    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xc

    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xd

    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xe

    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xf

    aput v1, p0, p5

    neg-float p2, p2

    neg-float p3, p3

    neg-float p4, p4

    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static whitelist setRotateEulerM([FIFFF)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    mul-float/2addr p4, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, p2, v1

    mul-float v4, v0, v1

    mul-float v5, p3, p4

    aput v5, p0, p1

    add-int/lit8 v5, p1, 0x1

    neg-float v6, p3

    mul-float/2addr v6, v2

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    add-int/lit8 v1, p1, 0x3

    const/4 v5, 0x0

    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x4

    mul-float v6, v3, p4

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    aput v6, p0, v1

    add-int/lit8 v1, p1, 0x5

    neg-float v3, v3

    mul-float/2addr v3, v2

    mul-float v6, p2, p4

    add-float/2addr v3, v6

    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x6

    neg-float v3, v0

    mul-float/2addr v3, p3

    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x7

    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x8

    neg-float v3, v4

    mul-float/2addr v3, p4

    mul-float v6, v0, v2

    add-float/2addr v3, v6

    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x9

    mul-float/2addr v4, v2

    mul-float/2addr v0, p4

    add-float/2addr v4, v0

    aput v4, p0, v1

    add-int/lit8 p4, p1, 0xa

    mul-float/2addr p2, p3

    aput p2, p0, p4

    add-int/lit8 p2, p1, 0xb

    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xc

    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xd

    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xe

    aput v5, p0, p2

    add-int/lit8 p1, p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p0, p1

    return-void
.end method

.method public static whitelist setRotateEulerM2([FIFFF)V
    .locals 8

    if-eqz p0, :cond_2

    if-ltz p1, :cond_1

    array-length v0, p0

    add-int/lit8 v1, p1, 0x10

    if-lt v0, v1, :cond_0

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    mul-float/2addr p4, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, p2, v1

    mul-float v4, v0, v1

    mul-float v5, p3, p4

    aput v5, p0, p1

    add-int/lit8 v5, p1, 0x1

    neg-float v6, p3

    mul-float/2addr v6, v2

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    add-int/lit8 v1, p1, 0x3

    const/4 v5, 0x0

    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x4

    mul-float v6, v4, p4

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    aput v6, p0, v1

    add-int/lit8 v1, p1, 0x5

    neg-float v4, v4

    mul-float/2addr v4, v2

    mul-float v6, p2, p4

    add-float/2addr v4, v6

    aput v4, p0, v1

    add-int/lit8 v1, p1, 0x6

    neg-float v4, v0

    mul-float/2addr v4, p3

    aput v4, p0, v1

    add-int/lit8 v1, p1, 0x7

    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x8

    neg-float v4, v3

    mul-float/2addr v4, p4

    mul-float v6, v0, v2

    add-float/2addr v4, v6

    aput v4, p0, v1

    add-int/lit8 v1, p1, 0x9

    mul-float/2addr v3, v2

    mul-float/2addr v0, p4

    add-float/2addr v3, v0

    aput v3, p0, v1

    add-int/lit8 p4, p1, 0xa

    mul-float/2addr p2, p3

    aput p2, p0, p4

    add-int/lit8 p2, p1, 0xb

    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xc

    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xd

    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xe

    aput v5, p0, p2

    add-int/lit8 p1, p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rm.length < rmOffset + 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rmOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rm == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist setRotateM([FIFFFF)V
    .locals 8

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xb

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xc

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xd

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xe

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v0

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float p2, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    cmpl-float v3, v2, p3

    if-nez v3, :cond_0

    cmpl-float v3, v1, p4

    if-nez v3, :cond_0

    cmpl-float v3, v1, p5

    if-nez v3, :cond_0

    add-int/lit8 p3, p1, 0x5

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x6

    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x9

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x1

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x4

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    aput v2, p0, p1

    return-void

    :cond_0
    cmpl-float v3, v1, p3

    if-nez v3, :cond_1

    cmpl-float v4, v2, p4

    if-nez v4, :cond_1

    cmpl-float v4, v1, p5

    if-nez v4, :cond_1

    aput v0, p0, p1

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x8

    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x2

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x1

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x4

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0x5

    aput v2, p0, p1

    return-void

    :cond_1
    if-nez v3, :cond_2

    cmpl-float v3, v1, p4

    if-nez v3, :cond_2

    cmpl-float v3, v2, p5

    if-nez v3, :cond_2

    aput v0, p0, p1

    add-int/lit8 p3, p1, 0x5

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x1

    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x4

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x2

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0xa

    aput v2, p0, p1

    return-void

    :cond_2
    invoke-static {p3, p4, p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    div-float v1, v2, v1

    mul-float/2addr p3, v1

    mul-float/2addr p4, v1

    mul-float/2addr p5, v1

    :cond_3
    sub-float/2addr v2, v0

    mul-float v1, p3, p4

    mul-float v3, p4, p5

    mul-float v4, p5, p3

    mul-float v5, p3, p2

    mul-float v6, p4, p2

    mul-float/2addr p2, p5

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, v0

    aput p3, p0, p1

    add-int/lit8 p3, p1, 0x4

    mul-float/2addr v1, v2

    sub-float v7, v1, p2

    aput v7, p0, p3

    add-int/lit8 p3, p1, 0x8

    mul-float/2addr v4, v2

    add-float v7, v4, v6

    aput v7, p0, p3

    add-int/lit8 p3, p1, 0x1

    add-float/2addr v1, p2

    aput v1, p0, p3

    add-int/lit8 p2, p1, 0x5

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, v0

    aput p4, p0, p2

    add-int/lit8 p2, p1, 0x9

    mul-float/2addr v3, v2

    sub-float p3, v3, v5

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    sub-float/2addr v4, v6

    aput v4, p0, p2

    add-int/lit8 p2, p1, 0x6

    add-float/2addr v3, v5

    aput v3, p0, p2

    add-int/lit8 p1, p1, 0xa

    mul-float/2addr p5, p5

    mul-float/2addr p5, v2

    add-float/2addr p5, v0

    aput p5, p0, p1

    return-void
.end method

.method public static whitelist translateM([FIFFF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v2, v1, 0xc

    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x8

    aget v1, p0, v1

    mul-float/2addr v1, p4

    add-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static whitelist translateM([FI[FIFFF)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    add-int v3, p3, v1

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int v3, p3, v0

    add-int/2addr v1, v2

    aget v4, p2, v3

    mul-float/2addr v4, p4

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x8

    aget v5, p2, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/2addr v3, v2

    aget v3, p2, v3

    add-float/2addr v4, v3

    aput v4, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static whitelist transposeM([FI[FI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget v3, p2, v1

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x3

    aget v1, p2, v1

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
