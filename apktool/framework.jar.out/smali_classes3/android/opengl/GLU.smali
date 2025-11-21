.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final greylist-max-o sScratch:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist gluErrorString(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "out of memory"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "stack underflow"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "stack overflow"

    return-object p0

    :pswitch_3
    const-string p0, "invalid operation"

    return-object p0

    :pswitch_4
    const-string p0, "invalid value"

    return-object p0

    :pswitch_5
    const-string p0, "invalid enum"

    return-object p0

    :cond_0
    const-string/jumbo p0, "no error"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 12

    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v1

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_0
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 p1, 0x0

    invoke-interface {p0, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static whitelist gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    return-void
.end method

.method public static whitelist gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7

    float-to-double v0, p1

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v4, p3, p1

    neg-float v3, v4

    mul-float v1, v3, p2

    mul-float v2, v4, p2

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public static whitelist gluProject(FFF[FI[FI[II[FI)I
    .locals 7

    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v1

    const/4 v2, 0x0

    move-object v5, p3

    move v6, p4

    move-object v3, p5

    move v4, p6

    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p3, 0x10

    aput p0, v1, p3

    const/16 p0, 0x11

    aput p1, v1, p0

    const/16 p0, 0x12

    aput p2, v1, p0

    const/16 p0, 0x13

    const/high16 p6, 0x3f800000    # 1.0f

    aput p6, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    const/16 p5, 0x10

    const/16 p1, 0x14

    move-object p2, v1

    move-object p4, v1

    move-object p0, v1

    :try_start_1
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p0, 0x17

    :try_start_2
    aget p0, v1, p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :cond_0
    div-float p0, p6, p0

    aget p1, p7, p8

    int-to-float p1, p1

    add-int/lit8 p2, p8, 0x2

    aget p2, p7, p2

    int-to-float p2, p2

    const/16 p3, 0x14

    aget p3, v1, p3

    mul-float/2addr p3, p0

    add-float/2addr p3, p6

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    aput p1, p9, p10

    add-int/lit8 p1, p10, 0x1

    add-int/lit8 p2, p8, 0x1

    aget p2, p7, p2

    int-to-float p2, p2

    add-int/lit8 p4, p8, 0x3

    aget p4, p7, p4

    int-to-float p4, p4

    const/16 p5, 0x15

    aget p5, v1, p5

    mul-float/2addr p5, p0

    add-float/2addr p5, p6

    mul-float/2addr p4, p5

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    aput p2, p9, p1

    add-int/lit8 p1, p10, 0x2

    const/16 p2, 0x16

    aget p2, v1, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p6

    mul-float/2addr p2, p3

    aput p2, p9, p1

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    move-object p0, v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static whitelist gluUnProject(FFF[FI[FI[II[FI)I
    .locals 7

    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v1

    const/4 v2, 0x0

    move-object v5, p3

    move v6, p4

    move-object v3, p5

    move v4, p6

    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p3, 0x10

    const/4 p4, 0x0

    invoke-static {v1, p3, v1, p4}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result p3

    if-nez p3, :cond_0

    monitor-exit v1

    return p4

    :cond_0
    aget p3, p7, p8

    int-to-float p3, p3

    sub-float/2addr p0, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p0, p3

    add-int/lit8 p5, p8, 0x2

    aget p5, p7, p5

    int-to-float p5, p5

    div-float/2addr p0, p5

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p0, p5

    aput p0, v1, p4

    add-int/lit8 p0, p8, 0x1

    aget p0, p7, p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p3

    const/4 p0, 0x3

    add-int/2addr p8, p0

    aget p4, p7, p8

    int-to-float p4, p4

    div-float/2addr p1, p4

    sub-float/2addr p1, p5

    const/4 p6, 0x1

    aput p1, v1, p6

    mul-float/2addr p2, p3

    sub-float/2addr p2, p5

    const/4 p1, 0x2

    aput p2, v1, p1

    aput p5, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p3, 0x10

    const/4 p5, 0x0

    move-object p4, v1

    move-object/from16 p0, p9

    move/from16 p1, p10

    move-object p2, v1

    :try_start_1
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return p6

    :catchall_0
    move-exception v0

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    move-object p0, v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
