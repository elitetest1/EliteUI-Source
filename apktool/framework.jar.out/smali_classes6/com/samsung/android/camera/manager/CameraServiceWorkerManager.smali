.class public Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;
.super Ljava/lang/Object;
.source "CameraServiceWorkerManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraServiceWorkerManager"


# instance fields
.field private blacklist binder:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p0, "CameraServiceWorkerManager"

    const-string p1, "binder is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public blacklist getMyBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->binder:Landroid/os/IBinder;

    return-object p0
.end method
