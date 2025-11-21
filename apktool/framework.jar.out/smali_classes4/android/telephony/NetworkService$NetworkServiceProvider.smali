.class public abstract Landroid/telephony/NetworkService$NetworkServiceProvider;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NetworkServiceProvider"
.end annotation


# instance fields
.field private final blacklist mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/INetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/NetworkService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyInfoChangedToCallbacks(Landroid/telephony/NetworkService$NetworkServiceProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->notifyInfoChangedToCallbacks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/NetworkService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    iput p2, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    return-void
.end method

.method private blacklist notifyInfoChangedToCallbacks()V
    .locals 1

    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/INetworkServiceCallback;

    :try_start_0
    invoke-interface {v0}, Landroid/telephony/INetworkServiceCallback;->onNetworkStateChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public final whitelist getSlotIndex()I
    .locals 0

    iget p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    return p0
.end method

.method public final whitelist notifyNetworkRegistrationInfoChanged()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    iget p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public whitelist requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 0

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    return-void
.end method
