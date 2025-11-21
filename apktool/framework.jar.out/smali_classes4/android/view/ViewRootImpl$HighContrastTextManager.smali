.class final Landroid/view/ViewRootImpl$HighContrastTextManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HighContrastTextManager"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isHighContrastTextEnabled()Z

    move-result p0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    return-void
.end method


# virtual methods
.method public whitelist onHighContrastTextStateChanged(Z)V
    .locals 0

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->GRAPHICS_RENDERER_HCF:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdoRelayoutForHCT(Landroid/view/ViewRootImpl;Z)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->-$$Nest$mdestroyAndInvalidate(Landroid/view/ViewRootImpl;)V

    return-void
.end method
