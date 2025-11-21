.class Landroid/widget/Chronometer$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "Chronometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Chronometer;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Chronometer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Chronometer;Landroid/widget/Chronometer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Chronometer$RefreshProgressRunnable;-><init>(Landroid/widget/Chronometer;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    iget-object v0, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v1}, Landroid/widget/Chronometer;->-$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v4}, Landroid/widget/Chronometer;->-$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Chronometer$RefreshData;

    iget-object v5, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    iget v6, v4, Landroid/widget/Chronometer$RefreshData;->id:I

    iget v7, v4, Landroid/widget/Chronometer$RefreshData;->progress:I

    iget-boolean v8, v4, Landroid/widget/Chronometer$RefreshData;->animate:Z

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v9, v8}, Landroid/widget/Chronometer;->-$$Nest$mdoRefreshProgress(Landroid/widget/Chronometer;IIZZ)V

    invoke-virtual {v4}, Landroid/widget/Chronometer$RefreshData;->recycle()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v1}, Landroid/widget/Chronometer;->-$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-static {p0, v2}, Landroid/widget/Chronometer;->-$$Nest$fputmRefreshIsPosted(Landroid/widget/Chronometer;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
