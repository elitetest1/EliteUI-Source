.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final greylist-max-o PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final greylist-max-o PROPERTY_DURATION_MASK:I = 0x20

.field private static final greylist-max-o PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final greylist-max-o PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final greylist-max-o PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final greylist-max-o PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final greylist-max-o PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final greylist-max-o PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private greylist-max-o mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDirty:Z

.field private greylist-max-o mFlags:I

.field private greylist-max-o mHasAlpha:Z

.field private greylist-max-o mLastEnd:J

.field private greylist-max-o mStoredOffsets:[J

.field private greylist-max-o mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v3, 0x10

    invoke-direct {p0, v3, v2}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt p1, v2, :cond_4

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_2
    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_3

    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_3
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    return-void
.end method

.method private greylist-max-o init()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    return-void

    :cond_0
    iget p2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    return-void
.end method


# virtual methods
.method public whitelist addAnimation(Landroid/view/animation/Animation;)V
    .locals 7

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_0
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    :goto_0
    iput-boolean v2, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    return-void
.end method

.method protected bridge synthetic whitelist clone()Landroid/view/animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist clone()Landroid/view/animation/AnimationSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist computeDurationHint()J
    .locals 6

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    move-wide v1, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public whitelist getAnimations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public whitelist getDuration()J
    .locals 6

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public blacklist getExtensionEdges()I
    .locals 2

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getExtensionEdges()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist getStartTime()J
    .locals 6

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 10

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    move v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    move-result v9

    invoke-virtual {v8, p1, p2, v2, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    if-nez v5, :cond_3

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    move v5, v4

    goto :goto_4

    :cond_3
    :goto_3
    move v5, v3

    :goto_4
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_5

    :cond_4
    move v7, v4

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    iget-boolean p1, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationStart()V

    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    :cond_6
    iget-boolean p1, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    if-eq v7, p1, :cond_7

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationEnd()V

    iput-boolean v7, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    :cond_7
    return v6
.end method

.method public blacklist getTransformationAt(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {v2, p1, v0}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-o hasAlpha()Z
    .locals 4

    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return p0
.end method

.method public whitelist initialize(IIII)V
    .locals 23

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v2, v1, 0x20

    const/4 v4, 0x1

    const/16 v5, 0x20

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, v1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v1, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v8, v1, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x8

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    if-eqz v8, :cond_6

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    :cond_6
    iget-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-wide v10, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    iget-boolean v13, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    iget v14, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    iget-object v15, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v17, v4

    iget-wide v3, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    move/from16 v18, v2

    iget-object v2, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    if-eqz v17, :cond_8

    move-wide/from16 v19, v3

    if-eqz v2, :cond_7

    array-length v3, v2

    if-eq v3, v9, :cond_9

    :cond_7
    new-array v2, v9, [J

    iput-object v2, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    goto :goto_6

    :cond_8
    move-wide/from16 v19, v3

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    :cond_9
    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_10

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    if-eqz v18, :cond_a

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v0, v13}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {v0, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_e
    if-eqz v17, :cond_f

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v21

    move-object v4, v1

    move-object/from16 p0, v2

    add-long v1, v21, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    aput-wide v21, p0, v3

    move-object/from16 v21, v4

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v16, v3

    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_8

    :cond_f
    move-object/from16 p0, v2

    move-object/from16 v21, v1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v16, v3

    move/from16 v1, p1

    move/from16 v3, p3

    :goto_8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    add-int/lit8 v0, v16, 0x1

    move-object/from16 v2, p0

    move v3, v0

    move-object/from16 v1, v21

    goto :goto_7

    :cond_10
    return-void
.end method

.method public greylist-max-o initializeInvalidateRegion(IIII)V
    .locals 4

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean p1, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object p3, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/animation/Animation;

    invoke-virtual {p4}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p4, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    :cond_1
    invoke-virtual {p4, v1, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    invoke-virtual {p0, p3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public whitelist reset()V
    .locals 0

    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    return-void
.end method

.method greylist-max-o restoreChildrenStartOffset()V
    .locals 6

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    aget-wide v4, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist restrictDuration(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist scaleCurrentDuration(F)V
    .locals 3

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setDuration(J)V
    .locals 2

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-wide p1, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    return-void
.end method

.method public whitelist setFillAfter(Z)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public whitelist setFillBefore(Z)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method public whitelist setStartOffset(J)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method public whitelist setStartTime(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist willChangeBounds()Z
    .locals 1

    iget p0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .locals 1

    iget p0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
