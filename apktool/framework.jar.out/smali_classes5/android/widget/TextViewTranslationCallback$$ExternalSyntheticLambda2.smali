.class public final synthetic Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextView;

    invoke-static {p0, p1}, Landroid/widget/TextViewTranslationCallback;->lambda$runChangeTextWithAnimationIfNeeded$2(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
