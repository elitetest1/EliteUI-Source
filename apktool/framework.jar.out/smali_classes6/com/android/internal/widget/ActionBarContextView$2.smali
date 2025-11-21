.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 p1, 0x2

    new-array v0, p1, [I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result v3

    new-array v4, p1, [I

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContextView;->getLocationInWindow([I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/ActionBarContextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v6, v1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    aget v4, v4, v7

    add-int/2addr v4, v0

    sub-int/2addr v1, v4

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    div-int/2addr v0, p1

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    aget v1, v4, v7

    add-int/2addr v1, v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    div-int/2addr v0, p1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    :goto_0
    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/widget/ActionBarContextView;->setTooltipPosition(II)V

    return v7
.end method
