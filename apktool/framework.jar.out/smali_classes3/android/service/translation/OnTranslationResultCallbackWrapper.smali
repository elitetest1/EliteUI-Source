.class final Landroid/service/translation/OnTranslationResultCallbackWrapper;
.super Ljava/lang/Object;
.source "OnTranslationResultCallbackWrapper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/translation/TranslationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OnTranslationResultCallback"


# instance fields
.field private final blacklist mCallback:Landroid/service/translation/ITranslationCallback;

.field private final blacklist mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor blacklist <init>(Landroid/service/translation/ITranslationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/translation/ITranslationCallback;

    iput-object p1, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCallback:Landroid/service/translation/ITranslationCallback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private blacklist assertNotCalled()V
    .locals 1

    iget-object p0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist accept(Landroid/view/translation/TranslationResponse;)V
    .locals 2

    invoke-direct {p0}, Landroid/service/translation/OnTranslationResultCallbackWrapper;->assertNotCalled()V

    iget-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->isFinalResponse()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object p0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCallback:Landroid/service/translation/ITranslationCallback;

    invoke-interface {p0, p1}, Landroid/service/translation/ITranslationCallback;->onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    instance-of p1, p0, Landroid/os/DeadObjectException;

    if-eqz p1, :cond_0

    const-string p0, "OnTranslationResultCallback"

    const-string p1, "Process is dead, ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already called with complete response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/view/translation/TranslationResponse;

    invoke-virtual {p0, p1}, Landroid/service/translation/OnTranslationResultCallbackWrapper;->accept(Landroid/view/translation/TranslationResponse;)V

    return-void
.end method
