.class public final Lcom/android/server/SatsService;
.super Lcom/samsung/android/service/sats/ISatsService$Stub;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SatsService$EngModesCmdHelper;,
        Lcom/android/server/SatsService$AtCmdHandler;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_EM_AT_ACTIVATION_REQUEST:Ljava/lang/String; = "com.sec.atd.em_at_activation_request"

.field private static final blacklist ACTION_EM_AT_REQUEST_RECONNECT:Ljava/lang/String; = "com.sec.atd.em_at_request_reconnect"

.field private static final blacklist ACTION_FACM_REQUEST_FTCLIENT_START:Ljava/lang/String; = "com.sec.factory.entry.REQUEST_FTCLIENT_START"

.field private static final blacklist ACTION_HMT_REQUEST_RECONNECT:Ljava/lang/String; = "com.sec.hmt.request_reconnect"

.field private static final blacklist CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final blacklist CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final blacklist JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field public static final blacklist SATS_EXCEPTION_ERROR:I = -0x7

.field public static final blacklist SATS_FLAG_NOT_EXISTS:I = -0x2

.field public static final blacklist SATS_NO_ERROR:I = 0x0

.field public static final blacklist SATS_RETURN_INVALID_ARGUMENTS:I = -0x5

.field public static final blacklist SATS_RETURN_NATIVE_ERROR:I = -0x1

.field public static final blacklist SATS_RETURN_PERMISSION_DENIED:I = -0x4

.field public static final blacklist SATS_SERVICE_NOT_AVAILABLE:I = -0x6

.field public static final blacklist SATS_SERVICE_NOT_SUPPORTED:I = 0x0

.field public static final blacklist SATS_SERVICE_SUPPORTED:I = 0x1

.field public static final blacklist SATS_STRING_NOT_EXISTS:I = -0x3

.field private static final blacklist TAG:Ljava/lang/String; = "SatsService"

.field private static blacklist mContext:Landroid/content/Context;

.field private static final blacklist mLockUEvent:Ljava/lang/Object;


# instance fields
.field private blacklist cmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDrkAtCommander:Lcom/android/server/IWorkOnAt;

.field private blacklist mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

.field private blacklist mErrorCode:I

.field private blacklist mHermesAtCommander:Lcom/android/server/IWorkOnAt;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mThreadUart:Ljava/lang/Thread;

.field private blacklist mThreadUartGoWait:Z

.field private blacklist mThreadUsb:Ljava/lang/Thread;

.field private final blacklist mUEventObserver:Landroid/os/UEventObserver;

.field private blacklist serviceInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/IWorkOnAt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcmdList(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmCmdHelper(Lcom/android/server/SatsService;)Lcom/android/server/SatsService$EngModesCmdHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThreadUartGoWait(Lcom/android/server/SatsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetserviceInterfaces(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmLockUEvent()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/service/sats/ISatsService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    iput-object v1, p0, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    iput-object v1, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    new-instance v1, Lcom/android/server/SatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SatsService$1;-><init>(Lcom/android/server/SatsService;)V

    iput-object v1, p0, Lcom/android/server/SatsService;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v2, Lcom/android/server/SatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SatsService$2;-><init>(Lcom/android/server/SatsService;)V

    iput-object v2, p0, Lcom/android/server/SatsService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/SatsService;->mErrorCode:I

    invoke-static {p1}, Lcom/android/server/SatsService;->setContext(Landroid/content/Context;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/AuthUnlockATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/AuthUnlockATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+FRPUNLCK"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/HdcptestATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/HdcptestATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+HDCPTEST"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/SamsungAttestationATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/SamsungAttestationATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+DEVROOTK"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/HermesATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/HermesATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+ISOSECHW"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/QRNGATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/QRNGATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+QRNGTEST"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/AutoBlockATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/AutoBlockATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+ABSTACHK"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/UserDeviceATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/UserDeviceATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+URDEVICE"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/SatsService$EngModesCmdHelper;

    invoke-direct {v3, p0}, Lcom/android/server/SatsService$EngModesCmdHelper;-><init>(Lcom/android/server/SatsService;)V

    iput-object v3, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+ENGMODES"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/CassATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/android/server/CassATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+MGRTCASS"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v3, p0, v2}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v2, "SATServiceAt"

    invoke-direct {p1, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v0, "SATServiceData"

    invoke-direct {p1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "SWITCH_NAME"

    invoke-virtual {v1, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SatsService;->registerForBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p0, ".engmodejni.samsung"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerForBroadcasts()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.atd.em_at_request_reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.atd.em_at_activation_request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.hmt.request_reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.factory.entry.REQUEST_FTCLIENT_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/SatsService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public native blacklist commandForESS(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method public blacklist executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "AT+"

    const-string v1, "\r\n\r\nOK\r\n"

    const-string v2, "="

    const-string v3, "\r\n"

    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "SatsService"

    if-nez v4, :cond_0

    const-string p0, "It is only supported on eng binary."

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, ""

    sget-object v8, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, v4, :cond_1

    iget-object v7, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_2
    const-string/jumbo v4, "system"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x3e8

    if-eq v6, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/server/SamsungAttestationATCmd;

    sget-object v6, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/server/SamsungAttestationATCmd;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    :cond_4
    iget-object v4, p0, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/server/HermesATCmd;

    sget-object v6, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/server/HermesATCmd;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-interface {v8}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ":"

    const-string v8, "+"

    if-eqz v4, :cond_6

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-interface {v0}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid command : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NG (INVALID PARAM)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_1
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denied : Name = ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], UID = ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NG (Permission Denied)"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to excute Pseudo DRK AT command : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "NG (Exception OCCURS)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
