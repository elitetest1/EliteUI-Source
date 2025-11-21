.class public final Landroid/service/dreams/DreamOverlayConnectionHandler;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;,
        Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;,
        Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;
    }
.end annotation


# static fields
.field private static final blacklist MSG_ADD_CONSUMER:I = 0x1

.field private static final blacklist MSG_OVERLAY_CLIENT_READY:I = 0x3

.field private static final blacklist MSG_REMOVE_CONSUMER:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "DreamOverlayConnection"


# instance fields
.field private final blacklist mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

.field private blacklist mClient:Landroid/service/dreams/IDreamOverlayClient;

.field private final blacklist mConnection:Lcom/android/internal/util/ObservableServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mOnDisconnected:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/dreams/DreamOverlayConnectionHandler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDisconnected(Landroid/service/dreams/DreamOverlayConnectionHandler;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mOnDisconnected:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClient(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 0

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAddConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->onAddConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monOverlayClientReady(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->onOverlayClientReady(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRemoveConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->onRemoveConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .locals 6

    new-instance v5, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;

    invoke-direct {v5}, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/service/dreams/DreamOverlayConnectionHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    new-instance v0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/DreamOverlayConnectionHandler-IA;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    new-instance v0, Landroid/os/Handler;

    new-instance v2, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;

    invoke-direct {v2, p0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/DreamOverlayConnectionHandler-IA;)V

    invoke-direct {v0, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mOnDisconnected:Ljava/lang/Runnable;

    invoke-virtual {p5, p1, v0, p3}, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;->buildConnection(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)Lcom/android/internal/util/ObservableServiceConnection;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    return-void
.end method

.method private blacklist onAddConsumer(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist onOverlayClientReady(Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 2

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    iget-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist onRemoveConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist addConsumer(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist bind()Z
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ObservableServiceConnection;->addCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/util/ObservableServiceConnection;->bind()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    :cond_0
    return v0
.end method

.method public blacklist removeConsumer(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist unbind()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ObservableServiceConnection;->removeCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-virtual {p0}, Lcom/android/internal/util/ObservableServiceConnection;->unbind()V

    return-void
.end method
