.class public Landroid/hardware/CameraLightSensorManager;
.super Ljava/lang/Object;
.source "CameraLightSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraLightSensorManager$ResponseHandler;
    }
.end annotation


# instance fields
.field private final blacklist DBG_TAG:Ljava/lang/String;

.field private final blacklist DEBUG:Z

.field private final blacklist DEBUG_HANDLER:Z

.field private final blacklist IPC_MANAGER_UPDATE_LUX:I

.field private final blacklist IPC_SERVICE_START_CAMERA:I

.field private final blacklist IPC_SERVICE_UNREGISTER_CONNECTION:I

.field private final blacklist LISTENER_TAG:Ljava/lang/String;

.field private final blacklist MSG_MANAGER_LISTENER_LOOP:I

.field private final blacklist MSG_MANAGER_UPDATE_LUX:I

.field private final blacklist MSG_SERVICE_CAMERA_LOOP:I

.field private final blacklist MSG_SERVICE_START_CAMERA:I

.field private final blacklist MSG_SERVICE_STOP_CAMERA:I

.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist listenerRegistered:S

.field private blacklist mAllowListListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCameraLightListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCameraLightSensorConnection:Landroid/content/ServiceConnection;

.field private blacklist mCameraSensor:Landroid/hardware/Sensor;

.field private blacklist mConnectionFailed:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mEnabledService:Z

.field private final blacklist mLockIPC:Ljava/lang/Object;

.field private blacklist mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private blacklist mProcessBinded:Z

.field private final blacklist mSABCLite:Ljava/lang/Boolean;

.field private blacklist mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

.field private blacklist mSystemIPC:Landroid/os/Messenger;

.field private blacklist mSystemMessenger:Landroid/os/Messenger;

