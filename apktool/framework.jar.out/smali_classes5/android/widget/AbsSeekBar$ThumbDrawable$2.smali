.class Landroid/widget/AbsSeekBar$ThumbDrawable$2;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsSeekBar$ThumbDrawable;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsSeekBar$ThumbDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$2;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$2;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    float-to-int p1, p1

    invoke-static {v0, p1}, Landroid/widget/AbsSeekBar$ThumbDrawable;->-$$Nest$msetRadius(Landroid/widget/AbsSeekBar$ThumbDrawable;I)V

    iget-object p0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$2;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->invalidateSelf()V

    return-void
.end method
