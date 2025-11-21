.class Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;
.super Ljava/lang/Object;
.source "FreeformResizeGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransitionInfo"
.end annotation


# instance fields
.field private blacklist mAnimationDuration:J

.field private blacklist mDismissListener:Landroid/animation/Animator$AnimatorListener;

.field private blacklist mFromAlpha:I

.field private blacklist mInterpolator:Landroid/animation/TimeInterpolator;

.field private blacklist mToAlpha:I

.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAnimationDuration(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mAnimationDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFromAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mFromAlpha:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInterpolator(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mToAlpha:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->reset()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo$1;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mDismissListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->reset()V

    return-void
.end method

.method private blacklist reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mAnimationDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mToAlpha:I

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mFromAlpha:I

    return-void
.end method


# virtual methods
.method blacklist addDismissListener(Landroid/animation/AnimatorSet;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mDismissListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method blacklist getAnimationDuration(J)J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mAnimationDuration:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method blacklist getFromAlpha()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mFromAlpha:I

    return p0
.end method

.method blacklist getInterpolator(Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method blacklist getToAlpha()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mToAlpha:I

    return p0
.end method
