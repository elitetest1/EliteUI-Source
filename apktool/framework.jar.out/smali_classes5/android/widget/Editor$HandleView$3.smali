.class Landroid/widget/Editor$HandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;

.field final synthetic blacklist val$targetRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iput-object p2, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object p1, p1, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/Editor$HandleView;->-$$Nest$mgetDrawableBounds(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->requestLayout()V

    iget-object p0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->invalidate()V

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    return-void
.end method
