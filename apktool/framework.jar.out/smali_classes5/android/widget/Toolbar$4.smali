.class Landroid/widget/Toolbar$4;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-static {p1}, Landroid/widget/Toolbar;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/Toolbar;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object p1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-static {p1}, Landroid/widget/Toolbar;->-$$Nest$fgetmCollapseHandler(Landroid/widget/Toolbar;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-static {p0}, Landroid/widget/Toolbar;->-$$Nest$fgetmPerformToCollapse(Landroid/widget/Toolbar;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object p0, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->collapseActionView()V

    return-void
.end method
