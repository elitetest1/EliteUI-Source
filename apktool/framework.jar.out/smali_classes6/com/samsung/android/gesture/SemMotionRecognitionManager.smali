.class public Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.super Ljava/lang/Object;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_DOUBLE_TAP:I = 0x8

.field public static final blacklist EVENT_ELEVATOR_DETECTOR:I = 0x1000000

.field public static final blacklist EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final blacklist EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final blacklist EVENT_PANNING_GALLERY:I = 0x20

.field public static final blacklist EVENT_PANNING_HOME:I = 0x40

.field public static final blacklist EVENT_POCKET_FOR_BIXBY:I = 0x2000000

.field public static final blacklist EVENT_POCKET_MODE:I = 0x800000

.field public static final blacklist EVENT_SHAKE:I = 0x2

.field public static final blacklist EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final blacklist EVENT_SMART_SCROLL:I = 0x80000

.field public static final blacklist EVENT_TILT:I = 0x10

.field public static final blacklist EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final blacklist EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final blacklist EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final blacklist EVENT_VOLUME_DOWN:I = 0x200

.field public static final blacklist MOTION_ALL:I = 0x120405

.field public static final blacklist MOTION_CALL_POSE:I = 0x40000

.field public static final whitelist MOTION_DIRECT_CALLING:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MOTION_FLAT:I = 0x2000

.field public static final blacklist MOTION_NUM:I = 0x19

.field public static final whitelist MOTION_OVERTURN:I = 0x1

.field public static final whitelist MOTION_OVERTURN_LOW_POWER:I = 0x20000

.field public static final whitelist MOTION_PALM_SWIPE:I = 0x400000

.field public static final whitelist MOTION_PALM_TOUCH:I = 0x200000

.field public static final blacklist MOTION_SCREEN_UP_STEADY:I = 0x10000

.field public static final blacklist MOTION_SENSOR_NUM:I = 0x5

.field public static final whitelist MOTION_SMART_ALERT:I = 0x4

.field public static final whitelist MOTION_SMART_RELAY:I = 0x100000

.field public static final blacklist MOTION_USE_ACC:I = 0x1

.field public static final blacklist MOTION_USE_ALL:I = 0xf

.field public static final blacklist MOTION_USE_ALWAYS:I = 0x40000000

.field public static final blacklist MOTION_USE_FOLDING_STATE:I = 0x10

.field public static final blacklist MOTION_USE_GYRO:I = 0x2

.field public static final blacklist MOTION_USE_LIGHT:I = 0x8

.field public static final blacklist MOTION_USE_PROX:I = 0x4

.field protected static final blacklist TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final blacklist mMotionVersion:I = 0x1


# instance fields
.field private blacklist mHasSensorHub:Z

.field private final blacklist mMainLooper:Landroid/os/Looper;

.field private blacklist mMovementCnt:I

.field private final blacklist mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private blacklist motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

.field private final blacklist mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private final blacklist sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainLooper(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmotionService(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Lcom/samsung/android/gesture/IMotionRecognitionService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const-string/jumbo v0, "motion_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "motionService = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionRecognitionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mHasSensorHub:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "RemoteException in getSSPstatus: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static blacklist getMotionVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isValidMotionSensor(I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MotionRecognitionManager"

    const-string v0, "RemoteException in getEvLuxTableInfo: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getEvToLux([F)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getEvToLux([F)[F

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MotionRecognitionManager"

    const-string v1, "RemoteException in getSSPstatus: "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public whitelist isAvailable(I)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x400

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x200000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x400000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x800000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x1000000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x2000000

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->isAvailable(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "MotionRecognitionManager"

    const-string v1, "RemoteException in getSSPstatus: "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public whitelist registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V

    return-void
.end method

.method public whitelist registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v3

    if-ne v3, p1, :cond_1

    const-string p2, "MotionRecognitionManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", name :"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V

    iget-object p4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    :try_start_1
    iget-object p4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {p4, v2, p2, p3}, Lcom/samsung/android/gesture/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string p4, "MotionRecognitionManager"

    const-string v2, "RemoteException in registerListener : "

    invoke-static {p4, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    const-string p2, "MotionRecognitionManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .registerListener : success. listener count = "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", motion_events="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", name :"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public whitelist registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V

    return-void
.end method

.method public blacklist resetMotionEngine()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->resetMotionEngine()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "MotionRecognitionManager"

    const-string v1, "RemoteException in resetMotionEngine: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 0

    return-void
.end method

.method public blacklist setMotionTiltLevel(IIIIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "MotionRecognitionManager"

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface/range {p0 .. p6}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p0, "  .setMotionTiltLevel : 1"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setSmartMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_1

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {p0, v3, p2}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "MotionRecognitionManager"

    const-string p2, "RemoteException in setSmartMotionAngle: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    :goto_2
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "MotionRecognitionManager"

    const-string p1, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist setTestSensor()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setTestSensor()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "MotionRecognitionManager"

    const-string v0, "RemoteException in setTestSensor"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist startAdaptiveBrightness()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->startAdaptiveBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "MotionRecognitionManager"

    const-string v0, "RemoteException in startAdaptiveBrightness"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist stopAdaptiveBrightness()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->stopAdaptiveBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "MotionRecognitionManager"

    const-string v0, "RemoteException in stopAdaptiveBrightness"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/gesture/SemMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@ member "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v2, v3}, Lcom/samsung/android/gesture/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "MotionRecognitionManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->resetListener()V

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : / listener count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", name :"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v1

    not-int p2, p2

    and-int v2, v1, p2

    const-string p2, "MotionRecognitionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update listener "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = name :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",  motionevents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist useMotionAlways(Lcom/samsung/android/gesture/SemMotionEventListener;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
