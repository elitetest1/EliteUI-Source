.class Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
.super Lcom/samsung/android/mocca/IMoccaEventListener$Stub;
.source "SemMdContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mocca/SemMdContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoccaListenerTransport"
.end annotation


# static fields
.field private static final blacklist MSG_CONTEXT_AVAILABLE:I = 0x3

.field private static final blacklist MSG_CONTEXT_CHANGED:I = 0x1

.field private static final blacklist MSG_CONTEXT_STOPPED:I = 0x2

.field private static final blacklist MSG_CONTEXT_UNAVAILABLE:I = 0x4


# instance fields
.field private blacklist mAvailabilityCallback:Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;

.field private blacklist mContextEventCallback:Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;

.field private final blacklist mListenerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$m_handleMessage(Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mAvailabilityCallback:Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;

    iput-object p2, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mContextEventCallback:Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;

    new-instance p1, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport$1;-><init>(Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;)V

    iput-object p1, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist _handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mAvailabilityCallback:Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;

    if-eqz p0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;->onContextUnavailable(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mAvailabilityCallback:Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;

    if-eqz p0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;->onContextAvailable(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mContextEventCallback:Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;

    if-eqz p0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;->onContextStopped(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mContextEventCallback:Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mocca/ContextEvent;

    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mContextEventCallback:Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;

    new-instance v0, Lcom/samsung/android/mocca/SemMdContextEvent;

    iget-wide v1, p1, Lcom/samsung/android/mocca/ContextEvent;->timestamp:J

    iget-object v3, p1, Lcom/samsung/android/mocca/ContextEvent;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/mocca/ContextEvent;->data:[B

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/mocca/SemMdContextEvent;-><init>(JLjava/lang/String;[B)V

    invoke-interface {p0, v0}, Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;->onContextChanged(Lcom/samsung/android/mocca/SemMdContextEvent;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist onContextAvailable(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onContextChanged(Lcom/samsung/android/mocca/ContextEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onContextStopped(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onContextUnavailable(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
