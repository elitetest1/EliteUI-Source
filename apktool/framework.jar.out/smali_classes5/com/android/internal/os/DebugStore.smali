.class public Lcom/android/internal/os/DebugStore;
.super Ljava/lang/Object;
.source "DebugStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/DebugStore$DebugStoreNative;,
        Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_EVENTS:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DebugStore"

.field private static blacklist sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbeginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->beginEventNative(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smendEventNative(JLjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/DebugStore;->endEventNative(JLjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smrecordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->recordEventNative(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;-><init>(Lcom/android/internal/os/DebugStore-IA;)V

    sput-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist beginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native blacklist endEventNative(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static greylist recordBroadcastReceive(Landroid/content/Intent;I)J
    .locals 14

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "prid"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string v10, "pkg"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "BcRcv"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist recordBroadcastReceiveReg(Landroid/content/Intent;I)J
    .locals 14

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "prid"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string v10, "pkg"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "BcRcvReg"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist recordEventEnd(J)V
    .locals 2

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->endEvent(JLjava/util/List;)V

    return-void
.end method

.method private static native blacklist recordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static greylist recordFinish(I)V
    .locals 8

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "prid"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "Finish"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static greylist recordGoAsync(I)V
    .locals 8

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "prid"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "GoAsync"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static greylist recordHandleBindApplication()J
    .locals 3

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "BindApp"

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordLongLooperMessage(ILjava/lang/String;J)V
    .locals 7

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "elapsed"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v1, "code"

    const-string/jumbo v3, "trgt"

    invoke-static/range {v1 .. v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "LooperMsg"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static greylist recordScheduleReceiver()J
    .locals 5

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tname"

    const-string/jumbo v4, "tid"

    invoke-static {v3, v1, v4, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "SchRcv"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordScheduleRegisteredReceiver()J
    .locals 5

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tname"

    const-string/jumbo v4, "tid"

    invoke-static {v3, v1, v4, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "SchRcvReg"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceBind(ZLandroid/content/Intent;)J
    .locals 9

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "rebind"

    const-string v3, "act"

    const-string v5, "cmp"

    const-string v7, "pkg"

    invoke-static/range {v1 .. v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "SvcBind"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist recordServiceCreate(Landroid/content/pm/ServiceInfo;)J
    .locals 4

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :cond_1
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "name"

    const-string v3, "pkg"

    invoke-static {v1, v2, v3, p0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "SvcCreate"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceOnStart(IILandroid/content/Intent;)J
    .locals 11

    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "stId"

    const-string v3, "flg"

    const-string v5, "act"

    const-string v7, "comp"

    const-string v9, "pkg"

    invoke-static/range {v1 .. v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "SvcStart"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist setDebugStoreNative(Lcom/android/internal/os/DebugStore$DebugStoreNative;)V
    .locals 0

    sput-object p0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    return-void
.end method
