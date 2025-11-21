.class Landroid/media/tv/ad/TvAdManager$1;
.super Landroid/media/tv/ad/ITvAdClient$Stub;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager;-><init>(Landroid/media/tv/ad/ITvAdManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLayoutSurface(IIIII)V
    .locals 2

    const-string v0, "Callback not found for seq "

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez p0, :cond_0

    const-string p0, "TvAdManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestCurrentChannelUri(I)V
    .locals 3

    const-string v0, "Callback not found for seq "

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez p0, :cond_0

    const-string p0, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentChannelUri()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestCurrentTvInputId(I)V
    .locals 3

    const-string v0, "Callback not found for seq "

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez p0, :cond_0

    const-string p0, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentTvInputId()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestCurrentVideoBounds(I)V
    .locals 3

    const-string v0, "Callback not found for seq "

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez p0, :cond_0

    const-string p0, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentVideoBounds()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 2

    const-string v0, "Callback not found for seq "

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez p0, :cond_0

    const-string p0, "TvAdManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onRequestTrackInfoList(I)V
    .locals 3

    const-string v0, "Callback not found for seq "

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez p0, :cond_0

    const-string p0, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestTrackInfoList()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 10

    const-string p1, "Callback not found for "

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v0, :cond_0

    const-string p0, "TvAdManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Landroid/media/tv/ad/TvAdManager$Session;

    iget-object p1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmService(Landroid/media/tv/ad/TvAdManager;)Landroid/media/tv/ad/ITvAdManager;

    move-result-object v5

    iget-object p1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmUserId(Landroid/media/tv/ad/TvAdManager;)I

    move-result v6

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v2 .. v9}, Landroid/media/tv/ad/TvAdManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;Landroid/media/tv/ad/TvAdManager-IA;)V

    goto :goto_0

    :cond_1
    move v7, p4

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/util/SparseArray;->delete(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onSessionReleased(I)V
    .locals 3

    const-string v0, "Callback not found for seq:"

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez v2, :cond_0

    const-string p0, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;

    move-result-object p0

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/ad/TvAdManager$Session;)V

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionReleased()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    const-string v0, "Callback not found for seq "

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez p0, :cond_0

    const-string p0, "TvAdManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
