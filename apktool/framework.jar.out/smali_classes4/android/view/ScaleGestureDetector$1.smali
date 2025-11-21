.class Landroid/view/ScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mQuickScaleDoubleTapY:I

.field blacklist mQuickScaleSpanSlop:I

.field final synthetic blacklist this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor blacklist <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-static {p1}, Landroid/view/ScaleGestureDetector;->-$$Nest$fgetmContext(Landroid/view/ScaleGestureDetector;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleSpanSlop:I

    return-void
.end method


# virtual methods
.method public whitelist onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->-$$Nest$fputmAnchoredScaleStartX(Landroid/view/ScaleGestureDetector;F)V

    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->-$$Nest$fputmAnchoredScaleStartY(Landroid/view/ScaleGestureDetector;F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleDoubleTapY:I

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleDoubleTapY:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleSpanSlop:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    iget-object p0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-static {p0, v1}, Landroid/view/ScaleGestureDetector;->-$$Nest$fputmAnchoredScaleMode(Landroid/view/ScaleGestureDetector;I)V

    :cond_0
    return v1
.end method
