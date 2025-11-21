.class Landroid/widget/RemoteViews$ViewObjectAnimatorAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewObjectAnimatorAction"
.end annotation


# instance fields
.field private blacklist mAnimatorId:I

.field private blacklist mIsAnimationEnd:Z

.field private final blacklist mViewId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmIsAnimationEnd(Landroid/widget/RemoteViews$ViewObjectAnimatorAction;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    iput p2, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    iput p3, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
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

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 0

    if-eqz p1, :cond_4

    iget p2, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p3, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p3, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    invoke-static {p2, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance p1, Landroid/widget/RemoteViews$ViewObjectAnimatorAction$1;

    invoke-direct {p1, p0}, Landroid/widget/RemoteViews$ViewObjectAnimatorAction$1;-><init>(Landroid/widget/RemoteViews$ViewObjectAnimatorAction;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean p0, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    if-eqz p0, :cond_3

    const-wide/16 p0, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_3
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 0

    const/16 p0, 0x6a

    return p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
