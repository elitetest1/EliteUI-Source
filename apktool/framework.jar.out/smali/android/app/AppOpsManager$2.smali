.class Landroid/app/AppOpsManager$2;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/app/AppOpsManager$AppOpModeQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/app/AppOpsManager$AppOpModeQuery;)Ljava/lang/Integer;
    .locals 6

    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    :try_start_0
    iget v1, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    iget v2, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    iget-object v3, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget v5, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/AppOpsManager$AppOpModeQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$2;->apply(Landroid/app/AppOpsManager$AppOpModeQuery;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist shouldBypassCache(Landroid/app/AppOpsManager$AppOpModeQuery;)Z
    .locals 0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/AppOpsManager$AppOpModeQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$2;->shouldBypassCache(Landroid/app/AppOpsManager$AppOpModeQuery;)Z

    move-result p0

    return p0
.end method
