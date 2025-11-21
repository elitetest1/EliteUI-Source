.class Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;
.super Ljava/lang/Object;
.source "DsmsInfoCache.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {p2}, Lcom/samsung/android/dsms/aidl/IDsmsInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fputmIDsmsInfoService(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;Lcom/samsung/android/dsms/aidl/IDsmsInfoService;)V

    iget-object p0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {p0}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fputmIDsmsInfoService(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;Lcom/samsung/android/dsms/aidl/IDsmsInfoService;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
