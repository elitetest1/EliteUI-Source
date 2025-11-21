.class public Lcom/samsung/android/hardware/display/SemColorDisplayManager;
.super Ljava/lang/Object;
.source "SemColorDisplayManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemColorDisplayManager"

.field private static blacklist sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;


# instance fields
.field private final blacklist mColorDisplayManager:Landroid/hardware/display/IColorDisplayManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "color_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IColorDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->mColorDisplayManager:Landroid/hardware/display/IColorDisplayManager;

    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/samsung/android/hardware/display/SemColorDisplayManager;
    .locals 2

    const-class v0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    invoke-direct {v1}, Lcom/samsung/android/hardware/display/SemColorDisplayManager;-><init>()V

    sput-object v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist setSaturationLevel(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->mColorDisplayManager:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {p0, p1}, Landroid/hardware/display/IColorDisplayManager;->setSaturationLevel(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setSaturationLevel failed."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Saturation level must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
