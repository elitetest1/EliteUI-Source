.class Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object p0
.end method

.method public blacklist getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public blacklist getScaleFactor()Landroid/graphics/PointF;
    .locals 1

    new-instance p0, Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public blacklist getTranslatedPoint()Landroid/graphics/PointF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTranslatedRectIfNeeded(Landroid/graphics/Rect;)V
    .locals 1

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mapplyViewBoundsSandboxingIfNeeded(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public blacklist getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object p0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    return-object p0
.end method
