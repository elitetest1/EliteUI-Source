.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
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

    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist handleMessageImpl(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "c#"

    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    const/high16 v2, 0xb000000

    const/4 v6, 0x0

    const-wide/16 v7, 0x2ee

    const/16 v9, 0x27

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    goto/16 :goto_b

    :pswitch_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchHint(Landroid/view/ViewRootImpl;Z)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryChangeReason(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrameRateCategoryForTouchHint(Landroid/view/ViewRootImpl;I)V

    return-void

    :pswitch_1
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusInTaskChanged(Landroid/view/ViewRootImpl;)V

    return-void

    :pswitch_2
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchLetterboxDirectionChanged(Landroid/view/ViewRootImpl;I)V

    return-void

    :pswitch_3
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputEvent;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSPenGestureEvent(Landroid/view/ViewRootImpl;[Landroid/view/InputEvent;)V

    return-void

    :pswitch_4
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTouchAndDrawn(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v9, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v4}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    :goto_0
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmTouchAndDrawn(Landroid/view/ViewRootImpl;Z)V

    return-void

    :pswitch_5
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmSurfaceReplaced(Landroid/view/ViewRootImpl;Z)V

    return-void

    :pswitch_6
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput v4, v0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    return-void

    :pswitch_7
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    return-void

    :pswitch_8
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsTouchBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsFrameRateBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsAnimationRunning(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v9, 0xf4240

    div-long/2addr v1, v9

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastUpdateTimeMillis(Landroid/view/ViewRootImpl;)J

    move-result-wide v9

    sub-long/2addr v1, v9

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v1, 0x0

    :goto_2
    cmp-long v3, v1, v7

    if-ltz v3, :cond_5

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighCount(Landroid/view/ViewRootImpl;I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighHintCount(Landroid/view/ViewRootImpl;I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryNormalCount(Landroid/view/ViewRootImpl;I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryLowCount(Landroid/view/ViewRootImpl;I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_POLICY:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/high16 v2, 0xc000000

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryChangeReason(Landroid/view/ViewRootImpl;I)V

    :cond_4
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$mupdateFrameRateFromThreadedRendererViews(Landroid/view/ViewRootImpl;)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRate(Landroid/view/ViewRootImpl;)F

    move-result v2

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    return-void

    :cond_5
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x28

    sub-long/2addr v7, v1

    invoke-virtual {v0, v3, v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_PROLONG_TOUCH_BOOST:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsDragging(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v9, v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsDragging(Landroid/view/ViewRootImpl;Z)V

    return-void

    :cond_6
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsFrameRateBoosting(Landroid/view/ViewRootImpl;Z)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_POLICY:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryChangeReason(Landroid/view/ViewRootImpl;I)V

    :cond_7
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDrawnThisFrame(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    return-void

    :pswitch_a
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->decorViewInterceptionChanged(Z)V

    return-void

    :pswitch_b
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mresumeAfterSyncTimeout(Landroid/view/ViewRootImpl;)V

    return-void

    :pswitch_c
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    return-void

    :pswitch_d
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_9

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->keepClearRectsChanged(Z)V

    return-void

    :pswitch_e
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V

    return-void

    :pswitch_f
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IScrollCaptureResponseListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    return-void

    :pswitch_10
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v6, 0x1f

    invoke-interface {v3, v2, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_a

    goto :goto_5

    :cond_a
    move v4, v5

    :goto_5
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :pswitch_11
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v6, 0x1e

    invoke-interface {v3, v2, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_c

    iget v3, v1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v6, v1, Landroid/os/Message;->arg2:I

    if-ne v6, v4, :cond_b

    move v6, v4

    goto :goto_6

    :cond_b
    move v6, v5

    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "Calling showInsets(%d,%b) on window that no longer has views."

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ViewRootImpl"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget v7, v1, Landroid/os/Message;->arg2:I

    if-ne v7, v4, :cond_d

    move v7, v4

    goto :goto_7

    :cond_d
    move v7, v5

    :goto_7
    invoke-static {v3, v6, v7}, Landroid/view/ViewRootImpl;->-$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;IZ)V

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_e

    goto :goto_8

    :cond_e
    move v4, v5

    :goto_8
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :pswitch_12
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->systemGestureExclusionChanged()V

    return-void

    :pswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/InsetsState;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/InsetsSourceControl$Array;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :pswitch_14
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    move v4, v5

    :goto_9
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->-$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    return-void

    :pswitch_15
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    return-void

    :pswitch_16
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    return-void

    :pswitch_17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputEvent;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    return-void

    :pswitch_18
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v6

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v6

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int/2addr v4, v2

    iput v4, v6, Landroid/graphics/Rect;->right:I

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v2

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v2

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v2

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static {v1, v2, v5}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Z)V

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    return-void

    :pswitch_19
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    return-void

    :pswitch_1a
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v6, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :pswitch_1b
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    return-void

    :pswitch_1c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :cond_10
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    :cond_11
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/util/MergedConfiguration;

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v3

    if-eqz v3, :cond_12

    new-instance v6, Landroid/window/ActivityWindowInfo;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    :cond_12
    const/4 v0, -0x1

    invoke-static {v1, v2, v5, v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V

    return-void

    :pswitch_1d
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;)V

    return-void

    :pswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/DragEvent;

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v3, v1, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget v3, v1, Landroid/view/DragEvent;->mAction:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_13

    goto :goto_a

    :cond_13
    move v4, v5

    :goto_a
    const-wide/16 v5, 0x8

    if-eqz v4, :cond_14

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Landroid/view/DragEvent;->mAction:I

    invoke-static {v2}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_14
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_16

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_15

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    :cond_15
    throw v0

    :pswitch_1f
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_16

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    :cond_16
    :goto_b
    return-void

    :pswitch_20
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->onScheduledCheckFocus()V

    return-void

    :pswitch_21
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1, v6, v5, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    return-void

    :pswitch_22
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    :cond_17
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1, v6, v4, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    return-void

    :pswitch_23
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    return-void

    :pswitch_24
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_18
    move v4, v5

    :goto_c
    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    return-void

    :pswitch_25
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputEvent;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputEventReceiver;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :pswitch_26
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V

    return-void

    :pswitch_27
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/window/ClientWindowFrames;

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_19

    move v8, v4

    goto :goto_d

    :cond_19
    move v8, v5

    :goto_d
    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/util/MergedConfiguration;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Landroid/view/InsetsState;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Landroid/window/ActivityWindowInfo;

    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v1, :cond_1a

    move v11, v4

    goto :goto_e

    :cond_1a
    move v11, v5

    :goto_e
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v1, :cond_1b

    move v12, v4

    goto :goto_f

    :cond_1b
    move v12, v5

    :goto_f
    iget v13, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v14, v2, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz v1, :cond_1c

    move v15, v4

    goto :goto_10

    :cond_1c
    move v15, v5

    :goto_10
    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static/range {v6 .. v16}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :pswitch_28
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    return-void

    :pswitch_29
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    iget-object v1, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    return-void

    :pswitch_2a
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x67
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "MSG_INITIAL_TOUCH_BOOST_TIMEOUT"

    return-object p0

    :pswitch_1
    const-string p0, "MSG_SURFACE_REPLACED_TIMEOUT"

    return-object p0

    :pswitch_2
    const-string p0, "MSG_FRAME_RATE_SETTING"

    return-object p0

    :pswitch_3
    const-string p0, "MSG_REFRESH_POINTER_ICON"

    return-object p0

    :pswitch_4
    const-string p0, "MSG_CHECK_INVALIDATION_IDLE"

    return-object p0

    :pswitch_5
    const-string p0, "MSG_TOUCH_BOOST_TIMEOUT"

    return-object p0

    :pswitch_6
    const-string p0, "MSG_HIDE_INSETS"

    return-object p0

    :pswitch_7
    const-string p0, "MSG_SHOW_INSETS"

    return-object p0

    :pswitch_8
    const-string p0, "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED"

    return-object p0

    :pswitch_9
    const-string p0, "MSG_INSETS_CONTROL_CHANGED"

    return-object p0

    :pswitch_a
    const-string p0, "MSG_POINTER_CAPTURE_CHANGED"

    return-object p0

    :pswitch_b
    const-string p0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object p0

    :pswitch_c
    const-string p0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object p0

    :pswitch_d
    const-string p0, "MSG_WINDOW_MOVED"

    return-object p0

    :pswitch_e
    const-string p0, "MSG_PROCESS_INPUT_EVENTS"

    return-object p0

    :pswitch_f
    const-string p0, "MSG_UPDATE_CONFIGURATION"

    return-object p0

    :pswitch_10
    const-string p0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object p0

    :pswitch_11
    const-string p0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object p0

    :pswitch_12
    const-string p0, "MSG_DISPATCH_DRAG_EVENT"

    return-object p0

    :pswitch_13
    const-string p0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object p0

    :pswitch_14
    const-string p0, "MSG_CHECK_FOCUS"

    return-object p0

    :pswitch_15
    const-string p0, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object p0

    :pswitch_16
    const-string p0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object p0

    :pswitch_17
    const-string p0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object p0

    :pswitch_18
    const-string p0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object p0

    :pswitch_19
    const-string p0, "MSG_DISPATCH_INPUT_EVENT"

    return-object p0

    :pswitch_1a
    const-string p0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object p0

    :pswitch_1b
    const-string p0, "MSG_RESIZED_REPORT"

    return-object p0

    :pswitch_1c
    const-string p0, "MSG_RESIZED"

    return-object p0

    :pswitch_1d
    const-string p0, "MSG_DIE"

    return-object p0

    :pswitch_1e
    const-string p0, "MSG_INVALIDATE_RECT"

    return-object p0

    :pswitch_1f
    const-string p0, "MSG_INVALIDATE"

    return-object p0

    :cond_0
    const-string p0, "MSG_DISPATCH_LETTERBOX_DIRECTION_CHANGED"

    return-object p0

    :cond_1
    const-string p0, "MSG_SPEN_GESTURE_EVENT"

    return-object p0

    :cond_2
    const-string p0, "MSG_KEEP_CLEAR_RECTS_CHANGED"

    return-object p0

    :cond_3
    const-string p0, "MSG_WINDOW_TOUCH_MODE_CHANGED"

    return-object p0

    :cond_4
    const-string p0, "MSG_TOUCH_HINT_TIMEOUT"

    return-object p0

    :cond_5
    const-string p0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x27
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
