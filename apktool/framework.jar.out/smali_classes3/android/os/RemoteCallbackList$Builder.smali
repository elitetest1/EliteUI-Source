.class public final Landroid/os/RemoteCallbackList$Builder;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mFrozenCalleePolicy:I

.field private blacklist mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

.field private blacklist mMaxQueueSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder;)Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;
    .locals 0

    iget-object p0, p0, Landroid/os/RemoteCallbackList$Builder;->mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    iput p1, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/os/RemoteCallbackList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget v1, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList$Builder;->mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/RemoteCallbackList$Builder$1;

    iget v2, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    iget v3, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/os/RemoteCallbackList$Builder$1;-><init>(Landroid/os/RemoteCallbackList$Builder;IILjava/util/concurrent/Executor;)V

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/RemoteCallbackList;

    iget v2, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    iget p0, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Landroid/os/RemoteCallbackList;-><init>(IILjava/util/concurrent/Executor;Landroid/os/RemoteCallbackList-IA;)V

    return-object v1
.end method

.method public whitelist setExecutor(Ljava/util/concurrent/Executor;)Landroid/os/RemoteCallbackList$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/RemoteCallbackList$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public whitelist setInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;)Landroid/os/RemoteCallbackList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback<",
            "TE;>;)",
            "Landroid/os/RemoteCallbackList$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/os/RemoteCallbackList$Builder;->mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

    return-object p0
.end method

.method public whitelist setMaxQueueSize(I)Landroid/os/RemoteCallbackList$Builder;
    .locals 2

    if-lez p1, :cond_1

    iget v0, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setMaxQueueSize can only be called for FROZEN_CALLEE_POLICY_ENQUEUE_ALL"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "maxQueueSize must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
