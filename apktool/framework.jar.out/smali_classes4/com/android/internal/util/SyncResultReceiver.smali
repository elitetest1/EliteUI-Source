.class public final Lcom/android/internal/util/SyncResultReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "SyncResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    }
.end annotation


# static fields
.field private static final blacklist EXTRA:Ljava/lang/String; = "EXTRA"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mResult:I

.field private final blacklist mTimeoutMs:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput p1, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    return-void
.end method

.method public static blacklist bundleFor(I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static blacklist bundleFor(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static blacklist bundleFor([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist waitResult()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    const-string v0, "Not called in "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget v3, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;-><init>(Ljava/lang/String;Lcom/android/internal/util/SyncResultReceiver-IA;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;

    const-string v0, "Interrupted"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;-><init>(Ljava/lang/String;Lcom/android/internal/util/SyncResultReceiver-IA;)V

    throw p0
.end method


# virtual methods
.method public blacklist getIntResult()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mResult:I

    return p0
.end method

.method public blacklist getOptionalExtraIntResult(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public blacklist getParcelableListResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/ArrayList<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "EXTRA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getParcelableResult()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">()TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "EXTRA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStringArrayResult()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "EXTRA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStringResult()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "EXTRA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist send(ILandroid/os/Bundle;)V
    .locals 0

    iput p1, p0, Lcom/android/internal/util/SyncResultReceiver;->mResult:I

    iput-object p2, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
