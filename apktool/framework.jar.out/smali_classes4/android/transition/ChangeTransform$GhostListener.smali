.class Landroid/transition/ChangeTransform$GhostListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private greylist-max-o mGhostView:Landroid/view/GhostView;

.field private greylist-max-o mStartView:Landroid/view/View;

.field private greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    iput-object p2, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    iput-object p3, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v0, 0x10206b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v0, 0x10204bc

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object p0, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/GhostView;->setVisibility(I)V

    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/GhostView;->setVisibility(I)V

    return-void
.end method
