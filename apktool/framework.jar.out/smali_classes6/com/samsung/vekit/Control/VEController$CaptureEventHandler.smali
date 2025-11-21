.class Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureEventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/CaptureInfo;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/CaptureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;->onCaptureFrameReceived(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
