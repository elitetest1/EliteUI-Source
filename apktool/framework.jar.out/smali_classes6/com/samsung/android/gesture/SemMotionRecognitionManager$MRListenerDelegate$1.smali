.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

.field final synthetic blacklist val$this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->val$this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "ClassCastException in handleMessage: msg.obj = "

    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    iget-object v1, v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-static {v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x35

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-static {p0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/gesture/SemMotionEventListener;->onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
