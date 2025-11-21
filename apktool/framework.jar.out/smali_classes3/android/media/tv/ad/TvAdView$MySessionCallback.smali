.class Landroid/media/tv/ad/TvAdView$MySessionCallback;
.super Landroid/media/tv/ad/TvAdManager$SessionCallback;
.source "TvAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field final blacklist mServiceId:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdView;


# direct methods
.method public static synthetic blacklist $r8$lambda$FnXWWmXI7u-7ymMMCUslCt3B1-g(Landroid/media/tv/ad/TvAdView$MySessionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdView$MySessionCallback;->lambda$onRequestSigning$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Glu8vGaQksY-QDttrwRac86S7V8(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback;->lambda$onRequestCurrentVideoBounds$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MXeMh48qUCbO-X8TuvwprCsA_NQ(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback;->lambda$onRequestCurrentChannelUri$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WwuPYNSNt2vmuKCmxMlLoCcoEjY(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback;->lambda$onRequestTrackInfoList$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vyac-nnWOuMB0ppUSpCx8UND7W8(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback;->lambda$onRequestCurrentTvInputId$3()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdManager$SessionCallback;-><init>()V

    iput-object p2, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->mServiceId:Ljava/lang/String;

    return-void
.end method

.method private synthetic blacklist lambda$onRequestCurrentChannelUri$1()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->mServiceId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/media/tv/ad/TvAdView$TvAdCallback;->onRequestCurrentChannelUri(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$onRequestCurrentTvInputId$3()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->mServiceId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/media/tv/ad/TvAdView$TvAdCallback;->onRequestCurrentTvInputId(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$onRequestCurrentVideoBounds$0()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->mServiceId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/media/tv/ad/TvAdView$TvAdCallback;->onRequestCurrentVideoBounds(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$onRequestSigning$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->mServiceId:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/ad/TvAdView$TvAdCallback;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$onRequestTrackInfoList$2()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;

    move-result-object v1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->mServiceId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/media/tv/ad/TvAdView$TvAdCallback;->onRequestTrackInfoList(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist onLayoutSurface(Landroid/media/tv/ad/TvAdManager$Session;IIII)V
    .locals 0

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const-string p0, "TvAdView"

    const-string/jumbo p1, "onLayoutSurface - session not created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/ad/TvAdView;I)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p3}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceViewTop(Landroid/media/tv/ad/TvAdView;I)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p4}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceViewRight(Landroid/media/tv/ad/TvAdView;I)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p5}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/ad/TvAdView;I)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/ad/TvAdView;Z)V

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->requestLayout()V

    return-void
.end method

.method public blacklist onRequestCurrentChannelUri(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 2

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const-string p0, "TvAdView"

    const-string/jumbo p1, "onRequestCurrentChannelUri - session not created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestCurrentTvInputId(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 2

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const-string p0, "TvAdView"

    const-string/jumbo p1, "onRequestCurrentTvInputId - session not created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestCurrentVideoBounds(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 2

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const-string p0, "TvAdView"

    const-string/jumbo p1, "onRequestCurrentVideoBounds - session not created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/ad/TvAdManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const-string p0, "TvAdView"

    const-string/jumbo p1, "onRequestSigning - session not created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/ad/TvAdView$MySessionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestTrackInfoList(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 2

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const-string p0, "TvAdView"

    const-string/jumbo p1, "onRequestTrackInfoList - session not created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdView$MySessionCallback$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/ad/TvAdView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string p0, "TvAdView"

    const-string/jumbo v0, "onSessionCreated - session already created"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/tv/ad/TvAdManager$Session;->release()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0, p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSession(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdManager$Session;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurface(Landroid/media/tv/ad/TvAdView;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurface(Landroid/media/tv/ad/TvAdView;)Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$msetSessionSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceChanged(Landroid/media/tv/ad/TvAdView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/ad/TvAdView;)I

    move-result v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/ad/TvAdView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/ad/TvAdView;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/ad/TvAdView;III)V

    :cond_2
    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$mcreateSessionMediaView(Landroid/media/tv/ad/TvAdView;)V

    return-void

    :cond_3
    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdView$MySessionCallback;)V

    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 1

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const-string p0, "TvAdView"

    const-string/jumbo p1, "onSessionReleased - session not created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmMediaViewCreated(Landroid/media/tv/ad/TvAdView;Z)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmMediaViewFrame(Landroid/media/tv/ad/TvAdView;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdView$MySessionCallback;)V

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView$MySessionCallback;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p0, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSession(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdManager$Session;)V

    return-void
.end method
