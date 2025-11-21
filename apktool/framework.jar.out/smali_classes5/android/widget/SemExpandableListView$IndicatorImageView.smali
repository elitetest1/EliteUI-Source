.class Landroid/widget/SemExpandableListView$IndicatorImageView;
.super Landroid/widget/ImageView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorImageView"
.end annotation


# static fields
.field private static final blacklist ANIMATION_DURATION:I = 0x12c


# instance fields
.field private blacklist ARROW_PADDING:F

.field blacklist childPos:I

.field blacklist groupPos:I

.field blacklist mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private blacklist mCenterX:F

.field private blacklist mCenterY:F

.field private blacklist mEndPointX:F

.field private blacklist mEndPointY:F

.field private blacklist mHeight:F

.field private blacklist mIndicatorArrowHeight:F

.field private blacklist mMorphingAnimatedValue:F

.field private blacklist mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

.field private blacklist mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

.field private blacklist mPaddingValue:F

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mStartPointX:F

.field private blacklist mStartPointY:F

.field blacklist mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private blacklist mWidth:F

.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmMorphingAnimatedValue(Landroid/widget/SemExpandableListView$IndicatorImageView;F)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprintAnimationInfo(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->printAnimationInfo(Landroid/animation/Animator;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x1

    iput p2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    iget p1, p1, Landroid/widget/SemExpandableListView;->mIndicatorPaddingHeight:F

    iput p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->ARROW_PADDING:F

    iput p2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    new-instance p1, Landroid/widget/SemExpandableListView$IndicatorImageView$1;

    invoke-direct {p1, p0}, Landroid/widget/SemExpandableListView$IndicatorImageView$1;-><init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Landroid/widget/SemExpandableListView$IndicatorImageView$2;

    invoke-direct {p1, p0}, Landroid/widget/SemExpandableListView$IndicatorImageView$2;-><init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->semSetHoverPopupType(I)V

    return-void
.end method

.method private blacklist initArrow()V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mWidth:F

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->ARROW_PADDING:F

    iput v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointY:F

    iget v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mWidth:F

    add-float v5, v2, v4

    iput v5, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointX:F

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointY:F

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterX:F

    iput v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterY:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    const/4 v1, 0x2

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v6, 0x1

    aput v0, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "IndicatorImageView : initArrow : mMorphingAnimationToDown = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x10c0006

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    iget v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    mul-float/2addr v4, v3

    sub-float/2addr v0, v4

    new-array v1, v1, [F

    aput v0, v1, v5

    aput v2, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IndicatorImageView : initArrow : mMorphingAnimationToUp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private blacklist printAnimationInfo(Landroid/animation/Animator;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "printAnimationInfo : animation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "printAnimationInfo : this animation => mMorphingAnimationToDown"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "printAnimationInfo : this animation => mMorphingAnimationToUp"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private blacklist printState([I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    if-nez v3, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "drawableStateChanged() state="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawableStateChanged() gr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", state="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    return-void
.end method

.method public whitelist onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    iget v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    iget p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v0, p0}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetGROUP_EXPANDED_STATE_SET()[I

    move-result-object p0

    invoke-static {p1, p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorAnimationType(Landroid/widget/SemExpandableListView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->initArrow()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    const-string v1, "IndicatorImageView : onDraw : group("

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") collapse !!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") expand !!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterY:F

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {p0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGroupIndicatorPaint(Landroid/widget/SemExpandableListView;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method blacklist setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V
    .locals 1

    iget v0, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    iget p1, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    iput p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    return-void
.end method

.method public blacklist startIndicatorMorphAimation()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    const-string v1, "IndicatorImageView : startIndicatorMorphAimation : group("

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") collapse !!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndicatorImageView : startIndicatorMorphAimation : start morphingAnimation to UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") expand !!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndicatorImageView : startIndicatorMorphAimation : start morphingAnimation to DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method
