.class public Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;
.super Ljava/lang/Object;
.source "SamsungTelecomServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist SERVICE_ACTION:Ljava/lang/String; = "com.samsung.android.telecom.ISamsungTelecomService"

.field private static final blacklist SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final blacklist TAG:Ljava/lang/String; = "SamsungTelecomServiceConnection"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.telecom"

    const-string v2, "com.samsung.server.telecom.SamsungTelecomService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist hasSamsungTelecomSystemFeature()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->hasSamsungTelecomSystemFeature()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist connectToSamsungTelecom()V
    .locals 7

    const-string v0, "connectToSamsungTelecom - Attempting to bind to : "

    invoke-direct {p0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->hasSamsungTelecomSystemFeature()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;

    :cond_1
    new-instance v2, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;-><init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;Lcom/samsung/android/telecom/SamsungTelecomServiceConnection-IA;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.telecom.ISamsungTelecomService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "SamsungTelecomServiceConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v5, 0x4000041

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SamsungTelecomServiceConnection"

    const-string v3, "connectToSamsungTelecom - Succeeded to connect"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->mTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;

    goto :goto_0

    :cond_2
    const-string p0, "SamsungTelecomServiceConnection"

    const-string v0, "connectToSamsungTelecom - Failed to connect"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
