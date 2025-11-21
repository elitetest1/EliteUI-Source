.class Lcom/android/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final blacklist mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-$$Nest$fgetmToolbar(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-$$Nest$fgetmTitle(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-$$Nest$fgetmMenuPrepared(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-interface {p1, v0, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
