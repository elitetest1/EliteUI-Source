.class public Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.super Ljava/lang/Object;
.source "ImsUceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_UCE_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

.field public static final blacklist ACTION_UCE_SERVICE_UP:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_UP"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ImsUceManager"

.field private static final blacklist UCE_SERVICE:Ljava/lang/String; = "uce"

.field public static final blacklist UCE_SERVICE_STATUS_CLOSED:I = 0x2

.field public static final blacklist UCE_SERVICE_STATUS_FAILURE:I = 0x0

.field public static final blacklist UCE_SERVICE_STATUS_ON:I = 0x1

.field public static final blacklist UCE_SERVICE_STATUS_READY:I = 0x3

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

.field private blacklist mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUceService(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager-IA;)V

    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->createUceService(Z)V

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    .locals 2

    sget-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    :cond_0
    sget-object p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getUceServiceName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uce"

    return-object p0
.end method


# virtual methods
.method public blacklist createUceService(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-static {p1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-void
.end method

.method public blacklist getUceServiceInstance()Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object p0
.end method
