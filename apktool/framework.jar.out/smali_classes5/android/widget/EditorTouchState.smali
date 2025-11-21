.class public Landroid/widget/EditorTouchState;
.super Ljava/lang/Object;
.source "EditorTouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorTouchState$MultiTapStatus;
    }
.end annotation


# instance fields
.field private blacklist mInitialDragDirectionXYRatio:F

.field private blacklist mIsOnHandle:Z

.field private blacklist mLastDownMillis:J

.field private blacklist mLastDownX:F

.field private blacklist mLastDownY:F

.field private blacklist mLastUpMillis:J

.field private blacklist mLastUpX:F

.field private blacklist mLastUpY:F

.field private blacklist mMovedEnoughForDrag:Z

.field private blacklist mMultiTapInSameArea:Z

.field private blacklist mMultiTapStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    return-void
.end method

.method public static blacklist getXYRatio(I)F
    .locals 2

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_1

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_1
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static blacklist isDistanceWithin(FFFFI)Z
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    mul-int/2addr p4, p4

    int-to-float p0, p4

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist getInitialDragDirectionXYRatio()F
    .locals 0

    iget p0, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return p0
.end method

.method public blacklist getLastDownX()F
    .locals 0

    iget p0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    return p0
.end method

.method public blacklist getLastDownY()F
    .locals 0

    iget p0, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    return p0
.end method

.method public blacklist getLastUpX()F
    .locals 0

    iget p0, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    return p0
.end method

.method public blacklist getLastUpY()F
    .locals 0

    iget p0, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    return p0
.end method

.method public blacklist isDoubleTap()Z
    .locals 1

    iget p0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMovedEnoughForDrag()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    return p0
.end method

.method public blacklist isMultiTap()Z
    .locals 1

    iget p0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isMultiTapInSameArea()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOnHandle()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return p0
.end method

.method public blacklist isTripleClick()Z
    .locals 1

    iget p0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setIsOnHandle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return-void
.end method

.method public blacklist update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    sub-long/2addr v6, v8

    iget-wide v10, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    sub-long/2addr v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v6, v6, v10

    if-gtz v6, :cond_2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v8, v6

    if-gtz v6, :cond_2

    iget v6, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-eq v6, v4, :cond_0

    if-ne v6, v2, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    if-ne v6, v4, :cond_1

    iput v2, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    goto :goto_0

    :cond_1
    iput v1, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    :goto_0
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    invoke-static {v0, v1, v2, v4, p2}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    goto :goto_1

    :cond_2
    iput v4, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return-void

    :cond_3
    if-ne v0, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return-void

    :cond_4
    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    sub-float/2addr p1, v1

    mul-float v1, v0, v0

    mul-float v2, p1, p1

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/2addr p2, p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-eqz v4, :cond_8

    cmpl-float p2, p1, v3

    if-nez p2, :cond_6

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_3

    :cond_6
    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_3
    iput p1, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return-void

    :cond_7
    if-ne v0, v1, :cond_8

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput v5, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    :cond_8
    return-void
.end method
