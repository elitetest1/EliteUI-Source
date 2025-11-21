.class public Landroid/hardware/contexthub/HubEndpointSession;
.super Ljava/lang/Object;
.source "HubEndpointSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

.field private final blacklist mId:I

.field private final blacklist mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mServiceDescriptor:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p5, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    invoke-virtual {v0, p0}, Landroid/hardware/contexthub/HubEndpoint;->closeSession(Landroid/hardware/contexthub/HubEndpointSession;)V

    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/contexthub/HubEndpointSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Landroid/hardware/contexthub/HubEndpointSession;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v1

    iget v3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    and-int/2addr v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1

    :goto_2
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v4, p1, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object p1, p1, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    and-int p0, v1, v0

    return p0

    :cond_5
    return v2
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    return p0
.end method

.method public whitelist getServiceDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist sendMessage(Landroid/hardware/contexthub/HubMessage;)Landroid/hardware/location/ContextHubTransaction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contexthub/HubMessage;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    new-instance v1, Landroid/hardware/location/ContextHubTransaction;

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    :goto_0
    invoke-direct {v1, v2}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Landroid/hardware/contexthub/HubEndpoint;->sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V

    new-instance p0, Landroid/hardware/location/ContextHubTransaction$Response;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    return-object v1

    :cond_1
    invoke-static {v1}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    invoke-virtual {v2, p0, p1, v0}, Landroid/hardware/contexthub/HubEndpoint;->sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Session is already closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setClosed()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {p0}, Landroid/util/CloseGuard;->close()V

    return-void
.end method

.method public blacklist setOpened()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p0, v0}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]->["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
