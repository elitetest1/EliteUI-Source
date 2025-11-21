.class Landroid/media/tv/ad/TvAdView$1;
.super Ljava/lang/Object;
.source "TvAdView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceFormat(Landroid/media/tv/ad/TvAdView;I)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p3}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceWidth(Landroid/media/tv/ad/TvAdView;I)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p4}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceHeight(Landroid/media/tv/ad/TvAdView;I)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/ad/TvAdView;Z)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/ad/TvAdView;)I

    move-result p2

    iget-object p3, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p3}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/ad/TvAdView;)I

    move-result p3

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/ad/TvAdView;)I

    move-result p0

    invoke-static {p1, p2, p3, p0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/ad/TvAdView;III)V

    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurface(Landroid/media/tv/ad/TvAdView;)Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$msetSessionSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/ad/TvAdView;Z)V

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p0, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$msetSessionSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    return-void
.end method
