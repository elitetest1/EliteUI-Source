.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final greylist-max-o BEGINNING_OF_STACK_MODE:I = 0x1

.field static final greylist-max-o END_OF_STACK_MODE:I = 0x2

.field static final greylist-max-o NORMAL_MODE:I


# instance fields
.field greylist-max-o mMode:I

.field greylist-max-o mView:Landroid/view/View;

.field greylist-max-o mXProgress:F

.field greylist-max-o mYProgress:F

.field final synthetic blacklist this$0:Landroid/widget/StackView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/StackView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
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

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    iget-object p1, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iget p1, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iget p1, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iget p1, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method private greylist-max-o cubic(F)F
    .locals 4

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    div-float/2addr p1, p0

    return p1
.end method

.method private greylist-max-o getDuration(ZF)F
    .locals 6

    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    iget v2, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    int-to-double v2, v2

    iget v0, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    cmpl-float v3, p2, v1

    const/high16 v4, 0x43c80000    # 400.0f

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr v0, v2

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_1
    div-float p0, v0, v2

    :goto_0
    mul-float/2addr p0, v4

    return p0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v0, p2

    goto :goto_1

    :cond_3
    sub-float/2addr v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float v0, v2, p2

    :goto_1
    const/high16 p2, 0x42480000    # 50.0f

    cmpg-float p2, v0, p2

    if-ltz p2, :cond_5

    cmpl-float p2, v0, v4

    if-lez p2, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    invoke-direct {p0, p1, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p0

    return p0

    :cond_6
    return v1
.end method

.method private greylist-max-o highlightAlphaInterpolator(F)F
    .locals 3

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v1, p1, v0

    const v2, 0x3f59999a    # 0.85f

    if-gez v1, :cond_0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result p0

    :goto_0
    mul-float/2addr p0, v2

    return p0

    :cond_0
    sub-float/2addr p1, v0

    const v0, 0x3f19999a    # 0.6f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result p0

    goto :goto_0
.end method

.method private greylist-max-o rotationInterpolator(F)F
    .locals 1

    const p0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p1, p0

    const p0, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, p0

    return p1
.end method

.method private greylist-max-o viewAlphaInterpolator(F)F
    .locals 1

    const p0, 0x3e99999a    # 0.3f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    sub-float/2addr p1, p0

    const p0, 0x3f333333    # 0.7f

    div-float/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method greylist-max-o getDurationForNeutralPosition()F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p0

    return p0
.end method

.method greylist-max-o getDurationForNeutralPosition(F)F
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p0

    return p0
.end method

.method greylist-max-o getDurationForOffscreenPosition()F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p0

    return p0
.end method

.method greylist-max-o getDurationForOffscreenPosition(F)F
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p0

    return p0
.end method

.method public greylist-max-o getXProgress()F
    .locals 0

    iget p0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    return p0
.end method

.method public greylist-max-o getYProgress()F
    .locals 0

    iget p0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    return p0
.end method

.method greylist-max-o setMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method greylist-max-o setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    return-void
.end method

.method public greylist-max-o setXProgress(F)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v2

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    iget-object p0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {p0}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    return-void
.end method

.method public greylist-max-o setYProgress(F)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    iget-object v3, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v3}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-$$Nest$fgetmStackMode(Landroid/widget/StackView;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    iget v6, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayerType()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v6, v9, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayerType()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    iget v6, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v6, :cond_6

    const v1, 0x3e4ccccd    # 0.2f

    if-eq v6, v5, :cond_5

    if-eq v6, v9, :cond_4

    :goto_2
    return-void

    :cond_4
    mul-float/2addr p1, v1

    neg-int v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v0}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_5
    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    int-to-float p1, v4

    mul-float/2addr p1, v0

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {p1}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_6
    neg-float v5, p1

    int-to-float v4, v4

    mul-float/2addr v5, v4

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v6}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    move-result v0

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_7

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    cmpl-float v2, v0, v1

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v4, v1

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v0}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result p0

    mul-float/2addr v4, p0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setRotationX(F)V

    return-void
.end method
