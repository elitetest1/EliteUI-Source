.class public Landroid/permission/PermissionCheckerManager;
.super Ljava/lang/Object;
.source "PermissionCheckerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionCheckerManager$PermissionResult;
    }
.end annotation


# static fields
.field public static final blacklist PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_HARD_DENIED:I = 0x2

.field public static final blacklist PERMISSION_SOFT_DENIED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mService:Landroid/permission/IPermissionChecker;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "permission_checker"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionChecker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionChecker;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/permission/PermissionCheckerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public blacklist checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    invoke-interface/range {p0 .. p5}, Landroid/permission/IPermissionChecker;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x2

    return p0
.end method

.method public blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v8, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    if-eqz p6, :cond_1

    iget-object v4, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v4, :cond_3

    iget-object v4, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v4, v4

    if-lez v4, :cond_3

    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget-object v4, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/content/AttributionSourceState;->pid:I

    iget-object v2, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v0, p1, v4, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v8

    :cond_1
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget v4, p2, Landroid/content/AttributionSourceState;->pid:I

    iget v2, p2, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v0, p1, v4, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    return v8

    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionChecker;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v8
.end method

.method public blacklist finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    invoke-interface {p0, p1, p2, p3}, Landroid/permission/IPermissionChecker;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
