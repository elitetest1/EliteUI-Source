.class Lcom/android/internal/view/SurfaceCallbackHelper$1;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/SurfaceCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/SurfaceCallbackHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v1, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iget-object v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v2, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget-object v1, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-static {v1}, Lcom/android/internal/view/SurfaceCallbackHelper;->-$$Nest$fgetmSurfaceRedrawImplemented(Lcom/android/internal/view/SurfaceCallbackHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-static {v1}, Lcom/android/internal/view/SurfaceCallbackHelper;->-$$Nest$fgetmTag(Lcom/android/internal/view/SurfaceCallbackHelper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-static {p0}, Lcom/android/internal/view/SurfaceCallbackHelper;->-$$Nest$fgetmTag(Lcom/android/internal/view/SurfaceCallbackHelper;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "surfaceRedrawNeeded implemented"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0xea66

    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
