.class Landroid/widget/ZoomButtonsController$4;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {}, Landroid/widget/ZoomButtonsController;->-$$Nest$sfgetZOOM_CONTROLS_TIMEOUT()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$mdismissControlsDelayed(Landroid/widget/ZoomButtonsController;I)V

    iget-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmCallback(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmCallback(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_0
    return-void
.end method
