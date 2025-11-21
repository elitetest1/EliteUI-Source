.class public final synthetic Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/policy/DecorView;

.field public final synthetic blacklist f$1:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic blacklist f$2:Landroid/graphics/Insets;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Insets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/policy/DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p3, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Insets;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/policy/DecorView;->$r8$lambda$Gta-5Zn5JFzDjVf51yoRg3pWZ0k(Lcom/android/internal/policy/DecorView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Insets;Landroid/animation/ValueAnimator;)V

    return-void
.end method
