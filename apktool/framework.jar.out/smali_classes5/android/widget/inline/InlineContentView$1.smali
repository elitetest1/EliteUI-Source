.class Landroid/widget/inline/InlineContentView$1;
.super Ljava/lang/Object;
.source "InlineContentView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/inline/InlineContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/inline/InlineContentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {p1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceView(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmOnReparentListener(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    iget-object p0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {p0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceControlCallback(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/inline/InlineContentView$SurfaceControlCallback;->onCreated(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {p1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceView(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmOnReparentListener(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    iget-object p0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {p0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceControlCallback(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/inline/InlineContentView$SurfaceControlCallback;->onDestroyed(Landroid/view/SurfaceControl;)V

    return-void
.end method
