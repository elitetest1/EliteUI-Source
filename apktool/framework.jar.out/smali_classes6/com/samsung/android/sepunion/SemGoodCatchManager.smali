.class public Lcom/samsung/android/sepunion/SemGoodCatchManager;
.super Ljava/lang/Object;
.source "SemGoodCatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GOOD_CATCH_STATE_CHANGED:Ljava/lang/String; = "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

.field private static final blacklist TAG:Ljava/lang/String; = "SemGoodCatchManager"

.field private static blacklist mService:Lcom/samsung/android/sepunion/IGoodCatchManager;


# instance fields
.field private final blacklist MSG_START:I

.field private final blacklist MSG_STOP:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFunction:[Ljava/lang/String;

.field private final blacklist mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mICallback:Landroid/os/IBinder;

.field private blacklist mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private blacklist mModule:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mICallback:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_START:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_STOP:I

    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mICallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_START:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_STOP:I

    new-instance v1, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    iput-object v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    new-instance v2, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_1

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    const-string/jumbo p2, "sepunion"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string p2, "goodcatch"

    invoke-virtual {p1, p2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IGoodCatchManager;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to SemGoodCatchManager; no service."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v1, v0}, Lcom/samsung/android/sepunion/IGoodCatchManager;->registerListener(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SemGoodCatchManager is created, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid function"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getSelectedSettingKey()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "getSelectedSettingKey() : db_keys="

    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to update; no service."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sepunion/IGoodCatchManager;->getSelectedSettingKey()Ljava/util/List;

    move-result-object v1

    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public blacklist update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to update; no service."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    move-object v8, p5

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/sepunion/IGoodCatchManager;->update([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public blacklist update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to update; no service."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/sepunion/IGoodCatchManager;->update([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
