.class public Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;
.super Ljava/lang/Object;
.source "FloatsToPath.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist genPath(Landroid/graphics/Path;[FFF)V
    .locals 9

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    array-length v1, p1

    if-ge v8, v1, :cond_0

    aget v1, p1, v8

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Odd command "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v8

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :pswitch_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_2
    add-int/lit8 v1, v8, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, v8, 0x4

    aget v2, p1, v2

    add-int/lit8 v3, v8, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, v8, 0x6

    aget v4, p1, v4

    add-int/lit8 v5, v8, 0x7

    aget v5, p1, v5

    add-int/lit8 v6, v8, 0x8

    aget v6, p1, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v8, v8, 0x9

    goto :goto_0

    :pswitch_3
    add-int/lit8 v1, v8, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, v8, 0x4

    aget v2, p1, v2

    add-int/lit8 v3, v8, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, v8, 0x6

    aget v4, p1, v4

    add-int/lit8 v5, v8, 0x7

    aget v5, p1, v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->conicTo(FFFFF)V

    add-int/lit8 v8, v8, 0x8

    goto :goto_0

    :pswitch_4
    add-int/lit8 v1, v8, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, v8, 0x4

    aget v2, p1, v2

    add-int/lit8 v3, v8, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, v8, 0x6

    aget v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v8, v8, 0x7

    goto :goto_0

    :pswitch_5
    add-int/lit8 v1, v8, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, v8, 0x4

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v8, v8, 0x5

    goto/16 :goto_0

    :pswitch_6
    add-int/lit8 v1, v8, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, v8, 0x2

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const/4 p1, 0x0

    cmpl-float v1, p2, p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_2

    cmpg-float v1, p3, v2

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void

    :cond_2
    :goto_1
    cmpg-float v1, p2, p3

    if-gez v1, :cond_3

    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    invoke-virtual {v1, v0, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p1, v0

    invoke-static {p3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr p2, v0

    const/4 p3, 0x1

    invoke-virtual {v1, p1, p2, p0, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
