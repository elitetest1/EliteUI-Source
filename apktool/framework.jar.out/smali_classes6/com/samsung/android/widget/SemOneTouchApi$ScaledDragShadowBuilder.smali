.class Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SemOneTouchApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaledDragShadowBuilder"
.end annotation


# instance fields
.field private blacklist mCustomDragShadowWidth:F


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    int-to-float p1, p3

    iput p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    return-void
.end method


# virtual methods
.method public whitelist onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->pxToDp(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->pxToDp(I)I

    move-result v0

    if-le v0, v1, :cond_1

    int-to-float v2, v1

    iget v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    goto :goto_0

    :cond_1
    int-to-float v2, v0

    iget v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    :goto_0
    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method
