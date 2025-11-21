.class Lcom/android/internal/widget/MessagingPropertyAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessagingPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$3;->val$v:Landroid/view/View;

    const v0, 0x1020657

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$3;->val$v:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->-$$Nest$smupdateLayerType(Landroid/view/View;Z)V

    return-void
.end method
