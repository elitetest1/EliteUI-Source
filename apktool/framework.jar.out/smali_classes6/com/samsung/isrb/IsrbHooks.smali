.class public Lcom/samsung/isrb/IsrbHooks;
.super Ljava/lang/Object;
.source "IsrbHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/isrb/IsrbHooks$LoggingHandler;,
        Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist ISRBSKIPSERVICE:[Ljava/lang/String;

.field static final blacklist ISRB_DETECT_TIME_MS:J = 0x15f90L

.field public static final blacklist ISRB_STEP_HANLDER:I = 0x1

.field public static final blacklist ISRB_STEP_NA:I = 0x0

.field public static final blacklist ISRB_STEP_RESCUEPARTY:I = 0x2

.field private static final blacklist PROP_ENABLE_ISRB:Ljava/lang/String; = "persist.sys.enable_isrb"

.field static final blacklist TAG:Ljava/lang/String; = "IsrbHooks"

.field private static greylist mApplicationObject:Landroid/os/IBinder; = null

.field private static volatile blacklist mCrashing:Z = false

.field public static final blacklist mIsrbTriggerCount:I = 0x5

.field private static blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/samsung/isrb/IsrbHooks;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCrashing()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/isrb/IsrbHooks;->mCrashing:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmState()I
    .locals 1

    sget v0, Lcom/samsung/isrb/IsrbHooks;->mState:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmApplicationObject(Landroid/os/IBinder;)V
    .locals 0

    sput-object p0, Lcom/samsung/isrb/IsrbHooks;->mApplicationObject:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmState(I)V
    .locals 0

    sput p0, Lcom/samsung/isrb/IsrbHooks;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/isrb/IsrbHooks;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckServiceState()Z
    .locals 1

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->checkServiceState()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetEnterIdle()Z
    .locals 1

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->getEnterIdle()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 88

    const-string v86, "com.android.server.SensitiveContentProtectionManagerService"

    const-string v87, "com.android.internal.car.CarServiceHelperService"

    const-string v1, "com.android.server.slice.SliceManagerService$Lifecycle"

    const-string v2, "com.android.server.telecom.TelecomLoaderService"

    const-string v3, "com.android.server.privilege.SemPrivilegeManagerService"

    const-string v4, "com.android.server.BluetoothService"

    const-string v5, "com.android.server.connectivity.IpConnectivityMetrics"

    const-string v6, "com.android.server.net.watchlist.NetworkWatchlistService$Lifecycle"

    const-string v7, "com.android.server.PinnerService"

    const-string v8, "com.google.android.startop.iorap.IorapForwardingService"

    const-string v9, "com.android.server.integrity.AppIntegrityManagerService"

    const-string v10, "com.android.server.appprediction.AppPredictionManagerService"

    const-string v11, "com.android.server.testharness.TestHarnessModeService"

    const-string v12, "com.android.server.contentcapture.ContentCaptureManagerService"

    const-string v13, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    const-string v14, "com.android.server.textservices.TextServicesManagerService$Lifecycle"

    const-string v15, "com.android.server.textclassifier.TextClassificationManagerService$Lifecycle"

    const-string v16, "com.android.server.DockObserver"

    const-string v17, "com.android.server.midi.MidiService$Lifecycle"

    const-string v18, "com.android.server.usb.UsbService$Lifecycle"

    const-string v19, "com.android.server.twilight.TwilightService"

    const-string v20, "com.android.server.backup.BackupManagerService$Lifecycle"

    const-string v21, "com.android.server.GestureLauncherService"

    const-string v22, "com.android.server.SensorNotificationService"

    const-string v23, "com.android.server.emergency.EmergencyAffordanceService"

    const-string v24, "com.android.server.print.PrintManagerService"

    const-string v25, "com.android.server.companion.CompanionDeviceManagerService"

    const-string v26, "com.android.server.restrictions.RestrictionsManagerService"

    const-string v27, "com.android.server.cocktailbar.CocktailBarManagerService"

    const-string v28, "com.android.server.cover.CoverManagerService"

    const-string v29, "com.android.server.media.MediaResourceMonitorService"

    const-string v30, "com.android.server.camera.CameraServiceProxy"

    const-string v31, "com.samsung.android.camera.CameraServiceWorker"

    const-string v32, "com.android.server.incident.IncidentCompanionService"

    const-string v33, "com.android.server.MmsServiceBroker"

    const-string v34, "com.android.server.autofill.AutofillManagerService"

    const-string v35, "com.android.server.clipboard.ClipboardService"

    const-string v36, "com.android.server.appbinding.AppBindingService$Lifecycle"

    const-string v37, "com.android.server.soundtrigger_middleware.SoundTriggerMiddlewareService$Lifecycle"

    const-string v38, "com.android.server.soundtrigger.SoundTriggerService"

    const-string v39, "com.android.server.blob.BlobStoreManagerService"

    const-string v40, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    const-string v41, "com.android.server.remoteappmode.RemoteAppModeService$Lifecycle"

    const-string v42, "com.samsung.android.game.GameManagerService$Lifecycle"

    const-string v43, "com.android.server.pm.pu.ProfileUtilizationService"

    const-string v44, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    const-string v45, "com.android.server.musicrecognition.MusicRecognitionManagerService"

    const-string v46, "com.samsung.android.knox.analytics.service.KnoxAnalyticsSystemService"

    const-string v47, "com.android.server.ambientcontext.AmbientContextManagerService"

    const-string v48, "com.android.server.speech.SpeechRecognitionManagerService"

    const-string v49, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    const-string v50, "com.android.server.searchui.SearchUiManagerService"

    const-string v51, "com.android.server.smartspace.SmartspaceManagerService"

    const-string v52, "com.android.server.contextualsearch.ContextualSearchManagerService"

    const-string v53, "com.android.server.pm.SpegService"

    const-string v54, "com.android.server.lowpan.LowpanService"

    const-string v55, "com.android.server.ExtendedEthernetService"

    const-string v56, "com.android.server.storage.DeviceStorageMonitorService"

    const-string v57, "com.android.server.broadcastradio.BroadcastRadioService"

    const-string v58, "com.android.server.SerialService$Lifecycle"

    const-string v59, "com.android.server.security.AttestationVerificationManagerService"

    const-string v60, "com.android.server.hdmi.HdmiControlService"

    const-string v61, "com.android.server.tv.interactive.TvInteractiveAppManagerService"

    const-string v62, "com.android.server.tv.TvInputManagerService"

    const-string v63, "com.android.server.tv.tunerresourcemanager.TunerResourceManagerService"

    const-string v64, "com.android.server.tv.TvRemoteService"

    const-string v65, "com.android.server.people.PeopleService"

    const-string v66, "com.android.server.media.metrics.MediaMetricsManagerService"

    const-string v67, "com.android.server.pm.BackgroundInstallControlService"

    const-string v68, "com.samsung.android.server.wifi.stdp.StandardPlusService"

    const-string v69, "com.android.things.server.IoTSystemService"

    const-string v70, "com.android.server.scheduling.RebootReadinessManagerService$LifeCycle"

    const-string v71, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    const-string v72, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    const-string v73, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$LifeCycle"

    const-string v74, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v75, "com.android.server.translation.TranslationManagerService"

    const-string v76, "com.android.server.tracing.TracingServiceProxy"

    const-string v77, "com.android.server.app.GameManagerService$LifeCycle"

    const-string v78, "com.samsung.android.server.uwb.SamsungUwbService"

    const-string v79, "com.android.server.compos.IsolatedCompilationService"

    const-string v80, "com.android.server.compat.overrides.AppCompatOverridesService$LifeCycle"

    const-string v81, "com.android.server.healthconnect.HealthConnectManagerService"

    const-string v82, "com.samsung.android.server.continuity.SemContinuityService"

    const-string v83, "com.samsung.android.server.contextengine.SemContextEngineService"

    const-string v84, "com.samsung.android.server.hwrs.SemHwrsService"

    const-string v85, "com.android.server.devicelock.DeviceLockService"

    filled-new-array/range {v1 .. v87}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/isrb/IsrbHooks;->ISRBSKIPSERVICE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static greylist canSkip(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canSkip:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsrbHooks"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/isrb/IsrbHooks;->ISRBSKIPSERVICE:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static greylist checkServiceState()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getCurrentProcessName()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/proc/self/cmdline"

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x100

    :try_start_1
    new-array v3, v1, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-lez v6, :cond_0

    if-ge v5, v1, :cond_0

    add-int/lit8 v7, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    move v5, v7

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    throw v0
.end method

.method private static greylist getEnterIdle()Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/isrb/IIsrbManager;->isBootCompleteState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "IsrbHooks"

    const-string v2, "RemoteException in isBootCompleteState : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static greylist init()V
    .locals 5

    const-string/jumbo v0, "persist.sys.rescue_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.enable_isrb"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "isrb_boot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "system_server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.networkstack.process"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;-><init>(Lcom/samsung/isrb/IsrbHooks-IA;)V

    new-instance v3, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;Lcom/samsung/isrb/IsrbHooks-IA;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput v2, Lcom/samsung/isrb/IsrbHooks;->mState:I

    :cond_2
    return-void
.end method

.method public static blacklist logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FATAL EXCEPTION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "Process: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "PID: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "IsrbHooks"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/samsung/isrb/IsrbHooks;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static greylist saveCrashServiceName(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "saveCrashServiceName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsrbHooks"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.isrb.crashservice"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist setFakeTime()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/isrb/IIsrbManager;->setFakeTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "IsrbHooks"

    const-string v2, "RemoteException in setFakeTime : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static greylist useDefaultSetting()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/isrb/IIsrbManager;->setIsrbEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "IsrbHooks"

    const-string v2, "RemoteException in setIsrbEnable : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
