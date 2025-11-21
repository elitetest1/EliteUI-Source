.class Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortraitVideoEventHandler"
.end annotation


# instance fields
.field private blacklist controller:Lcom/samsung/vekit/Control/VEController;

.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->values()[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    invoke-virtual {v2}, Lcom/samsung/vekit/Control/VEController;->getContext()Lcom/samsung/vekit/Common/VEContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Item/Item;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v3

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/samsung/vekit/Item/PortraitVideoItem;

    sget-object p0, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$State$PortraitVideoStatus:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, p0}, Lcom/samsung/vekit/Item/PortraitVideoItem;->onPortraitVideoError(I)V

    return-void

    :cond_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Lcom/samsung/vekit/Item/PortraitVideoItem;->onPortraitVideoKeyFrameUpdated(Ljava/util/ArrayList;)V

    return-void

    :cond_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    invoke-virtual {v2, p0}, Lcom/samsung/vekit/Item/PortraitVideoItem;->onPortraitVideoFrameInfoUpdated(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V

    return-void

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {p0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PortraitVideoEventHandler : item is invalid : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
