.class Landroid/view/ViewRootImpl$TakenSurfaceHolder;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TakenSurfaceHolder"
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

    iput-object p1, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist isCreating()Z
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    return p0
.end method

.method public greylist-max-o onAllowLockCanvas()Z
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    return p0
.end method

.method public greylist-max-o onRelayoutContainer()V
    .locals 0

    return-void
.end method

.method public greylist-max-o onUpdateSurface()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Shouldn\'t be here"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setFixedSize(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Currently only support sizing from layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setFormat(I)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceFormat(I)V

    return-void
.end method

.method public whitelist setKeepScreenOn(Z)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceKeepScreenOn(Z)V

    return-void
.end method

.method public whitelist setType(I)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceType(I)V

    return-void
.end method
