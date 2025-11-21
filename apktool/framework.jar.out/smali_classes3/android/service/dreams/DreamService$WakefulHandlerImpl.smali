.class final Landroid/service/dreams/DreamService$WakefulHandlerImpl;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/service/dreams/DreamService$WakefulHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WakefulHandlerImpl"
.end annotation


# static fields
.field private static final blacklist SERVICE_HANDLER_WAKE_LOCK_TAG:Ljava/lang/String; = "dream:service:handler"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private blacklist getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    const-string v1, "dream:service:handler"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public blacklist postIfNeeded(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object p0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
