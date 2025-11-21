.class public Landroid/view/translation/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/Translator$ServiceBinderReceiver;,
        Landroid/view/translation/Translator$TranslationResponseCallbackImpl;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_SERVICE_BINDER:Ljava/lang/String; = "binder"

.field public static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final blacklist TAG:Ljava/lang/String; = "Translator"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDestroyed:Z

.field private blacklist mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManager:Landroid/view/translation/TranslationManager;

.field private final blacklist mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

.field private blacklist mSystemServerBinder:Landroid/view/translation/ITranslationManager;

.field private final blacklist mTranslationContext:Landroid/view/translation/TranslationContext;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetServiceBinder(Landroid/view/translation/Translator;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/translation/Translator;->setServiceBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    new-instance p1, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {p1, p0}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;)V

    iput-object p1, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/translation/TranslationContext;",
            "I",
            "Landroid/view/translation/TranslationManager;",
            "Landroid/os/Handler;",
            "Landroid/view/translation/ITranslationManager;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    new-instance p3, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {p3, p0, p7}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;Ljava/util/function/Consumer;)V

    iput-object p3, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    :try_start_0
    iget-object p4, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget p0, p0, Landroid/view/translation/Translator;->mId:I

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-interface {p4, p2, p0, p3, p1}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RemoteException calling startSession(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Translator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist getNextRequestId()I
    .locals 0

    iget-object p0, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    invoke-virtual {p0}, Landroid/view/translation/TranslationManager;->getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method

.method private blacklist setServiceBinder(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/view/translation/ITranslationDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationDirectManager;

    move-result-object p1

    iput-object p1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    :cond_1
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
.method public whitelist destroy()V
    .locals 3

    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {v1, v2}, Landroid/view/translation/ITranslationDirectManager;->onFinishTranslationSession(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Translator"

    const-string v2, "RemoteException calling onSessionFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget-object v1, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iget p0, p0, Landroid/view/translation/Translator;->mId:I

    invoke-virtual {v1, p0}, Landroid/view/translation/TranslationManager;->removeTranslator(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "translationContext: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getTranslationContext()Landroid/view/translation/TranslationContext;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    return-object p0
.end method

.method public blacklist getTranslatorId()I
    .locals 0

    iget p0, p0, Landroid/view/translation/Translator;->mId:I

    return p0
.end method

.method public whitelist isDestroyed()Z
    .locals 1

    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist isSessionCreated()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
        }
    .end annotation

    iget-object p0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-virtual {p0}, Landroid/view/translation/Translator$ServiceBinderReceiver;->getSessionStateResult()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist requestUiTranslate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    const-string v1, "Translator"

    if-nez v0, :cond_0

    const-string p0, "Translator created without proper initialization."

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    :try_start_0
    iget-object p2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget p0, p0, Landroid/view/translation/Translator;->mId:I

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object p3

    invoke-interface {p2, p1, p0, p3, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "RemoteException calling flushRequest"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist start()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget-object v1, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    iget-object v3, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    iget-object p0, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, v1, v2, v3, p0}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteException calling startSession(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Translator"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist translate(Landroid/view/translation/TranslationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p2, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {p2, p4, p3}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    :try_start_0
    iget-object p3, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget p0, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {p3, p1, p0, v0, p2}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RemoteException calling requestTranslate(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Translator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This translator has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist translate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    :try_start_0
    iget-object p2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget p0, p0, Landroid/view/translation/Translator;->mId:I

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object p3

    invoke-interface {p2, p1, p0, p3, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RemoteException calling requestTranslate(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Translator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This translator has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
