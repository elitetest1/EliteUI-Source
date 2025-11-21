.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
.super Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/SemEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingCallbackDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_EDGE_LIGHTING_START:I = 0x0

.field private static final blacklist MSG_EDGE_LIGHTING_STARTED:I = 0x2

.field private static final blacklist MSG_EDGE_LIGHTING_STOP:I = 0x1

.field private static final blacklist MSG_EDGE_LIGHTING_STOPPED:I = 0x3

.field private static final blacklist MSG_SCREEN_CHANGED:I = 0x4


# instance fields
.field private final blacklist mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
    .locals 1
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

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    new-instance p2, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-$$Nest$fgetmContext(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;Lcom/samsung/android/edge/SemEdgeManager;)V

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    .locals 1
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

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    new-instance p2, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-$$Nest$fgetmContext(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;Lcom/samsung/android/edge/SemEdgeManager;)V

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method blacklist getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    return-object p0
.end method

.method blacklist getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    return-object p0
.end method

.method public blacklist onEdgeLightingStarted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist onEdgeLightingStopped()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist onScreenChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p0, v0, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "packageName"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