.field private blacklist mkeyguard:Landroid/app/KeyguardManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlistenerRegistered(Landroid/hardware/CameraLightSensorManager;)S
    .locals 0

    iget-short p0, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraSensor(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionFailed(Landroid/hardware/CameraLightSensorManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/CameraLightSensorManager;->mConnectionFailed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/CameraLightSensorManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledService(Landroid/hardware/CameraLightSensorManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMotionManager(Landroid/hardware/CameraLightSensorManager;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessBinded(Landroid/hardware/CameraLightSensorManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemIPC(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemIPC:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemMessenger(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionFailed(Landroid/hardware/CameraLightSensorManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/CameraLightSensorManager;->mConnectionFailed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProcessBinded(Landroid/hardware/CameraLightSensorManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSystemHandler(Landroid/hardware/CameraLightSensorManager;Landroid/hardware/CameraLightSensorManager$ResponseHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSystemIPC(Landroid/hardware/CameraLightSensorManager;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemIPC:Landroid/os/Messenger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CameraLightSensor_Manager"

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/CameraLightSensorManager;->DEBUG:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->DEBUG_HANDLER:Z

    const-string v2, "Debug_Camera_Manager"

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->DBG_TAG:Ljava/lang/String;

    const-string v2, "Debug_Camera_Listener"

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->LISTENER_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_SERVICE_START_CAMERA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_MANAGER_UPDATE_LUX:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_SERVICE_UNREGISTER_CONNECTION:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_START_CAMERA:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_STOP_CAMERA:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_MANAGER_UPDATE_LUX:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_CAMERA_LOOP:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_MANAGER_LISTENER_LOOP:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SENSOR_SUPPORT_SABC_LITE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSABCLite:Ljava/lang/Boolean;

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/CameraLightSensorManager;->initAllowListListenerList()V

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mConnectionFailed:Z

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    return-void
.end method

.method private blacklist initAllowListListenerList()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSABCLite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "com.samsung.adaptivebrightnessgo"

    const-string v2, "com.android.server.display.AutomaticBrightnessController"

    const-string v3, "com.sec.android.app.camera"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.samsung.android.app.aodservice.ui.AODUiController"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.samsung.android.app.aodservice.ui.model"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.samsung.android.gesture.AdaptiveBrightnessController"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.samsung.android.gesture.PocketModeEvent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.sec.android.sdhms.thermal.overheatcontrol.OverheatSensorChecker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.sec.android.sdhms.thermal.siop.scenario.HighBrightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v0, "com.salab.act"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist initLocked(Landroid/os/Looper;)V
    .locals 6

    const-string v0, "Binding Package status= "

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const-string v2, "CameraLightSensor_Manager"

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "CameraManagerThread"

    const/16 v3, 0x13

    invoke-direct {p1, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;-><init>(Landroid/hardware/CameraLightSensorManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Using CameraManagerThread looper "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Using handler looper "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-direct {v1, p0, p1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;-><init>(Landroid/hardware/CameraLightSensorManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    :goto_0
    new-instance p1, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-direct {p1, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemMessenger:Landroid/os/Messenger;

    :cond_1
    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    if-nez p1, :cond_2

    const-string p1, "Creating new connection for service."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/hardware/CameraLightSensorManager$1;

    invoke-direct {p1, p0}, Landroid/hardware/CameraLightSensorManager$1;-><init>(Landroid/hardware/CameraLightSensorManager;)V

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    :cond_2
    iget-boolean p1, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    if-nez p1, :cond_3

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.adaptivebrightnessgo"

    const-string v4, "com.samsung.adaptivebrightnessgo.CameraLightSensorService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v1, p1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Component= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " UserHandle= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Exception while starting service."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist isAllowListedListener(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected blacklist isAvailableEvLuxTable()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->getEvToLux([F)[F

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    nop

    :array_0
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public blacklist registerCameraLightSensor(Landroid/os/Looper;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)Z
    .locals 7

    const-string v0, "lock screen, mkeyguard= "

    const-string v1, "Exit1 registerCameraLightSensor"

    const-string v2, "Entering1 registerCameraLightSensor "

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {p2}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/hardware/CameraLightSensorManager;->isAllowListedListener(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/hardware/CameraLightSensorManager;->isAvailableEvLuxTable()Z

    move-result v4

    if-nez v4, :cond_0

    const-string p0, "Debug_Camera_Manager"

    const-string p1, "There is no Ev-Lux table for this model "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return v5

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/CameraLightSensorManager;->initLocked(Landroid/os/Looper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    const-string v4, "Debug_Camera_Manager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-short p1, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-short v5, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "Debug_Camera_Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraSensor:Landroid/hardware/Sensor;

    invoke-interface {p2}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.android.server.display.AutomaticBrightnessController"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_7

    :try_start_3
    iget-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-nez p3, :cond_2

    iget-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    iput-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    :cond_2
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {p3, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p3

    if-ne p3, p1, :cond_3

    move v5, p1

    :cond_3
    iget-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-eqz p3, :cond_4

    const-string p3, "Debug_Camera_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isFaceUnlockActive= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz v5, :cond_5

    const-string p3, "CameraLightSensor_Manager"

    const-string v0, "On lock screen, FaceUnlock is true"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz p0, :cond_6

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    const-string p3, "CameraLightSensor_Manager"

    const-string v0, "On lock screen, FaceUnlock is false"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_1
    const-string p0, "CameraLightSensor_Manager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " registered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "CameraLightSensor_Manager"

    const-string p2, "Error during FaceUnlock check."

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    :cond_8
    const-string p0, "CameraLightSensor_Manager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " registered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return p1

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_9
    const-string p0, "CameraLightSensor_Manager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not in allowlisted packages of Camera Light Sensor."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string p0, "CameraLightSensor_Manager"

    const-string p1, "mCameraLightListener is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return v5

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public blacklist unRegisterCameraLightSensor(Landroid/hardware/SensorEventListener;)Z
    .locals 6

    const-string v0, "Exit2 unRegisterCameraLightSensor"

    const-string v1, "Debug_Camera_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Entering2 unRegisterCameraLightSensor"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string p0, "CameraLightSensor_Manager"

    const-string p1, "No camera light sensor listeners present"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    :cond_0
    :try_start_3
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v4, "Debug_Camera_Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v0

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_2
    const-string p0, "CameraLightSensor_Manager"

    const-string p1, "mCameraLightListener List is not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method
