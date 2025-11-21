.class Landroid/widget/AbsSeekBar$1;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsSeekBar;->initMuteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsSeekBar;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsSeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsSeekBar$1;->this$0:Landroid/widget/AbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar$1;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/widget/AbsSeekBar;->-$$Nest$fputmCurrentProgressLevel(Landroid/widget/AbsSeekBar;I)V

    iget-object p0, p0, Landroid/widget/AbsSeekBar$1;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {p0}, Landroid/widget/AbsSeekBar;->-$$Nest$fgetmCurrentProgressLevel(Landroid/widget/AbsSeekBar;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->onSlidingRefresh(I)V

    return-void
.end method
