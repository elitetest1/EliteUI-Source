.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final greylist-max-o COUNT:I = 0xc

.field private static final greylist-max-o PREDICTION_RATIO:F = 0.33333334f

.field private static final greylist-max-o PREDICTION_TIME:F = 0.08f

.field private static final greylist-max-o SENSORS_RATE_MS:I = 0x14


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-o mT:[J

.field private greylist-max-o mV:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    return-void
.end method


# virtual methods
.method public greylist-max-o filter(JF)F
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v3, v1, v2

    sub-float v4, p3, v3

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    if-lez v4, :cond_0

    sub-float v3, p3, v6

    goto :goto_0

    :cond_0
    sub-float v3, v3, p3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    add-float v3, p3, v6

    goto :goto_0

    :cond_1
    move/from16 v3, p3

    :goto_0
    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v4, 0x18

    const/16 v5, 0xc

    if-lt v2, v4, :cond_2

    iput v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    :cond_2
    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v3, v1, v2

    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aput-wide p1, v4, v2

    add-int/lit8 v7, v2, -0xc

    aput v3, v1, v7

    sub-int/2addr v2, v5

    aput-wide p1, v4, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v7, v5

    move v8, v7

    :goto_1
    const/16 v9, 0xb

    if-ge v2, v9, :cond_3

    iget v9, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v2

    iget-object v10, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v10, v10, v9

    iget-object v11, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v12, v11, v9

    const-wide/16 v14, 0x2

    div-long v16, v12, v14

    add-int/lit8 v9, v9, 0x1

    aget-wide v18, v11, v9

    div-long v14, v18, v14

    add-long v16, v16, v14

    sub-long v14, v16, p1

    long-to-float v9, v14

    const v11, 0x3089705f    # 1.0E-9f

    mul-float/2addr v9, v11

    sub-long v12, v12, v18

    long-to-float v12, v12

    mul-float/2addr v12, v11

    mul-float/2addr v12, v12

    mul-float v11, v10, v12

    add-float/2addr v3, v11

    mul-float v11, v9, v12

    mul-float/2addr v9, v11

    add-float/2addr v4, v9

    add-float/2addr v5, v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    add-float/2addr v8, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    mul-float v0, v3, v4

    mul-float/2addr v7, v5

    add-float/2addr v0, v7

    mul-float/2addr v4, v8

    mul-float v2, v5, v5

    add-float/2addr v4, v2

    div-float/2addr v0, v4

    mul-float/2addr v8, v0

    sub-float/2addr v8, v3

    div-float/2addr v8, v5

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v8, v2

    add-float/2addr v0, v8

    const v2, 0x3b360b61

    mul-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    neg-float v2, v0

    :goto_2
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v2, :cond_5

    add-float/2addr v3, v0

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v0, v2

    add-float/2addr v0, v4

    :cond_5
    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    add-float/2addr v0, v4

    :cond_6
    mul-float/2addr v0, v6

    return v0
.end method
