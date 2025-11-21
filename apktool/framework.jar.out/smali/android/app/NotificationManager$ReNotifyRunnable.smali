.class final Landroid/app/NotificationManager$ReNotifyRunnable;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReNotifyRunnable"
.end annotation


# instance fields
.field private blacklist mId:I

.field private blacklist mNotification:Landroid/app/Notification;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mTag:Ljava/lang/String;

.field private blacklist mUpdateTime:J

.field private blacklist mUser:Landroid/os/UserHandle;

.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mTag:Ljava/lang/String;

    iput p4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mId:I

    iput-object p5, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mNotification:Landroid/app/Notification;

    iput-object p6, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUser:Landroid/os/UserHandle;

    iput-wide p7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUpdateTime:J

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    const-string/jumbo v0, "received notification posted with delay. pkg="

    const-string/jumbo v1, "summary is blocked by limit notification for overflow diffTime="

    iget-object v2, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    iget-object v2, v2, Landroid/app/NotificationManager;->mNMLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mNotification:Landroid/app/Notification;

    invoke-virtual {v8}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mNotification:Landroid/app/Notification;

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-static {v8}, Landroid/app/NotificationManager;->-$$Nest$fgetmOverflowChildUpdateTimeMap(Landroid/app/NotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-static {v8}, Landroid/app/NotificationManager;->-$$Nest$fgetmOverflowChildUpdateTimeMap(Landroid/app/NotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x190

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    iget-object v1, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-static {v1}, Landroid/app/NotificationManager;->-$$Nest$fgetmOverflowChildUpdateTimeMap(Landroid/app/NotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-wide v4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-static {v1}, Landroid/app/NotificationManager;->-$$Nest$fgetmOverflowNotiUpdateTimeMap(Landroid/app/NotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-wide v4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " update lastUpdateTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUpdateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    iget-object v0, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/app/NotificationManager;->-$$Nest$fgetmContext(Landroid/app/NotificationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mTag:Ljava/lang/String;

    iget v7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mId:I

    iget-object v0, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mNotification:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/NotificationManager;->-$$Nest$mfixNotification(Landroid/app/NotificationManager;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v8

    iget-object p0, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
