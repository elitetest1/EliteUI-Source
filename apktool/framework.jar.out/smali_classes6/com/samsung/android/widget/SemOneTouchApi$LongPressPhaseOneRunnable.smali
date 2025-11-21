.class Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressPhaseOneRunnable"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field private final blacklist rootView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    return-void
.end method

.method private blacklist checkCurrentViewValid()Z
    .locals 3

    const-string v0, "OTCH$SemOneTouchApi"

    const-string v1, "invalid, getDisplayId "

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "checkCurrentViewValid failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist remove()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist test-api run()V
    .locals 9

    const-string v0, "OTCH$SemOneTouchApi"

    const-string v1, "LongPressPhaseOneRunnable found block view: "

    const-string v2, "findViewInfoArray: "

    const-string v3, "LongPressPhaseOneRunnable: "

    const-string v4, "LongPressPhaseOneRunnable state error: "

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->checkCurrentViewValid()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v5, :cond_b

    invoke-static {v5}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v5, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-static {v4, v6, v3, v7, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mputRootViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetpackageName(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/widget/SemOneTouchApi;->queryFindViewInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfindViewInfos(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-static {v5}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mgetTouchedView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {v4, v2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputtouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/view/View;)V

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v6

    invoke-static {v1, v5, v3, v6, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mputTouchedViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    instance-of v1, v2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v1, v5, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mgetFindVideoViewEventInfo(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->-$$Nest$fgetvideoViewClassName(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->-$$Nest$fgetfindTopToDown(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mfindVideoView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v7, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->-$$Nest$fgetvideoViewClassName(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v3, v1, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mputVideoViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V

    :cond_5
    invoke-static {v4, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v1, v5, v4, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$msendOnLongPressedEvent(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v3, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$misEventSuccess(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "key_skip_drag_and_drop"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "LongPressPhaseOneRunnable skip DragAndDrop, skip LongPressPhaseTwo"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$misSaveBitmapFileNeeded(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_7
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    check-cast v2, Landroid/graphics/Bitmap;

    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v7, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v7, v2}, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_0
    const-string v2, "key_long_press_phase_two_custom_threshold"

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-long/2addr v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v3, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v2, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-direct {v2, v5, v6, v7}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;)Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    move-result-object v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_9

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_a
    const-string v1, "LongPressPhaseOneRunnable call fail"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    return-void

    :cond_b
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LongPressPhaseOneRunnable call error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    :goto_3
    return-void
.end method
