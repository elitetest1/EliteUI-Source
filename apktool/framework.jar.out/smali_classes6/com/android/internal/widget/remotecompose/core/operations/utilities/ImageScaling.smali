.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;
.super Ljava/lang/Object;
.source "ImageScaling.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_FIXED_SCALE:I = 0x7

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCALE_NONE:I


# instance fields
.field private blacklist mDstBottom:F

.field private blacklist mDstLeft:F

.field private blacklist mDstRight:F

.field private blacklist mDstTop:F

.field public blacklist mFinalDstBottom:F

.field public blacklist mFinalDstLeft:F

.field public blacklist mFinalDstRight:F

.field public blacklist mFinalDstTop:F

.field private blacklist mScaleFactor:F

.field private blacklist mScaleType:I

.field private blacklist mSrcBottom:F

.field private blacklist mSrcLeft:F

.field private blacklist mSrcRight:F

.field private blacklist mSrcTop:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FFFFFFFFIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->adjustDrawToType()V

    return-void
.end method

.method private blacklist adjustDrawToType()V
    .locals 13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    sub-float/2addr v4, v5

    float-to-int v6, v2

    float-to-int v7, v4

    if-eqz v1, :cond_c

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    const/4 v9, 0x2

    if-eqz v8, :cond_b

    const/4 v10, 0x1

    if-eq v8, v10, :cond_8

    const/4 v10, 0x0

    if-eq v8, v9, :cond_7

    const/4 v11, 0x3

    if-eq v8, v11, :cond_6

    const/4 v11, 0x4

    if-eq v8, v11, :cond_4

    const/4 v11, 0x5

    if-eq v8, v11, :cond_2

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1

    move v0, v10

    goto/16 :goto_5

    :cond_1
    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v7, v1

    div-int/lit8 v10, v7, 0x2

    add-int v7, v1, v10

    sub-int/2addr v6, v0

    div-int/lit8 v1, v6, 0x2

    goto/16 :goto_4

    :cond_2
    int-to-float v8, v0

    mul-float/2addr v8, v4

    int-to-float v4, v1

    mul-float/2addr v2, v4

    cmpg-float v2, v8, v2

    if-gez v2, :cond_3

    mul-int/2addr v1, v6

    div-int/2addr v1, v0

    sub-int/2addr v7, v1

    div-int/2addr v7, v9

    goto :goto_0

    :cond_3
    mul-int/2addr v0, v7

    div-int/2addr v0, v1

    sub-int/2addr v6, v0

    div-int/2addr v6, v9

    goto :goto_1

    :cond_4
    int-to-float v8, v0

    mul-float/2addr v8, v4

    int-to-float v4, v1

    mul-float/2addr v2, v4

    cmpl-float v2, v8, v2

    if-lez v2, :cond_5

    mul-int/2addr v1, v6

    div-int/2addr v1, v0

    sub-int/2addr v7, v1

    div-int/2addr v7, v9

    :goto_0
    add-int v0, v1, v7

    goto :goto_2

    :cond_5
    mul-int/2addr v0, v7

    div-int/2addr v0, v1

    sub-int/2addr v6, v0

    div-int/2addr v6, v9

    :goto_1
    add-int/2addr v0, v6

    move v12, v6

    move v6, v0

    move v0, v10

    move v10, v12

    goto :goto_5

    :cond_6
    mul-int/2addr v0, v7

    div-int/2addr v0, v1

    const/4 v1, 0x0

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v7, v10

    sub-int/2addr v6, v0

    div-int/lit8 v1, v6, 0x2

    goto :goto_4

    :cond_7
    mul-int/2addr v1, v6

    div-int/2addr v1, v0

    sub-int/2addr v7, v1

    div-int/2addr v7, v9

    add-int v0, v1, v7

    div-int/2addr v10, v9

    add-int/2addr v6, v10

    :goto_2
    move v12, v7

    move v7, v0

    move v0, v12

    goto :goto_5

    :cond_8
    if-le v7, v1, :cond_9

    if-le v6, v0, :cond_9

    goto :goto_3

    :cond_9
    int-to-float v8, v0

    mul-float/2addr v8, v4

    int-to-float v4, v1

    mul-float/2addr v2, v4

    cmpl-float v2, v8, v2

    if-lez v2, :cond_a

    mul-int/2addr v1, v6

    div-int/2addr v1, v0

    move v0, v6

    goto :goto_3

    :cond_a
    mul-int/2addr v0, v7

    div-int/2addr v0, v1

    move v1, v7

    :goto_3
    sub-int/2addr v7, v1

    div-int/lit8 v10, v7, 0x2

    add-int v7, v1, v10

    sub-int/2addr v6, v0

    div-int/lit8 v1, v6, 0x2

    goto :goto_4

    :cond_b
    sub-int/2addr v7, v1

    div-int/lit8 v10, v7, 0x2

    add-int v7, v1, v10

    sub-int/2addr v6, v0

    div-int/lit8 v1, v6, 0x2

    :goto_4
    add-int v6, v0, v1

    move v0, v10

    move v10, v1

    :goto_5
    int-to-float v1, v6

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    int-to-float v1, v10

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    int-to-float v1, v7

    add-float/2addr v1, v5

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    int-to-float v0, v0

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    :cond_c
    :goto_6
    return-void
.end method

.method static blacklist str(F)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .locals 8

    const-string v6, "fill_bounds"

    const-string v7, "fixed_scale"

    const-string/jumbo v0, "none"

    const-string v1, "inside"

    const-string v2, "fill_width"

    const-string v3, "fill_height"

    const-string v4, "fit"

    const-string v5, "crop"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method blacklist print(Ljava/lang/String;FFFF)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float/2addr p4, p2

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " x "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float/2addr p5, p3

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setup(FFFFFFFFIF)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->adjustDrawToType()V

    return-void
.end method
