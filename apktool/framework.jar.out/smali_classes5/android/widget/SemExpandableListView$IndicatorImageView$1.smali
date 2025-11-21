.class Landroid/widget/SemExpandableListView$IndicatorImageView$1;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView$IndicatorImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$1;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

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

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$1;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-$$Nest$fputmMorphingAnimatedValue(Landroid/widget/SemExpandableListView$IndicatorImageView;F)V

    iget-object p0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$1;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->invalidate()V

    return-void
.end method
