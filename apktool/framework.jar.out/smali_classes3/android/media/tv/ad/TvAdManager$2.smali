.class Landroid/media/tv/ad/TvAdManager$2;
.super Landroid/media/tv/ad/ITvAdManagerCallback$Stub;
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

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAdServiceAdded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    invoke-virtual {v1, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->postAdServiceAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onAdServiceRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    invoke-virtual {v1, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->postAdServiceRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onAdServiceUpdated(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    invoke-virtual {v1, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->postAdServiceUpdated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
