.class public Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
.super Ljava/lang/Object;
.source "ImeOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeOnBackInvokedCallback"
.end annotation


# instance fields
.field private final blacklist mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mId:I

.field private final blacklist mPriority:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .locals 0

    iget p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .locals 0

    invoke-direct {p0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->getId()I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/window/IOnBackInvokedCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    iput p2, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    iput p3, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return-void
.end method

.method private blacklist getId()I
    .locals 0

    iget p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    return p0
.end method


# virtual methods
.method public whitelist onBackCancelled()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ImeBackDispatcher"

    const-string v1, "Exception when invoking forwarded callback. e: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist onBackInvoked()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ImeBackDispatcher"

    const-string v1, "Exception when invoking forwarded callback. e: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v5, v0

    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v2, Landroid/window/BackMotionEvent;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v4

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v7

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v9

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/window/BackMotionEvent;-><init>(FFJFZILandroid/view/RemoteAnimationTarget;)V

    invoke-interface {p0, v2}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "ImeBackDispatcher"

    const-string v0, "Exception when invoking forwarded callback. e: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v5, v0

    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v2, Landroid/window/BackMotionEvent;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v4

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v7

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v9

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/window/BackMotionEvent;-><init>(FFJFZILandroid/view/RemoteAnimationTarget;)V

    invoke-interface {p0, v2}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "ImeBackDispatcher"

    const-string v0, "Exception when invoking forwarded callback. e: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImeCallback=ImeOnBackInvokedCallback@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
