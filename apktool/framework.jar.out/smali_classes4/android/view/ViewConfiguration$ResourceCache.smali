.class final Landroid/view/ViewConfiguration$ResourceCache;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCache"
.end annotation


# instance fields
.field private blacklist mDefaultActionModeHideDuration:J

.field private blacklist mDoubleTapMinTime:I

.field private blacklist mDoubleTapTimeout:I

.field private blacklist mHoverTapSlop:I

.field private blacklist mHoverTapTimeout:I

.field private blacklist mJumpTapTimeout:I

.field private blacklist mPressedStateDuration:I

.field private blacklist mScrollFriction:F

.field private blacklist mTapTimeout:I

.field private blacklist mZoomControlsTimeout:J


# direct methods
.method private constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewConfiguration-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewConfiguration$ResourceCache;-><init>()V

    return-void
.end method

.method private static blacklist getCurrentResources()Landroid/content/res/Resources;
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->migrateViewconfigurationConstantsToResources()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public blacklist getDefaultActionModeHideDuration()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7d0

    :goto_0
    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    :cond_1
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    return-wide v0
.end method

.method public blacklist getDoubleTapMinTime()I
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    return p0
.end method

.method public blacklist getDoubleTapTimeout()I
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    return p0
.end method

.method public blacklist getHoverTapSlop()I
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1050101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    return p0
.end method

.method public blacklist getHoverTapTimeout()I
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x96

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    return p0
.end method

.method public blacklist getJumpTapTimeout()I
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    return p0
.end method

.method public blacklist getPressedStateDuration()I
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    return p0
.end method

.method public blacklist getScrollFriction()F
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1050129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x3c75c28f    # 0.015f

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    return p0
.end method

.method public blacklist getTapTimeout()I
    .locals 2

    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    return p0
.end method

.method public blacklist getZoomControlsTimeout()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10e019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xbb8

    :goto_0
    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    :cond_1
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    return-wide v0
.end method
