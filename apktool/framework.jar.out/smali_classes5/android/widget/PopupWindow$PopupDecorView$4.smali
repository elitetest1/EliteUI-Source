.class Landroid/widget/PopupWindow$PopupDecorView$4;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow$PopupDecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/PopupWindow$PopupDecorView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupWindow$PopupDecorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {p1}, Landroid/widget/PopupWindow$PopupDecorView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
