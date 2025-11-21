.class Lcom/samsung/android/media/SemMediaPlayer$3;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SemMediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic blacklist val$fFormat:Landroid/media/MediaFormat;

.field final synthetic blacklist val$fIs:Ljava/io/InputStream;

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addTrack()I
    .locals 8

    const-string v0, "addTrack() unsupported size : "

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const/16 v2, 0x385

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    const/high16 v4, 0x1400000

    if-le v3, v4, :cond_2

    const-string p0, "SemMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    return v2

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    new-instance v3, Ljava/util/Scanner;

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v4, "\\A"

    invoke-virtual {v3, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v6}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    if-nez v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p0, 0x323

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SemMediaPlayer"

    const-string v1, "handleMessage is NullPointerException e : "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catchall_0
    move-exception p0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_0
    :try_start_8
    const-string v1, "SemMediaPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_4
    return v2

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :catchall_4
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_5
    throw v0

    :catchall_5
    move-exception p0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :catch_3
    move-exception p0

    const-string v0, "SemMediaPlayer"

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return v2
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$3;->addTrack()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
