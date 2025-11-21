.class public Landroid/text/format/Formatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final blacklist fractionDigits:I

.field public final blacklist roundedBytes:J

.field public final blacklist units:Landroid/icu/util/MeasureUnit;

.field public final blacklist value:F


# direct methods
.method private constructor blacklist <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    iput-object p2, p0, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    iput p3, p0, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    iput-wide p4, p0, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    return-void
.end method

.method public static blacklist roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;
    .locals 18

    move-wide/from16 v0, p0

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_2

    neg-long v0, v0

    :cond_2
    long-to-float v0, v0

    sget-object v1, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    const/high16 v8, 0x44610000    # 900.0f

    cmpl-float v9, v0, v8

    const-wide/16 v10, 0x1

    if-lez v9, :cond_3

    sget-object v1, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v12, v2

    int-to-float v9, v2

    div-float/2addr v0, v9

    goto :goto_2

    :cond_3
    move-wide v12, v10

    :goto_2
    cmpl-float v9, v0, v8

    if-lez v9, :cond_4

    sget-object v1, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_4
    cmpl-float v9, v0, v8

    if-lez v9, :cond_5

    sget-object v1, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_5
    cmpl-float v9, v0, v8

    if-lez v9, :cond_6

    sget-object v1, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_6
    cmpl-float v8, v0, v8

    if-lez v8, :cond_7

    sget-object v1, Landroid/icu/util/MeasureUnit;->PETABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v8, v2

    mul-long/2addr v12, v8

    int-to-float v2, v2

    div-float/2addr v0, v2

    :cond_7
    move-object v14, v1

    cmp-long v1, v12, v10

    const/4 v2, 0x2

    if-eqz v1, :cond_c

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_8

    goto :goto_3

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    const/16 v8, 0x64

    if-gez v1, :cond_a

    :cond_9
    move v15, v2

    move v7, v8

    goto :goto_4

    :cond_a
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    move v15, v7

    move v7, v1

    goto :goto_4

    :cond_b
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_9

    :cond_c
    :goto_3
    move v15, v6

    :goto_4
    if-eqz v5, :cond_d

    neg-float v0, v0

    :cond_d
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    int-to-float v1, v7

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v12

    int-to-long v3, v7

    div-long v3, v1, v3

    :goto_5
    move-wide/from16 v16, v3

    new-instance v12, Landroid/text/format/Formatter$RoundedBytesResult;

    move v13, v0

    invoke-direct/range {v12 .. v17}, Landroid/text/format/Formatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v12
.end method
