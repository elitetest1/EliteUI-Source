.class Lcom/samsung/android/widget/SemTipPopup$7;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->showInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fputmState(Lcom/samsung/android/widget/SemTipPopup;I)V

    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmState(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopup(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopup(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopupX(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopupY(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result p0

    invoke-virtual {p1, v1, v0, v2, p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0xa

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x14

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return v0
.end method
