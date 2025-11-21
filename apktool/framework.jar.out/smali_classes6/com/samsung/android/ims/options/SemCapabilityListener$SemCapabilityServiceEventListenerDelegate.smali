.class Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;
.super Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;
.source "SemCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemCapabilityServiceEventListenerDelegate"
.end annotation


# instance fields
.field blacklist mToken:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-direct {p0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityListener;Lcom/samsung/android/ims/options/SemCapabilityListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;-><init>(Lcom/samsung/android/ims/options/SemCapabilityListener;)V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {p0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->-$$Nest$fgetmHandler(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onCapabilityAndAvailabilityPublished(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {p0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->-$$Nest$fgetmHandler(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/util/SemImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/options/SemCapabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {p0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->-$$Nest$fgetmHandler(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onOwnCapabilitiesChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {p0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->-$$Nest$fgetmHandler(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
