.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# static fields
.field private static final greylist-max-o INVALID_STROKE_ID:I = -0x1

.field static greylist-max-o sIdCounter:I


# instance fields
.field greylist-max-o mContinued:Z

.field greylist-max-o mContinuedStrokeId:I

.field greylist-max-o mEndTime:J

.field greylist-max-o mId:I

.field greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mPathMeasure:Landroid/graphics/PathMeasure;

.field greylist-max-o mStartTime:J

.field greylist-max-o mTapLocation:[F

.field private greylist-max-o mTimeToLengthConversion:F


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Path;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;JJZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    iput-boolean p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    const-wide/16 v0, 0x0

    cmp-long p6, p4, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p6, :cond_0

    move p6, v2

    goto :goto_0

    :cond_0
    move p6, v3

    :goto_0
    const-string v4, "Duration must be positive"

    invoke-static {p6, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmp-long p6, p2, v0

    if-ltz p6, :cond_1

    move p6, v2

    goto :goto_1

    :cond_1
    move p6, v3

    :goto_1
    const-string v0, "Start time must not be negative"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p6

    xor-int/2addr p6, v2

    const-string v0, "Path is empty"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance p6, Landroid/graphics/RectF;

    invoke-direct {p6}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, p6, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v0, p6, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p6, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p6, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget p6, p6, Landroid/graphics/RectF;->left:F

    cmpl-float p6, p6, v1

    if-ltz p6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const-string p6, "Path bounds must not be negative"

    invoke-static {v2, p6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    new-instance p6, Landroid/graphics/PathMeasure;

    invoke-direct {p6, p1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p6

    cmpl-float p6, p6, v1

    if-nez p6, :cond_3

    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p6, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1, p6, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p6, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    :cond_3
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p6, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    add-long/2addr p2, p4

    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result p1

    long-to-float p2, p4

    div-float/2addr p1, p2

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    sget p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path has more than one contour"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 8

    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    iget p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    iput p0, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only strokes marked willContinue can be continued"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o getContinuedStrokeId()I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return p0
.end method

.method public whitelist getDuration()J
    .locals 4

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getId()I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return p0
.end method

.method greylist-max-o getLength()F
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    return p0
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    iget-object p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, p0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method greylist-max-o getPosForTime(J[F)Z
    .locals 4

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    aget p1, v0, p0

    aput p1, p3, p0

    const/4 p0, 0x1

    aget p1, v0, p0

    aput p1, p3, p0

    return p0

    :cond_0
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result p0

    invoke-virtual {p1, p0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    mul-float/2addr v0, p1

    iget-object p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0, v0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p0

    return p0
.end method

.method public whitelist getStartTime()J
    .locals 2

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method greylist-max-o hasPointForTime(J)Z
    .locals 2

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist willContinue()Z
    .locals 0

    iget-boolean p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    return p0
.end method
