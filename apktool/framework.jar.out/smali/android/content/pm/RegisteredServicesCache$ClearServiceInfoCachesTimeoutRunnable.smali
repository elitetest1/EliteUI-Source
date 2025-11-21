.class Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearServiceInfoCachesTimeoutRunnable"
.end annotation


# instance fields
.field final blacklist mUserId:I

.field final synthetic blacklist this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCache;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->mUserId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v0}, Landroid/content/pm/RegisteredServicesCache;->-$$Nest$fgetmUserIdToServiceInfoCaches(Landroid/content/pm/RegisteredServicesCache;)Landroid/util/SparseArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v1}, Landroid/content/pm/RegisteredServicesCache;->-$$Nest$fgetmUserIdToServiceInfoCaches(Landroid/content/pm/RegisteredServicesCache;)Landroid/util/SparseArrayMap;

    move-result-object v1

    iget p0, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->mUserId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArrayMap;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
