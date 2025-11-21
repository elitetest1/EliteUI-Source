.class public final Landroid/service/autofill/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FillCallback"


# instance fields
.field private final greylist-max-o mCallback:Landroid/service/autofill/IFillCallback;

.field private greylist-max-o mCalled:Z

.field private final greylist-max-o mRequestId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/service/autofill/IFillCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iput p2, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    return-void
.end method

.method private greylist-max-o assertNotCalled()V
    .locals 1

    iget-boolean p0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist onFailure(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFailure(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iget p0, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-interface {v0, p0, p1}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {p0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method
