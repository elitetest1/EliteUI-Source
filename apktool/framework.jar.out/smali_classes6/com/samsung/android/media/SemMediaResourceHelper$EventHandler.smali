.class Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "SemMediaResourceHelper"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 p1, 0x64

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo p1, "onError"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {p1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {p1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-interface {p1, p0}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V

    return-void

    :cond_1
    const-string/jumbo p1, "no listener exists to handle event, release internally"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    return-void

    :cond_2
    const-string/jumbo v0, "onCapacityError"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;)V

    return-void

    :cond_3
    const-string/jumbo v0, "onState"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;->onStateChanged(Ljava/util/ArrayList;)V

    return-void

    :cond_4
    const-string/jumbo v0, "onRemove"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onRemove(Ljava/util/ArrayList;)V

    return-void

    :cond_5
    const-string/jumbo v0, "onAdd"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onAdd(Ljava/util/ArrayList;)V

    :cond_6
    :goto_0
    return-void
.end method
