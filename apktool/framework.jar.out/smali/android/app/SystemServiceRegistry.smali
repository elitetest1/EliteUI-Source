.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
    }
.end annotation


# static fields
.field static final blacklist NULL_GAME_MANAGER_IN_WEAR:J = 0x14522cc9L

.field private static final blacklist SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field public static blacklist sEnableServiceNotFoundWtf:Z = false

.field private static volatile blacklist sInitializing:Z

.field private static blacklist sServiceCacheSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsServiceCacheSize()I
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceCacheSize(I)V
    .locals 0

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    const-string v0, "SystemServiceRegistry"

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v4, "accessibility"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/view/accessibility/CaptioningManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v4, "captioning"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/accounts/AccountManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v4, "account"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v4, "activity"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/app/ActivityTaskManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v4, "activity_task"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/app/UriGrantsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v4, "uri_grants"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/app/AlarmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v4, "alarm"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/media/AudioManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v4, "audio"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/media/AudioDeviceVolumeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string v4, "audio_device_volume"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/media/MediaRouter;

    new-instance v3, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string/jumbo v4, "media_router"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/os/CustomFrequencyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string v4, "CustomFrequencyManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    new-instance v3, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string v4, "iccc"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v4, "display_aiqe"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string v4, "hdmi_control"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v4, "textclassification"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/graphics/fonts/FontManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string v4, "font"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/content/ClipboardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string v4, "clipboard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/text/ClipboardManager;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string/jumbo v3, "semclipboard"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/net/PacProxyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string/jumbo v3, "pac_proxy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/IBinder;

    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string/jumbo v3, "netd"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/net/TetheringManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string/jumbo v3, "tethering"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/net/VpnManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string/jumbo v3, "vpn_management"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/location/CountryDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string v3, "country_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string v3, "device_policy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v3, "download"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/SemHqmManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string v3, "HqmManagerService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Landroid/os/SemHcmManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string v3, "HcmManagerService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_0
    const-class v1, Landroid/os/BatteryManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string v3, "batterymanager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/DropBoxManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string v3, "dropbox"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/transparency/BinaryTransparencyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string/jumbo v3, "transparency"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/input/InputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string v3, "input"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string v3, "display"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string v3, "color_display"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string v3, "input_method"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/textservice/TextServicesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string/jumbo v3, "textservices"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/KeyguardManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string v3, "keyguard"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string v3, "layout_inflater"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/location/LocationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string v3, "location"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/location/SemLocationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v3, "sec_location"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/net/NetworkPolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v3, "netpolicy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v3, "notification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/people/PeopleManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string/jumbo v3, "people"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/PowerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v3, "power"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/epic/EpicManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string v3, "epic"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/PerformanceHintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string/jumbo v3, "performance_hint"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/RecoverySystem;

    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v3, "recovery"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/SearchManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/SecurityStateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v3, "security_state"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/SensorManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v3, "sensor"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string/jumbo v3, "sensor_privacy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/StatusBarManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v3, "statusbar"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/SemStatusBarManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string/jumbo v3, "sem_statusbar"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/edge/SemEdgeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string v3, "edge"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/storage/StorageManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string/jumbo v3, "storage"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/usage/StorageStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v3, "storagestats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/SystemUpdateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v3, "system_update"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/SystemConfigManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string/jumbo v3, "system_config"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v3, "telephony_registry"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/telecom/TelecomManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v3, "telecom"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->hasSamsungTelecomSystemFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/samsung/android/telecom/SemTelecomManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v3, "samsung_telecom"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_1
    const-class v1, Landroid/telephony/MmsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string/jumbo v3, "mms"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/UiModeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v3, "uimode"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/usb/UsbManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string/jumbo v3, "usb"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/debug/AdbManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string v3, "adb"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/SerialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string/jumbo v3, "serial"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/VibratorManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string/jumbo v3, "vibrator_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/Vibrator;

    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v3, "vibrator"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/WallpaperManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string/jumbo v3, "wallpaper"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string/jumbo v3, "wifinl80211"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/powerSolution/powerSolutionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string v3, "PowerSolution_Framework_service"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string v3, "CameraServiceWorker_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string/jumbo v3, "window"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/UserManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string/jumbo v3, "user"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/AppOpsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string v3, "appops"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/camera2/CameraManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string v3, "camera"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/content/pm/LauncherApps;

    new-instance v2, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string v3, "launcherapps"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/content/RestrictionsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string/jumbo v3, "restrictions"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/print/PrintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string/jumbo v3, "print"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/companion/CompanionDeviceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string v3, "companiondevice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/appfunctions/flags/Flags;->enableAppFunctionManager()Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Landroid/app/appfunctions/AppFunctionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string v3, "app_function"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_2
    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string/jumbo v3, "virtualdevice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/ConsumerIrManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string v3, "consumer_ir"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/trust/TrustManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v3, "trust"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string v3, "fingerprint"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/face/FaceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string v3, "face"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/iris/IrisManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string v3, "iris"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string v3, "biometric"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string v3, "authentication_policy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v3, "tv_interactive_app"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/tv/ad/TvAdManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string/jumbo v3, "tv_ad"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/tv/TvInputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string/jumbo v3, "tv_input"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string/jumbo v3, "tv_tuner_resource_mgr"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/net/NetworkScoreManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string/jumbo v3, "network_score"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/usage/UsageStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string/jumbo v3, "usagestats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string/jumbo v3, "persistent_data_block"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/service/oemlock/OemLockManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string/jumbo v3, "oem_lock"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string/jumbo v3, "media_projection"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string v3, "appwidget"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/midi/MidiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string/jumbo v3, "midi"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/radio/RadioManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string v3, "broadcastradio"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/HardwarePropertiesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string v3, "hardware_properties"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string/jumbo v3, "soundtrigger"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/content/pm/ShortcutManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string/jumbo v3, "shortcut"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/content/om/OverlayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string/jumbo v3, "overlay"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/net/NetworkWatchlistManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string/jumbo v3, "network_watchlist"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/health/SystemHealthManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string/jumbo v3, "systemhealth"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/location/ContextHubManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string v3, "contexthub"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/IncidentManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string v3, "incident"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/BugreportManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string v3, "bugreport"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/autofill/AutofillManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string v3, "autofill"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/credentials/CredentialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string v3, "credential"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string/jumbo v3, "music_recognition"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string v3, "content_capture"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/translation/TranslationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v3, "translation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/translation/UiTranslationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$116;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$116;-><init>()V

    const-string/jumbo v3, "ui_translation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/search/SearchUiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string/jumbo v3, "search_ui"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/smartspace/SmartspaceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string/jumbo v3, "smartspace"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/contextualsearch/ContextualSearchManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string v3, "contextual_search"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/prediction/AppPredictionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string v3, "app_prediction"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string v3, "content_suggestions"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string/jumbo v3, "wallpaper_effects_generation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/VrManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string/jumbo v3, "vrmanager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/content/pm/CrossProfileApps;

    new-instance v2, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string v3, "crossprofileapps"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/slice/SliceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string/jumbo v3, "slice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const-class v1, Lcom/samsung/android/continuity/SemContinuityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string v3, "SemContinuityService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_3
    const-class v1, Lcom/samsung/android/contextengine/SemContextEngineManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    const-string v3, "SemContextEngineService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :try_start_0
    const-string v1, "SemHwrsService"

    const-class v2, Lcom/samsung/android/hwrs/SemHwrsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemHwrsManager registerService failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-class v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string/jumbo v3, "motion_recognition"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/scontext/SContextManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string/jumbo v3, "scontext"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    const-class v1, Lcom/samsung/android/media/fmradio/SemFmPlayer;

    new-instance v2, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string v3, "FMPlayer"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_4
    const-class v1, Lcom/samsung/android/multicontrol/SemMultiControlManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string/jumbo v3, "multicontrol"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string/jumbo v3, "remoteappmode"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isSuitable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Lcom/samsung/android/provider/DynamicFeatureManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$134;-><init>()V

    const-string v3, "dynamic_feature"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_5
    const-class v1, Landroid/app/timedetector/TimeDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$135;-><init>()V

    const-string/jumbo v3, "time_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$136;-><init>()V

    const-string/jumbo v3, "time_zone_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/time/TimeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$137;-><init>()V

    const-string/jumbo v3, "time_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/permission/PermissionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$138;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$138;-><init>()V

    const-string/jumbo v3, "permission"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/permission/LegacyPermissionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$139;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$139;-><init>()V

    const-string v3, "legacy_permission"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/permission/PermissionControllerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$140;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$140;-><init>()V

    const-string/jumbo v3, "permission_controller"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/permission/PermissionCheckerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$141;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$141;-><init>()V

    const-string/jumbo v3, "permission_checker"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/PermissionEnforcer;

    new-instance v2, Landroid/app/SystemServiceRegistry$142;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$142;-><init>()V

    const-string/jumbo v3, "permission_enforcer"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/image/DynamicSystemManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$143;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$143;-><init>()V

    const-string v3, "dynamic_system"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/BatteryStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$144;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$144;-><init>()V

    const-string v3, "batterystats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/content/pm/DataLoaderManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$145;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$145;-><init>()V

    const-string v3, "dataloader_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/lights/LightsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$146;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$146;-><init>()V

    const-string v3, "lights"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/LocaleManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$147;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$147;-><init>()V

    const-string v3, "locale"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/os/incremental/IncrementalManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$148;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$148;-><init>()V

    const-string v3, "incremental"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/security/FileIntegrityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$149;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$149;-><init>()V

    const-string v3, "file_integrity"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$150;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$150;-><init>()V

    const-string v3, "attestation_verification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/apphibernation/AppHibernationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$151;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$151;-><init>()V

    const-string v3, "app_hibernation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/DreamManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$152;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$152;-><init>()V

    const-string v3, "dream"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$153;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$153;-><init>()V

    const-string v3, "device_state"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$154;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$154;-><init>()V

    const-string v3, "CocktailBarService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/media/metrics/MediaMetricsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$155;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$155;-><init>()V

    const-string/jumbo v3, "media_metrics"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/app/GameManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$156;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$156;-><init>()V

    const-string v3, "game"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$157;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$157;-><init>()V

    const-string v3, "domain_verification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Landroid/view/displayhash/DisplayHashManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$158;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$158;-><init>()V

    const-string v3, "display_hash"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Not starting ExynosDisplaySolutionService"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    const-class v2, Landroid/hardware/display/ExynosDisplaySolutionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$159;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$159;-><init>()V

    const-string v4, "exynos_display"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_6
    const-class v2, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$160;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$160;-><init>()V

    const-string v4, "ambient_context"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/app/wearable/WearableSensingManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$161;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$161;-><init>()V

    const-string/jumbo v4, "wearable_sensing"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/app/GrammaticalInflectionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$162;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$162;-><init>()V

    const-string v4, "grammatical_inflection"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/hardware/display/SemMdnieManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$163;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$163;-><init>()V

    const-string v4, "mDNIe"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$164;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$164;-><init>()V

    const-string v4, "DisplaySolution"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$165;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$165;-><init>()V

    const-string/jumbo v4, "persona"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$166;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$166;-><init>()V

    const-string/jumbo v4, "rcp"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/isrb/IsrbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$167;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$167;-><init>()V

    const-string v4, "isrb"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$168;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$168;-><init>()V

    const-string/jumbo v4, "shared_connectivity"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/knox/mtd/KMTDManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$169;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$169;-><init>()V

    const-string v4, "knox.mtd"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/security/keystore/KeyStoreManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$170;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$170;-><init>()V

    const-string v4, "keystore"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/provider/E2eeContactKeysManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$171;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$171;-><init>()V

    const-string v4, "contact_keys"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/app/supervision/SupervisionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$172;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$172;-><init>()V

    const-string/jumbo v4, "supervision"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aapmApi()Z

    move-result v2

    if-eqz v2, :cond_7

    const-class v2, Landroid/security/advancedprotection/AdvancedProtectionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$173;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$173;-><init>()V

    const-string v4, "advanced_protection"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_7
    invoke-static {}, Landroid/app/Flags;->bicClient()Z

    move-result v2

    if-eqz v2, :cond_8

    const-class v2, Landroid/app/BackgroundInstallControlManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$174;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$174;-><init>()V

    const-string v4, "background_install_control"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_8
    const-class v2, Landroid/media/quality/MediaQualityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$175;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$175;-><init>()V

    const-string/jumbo v4, "media_quality"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Landroid/security/intrusiondetection/IntrusionDetectionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$176;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$176;-><init>()V

    const-string v4, "intrusion_detection"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/mocca/SemMdContextManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$177;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$177;-><init>()V

    const-string/jumbo v4, "mocca"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$178;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$178;-><init>()V

    const-string v4, "SemInputDeviceManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$179;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$179;-><init>()V

    const-string/jumbo v4, "sem_wifi"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$180;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$180;-><init>()V

    const-string/jumbo v4, "sem_wifi_p2p"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$181;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$181;-><init>()V

    const-string/jumbo v4, "sem_wifi_aware"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v2, Lcom/samsung/android/wifi/stdp/StandardPlusManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$182;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$182;-><init>()V

    const-string/jumbo v4, "stdp_service"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SemDisplayQualityFeature.ENABLED:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",PLATFORM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    if-eqz v0, :cond_9

    const-class v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$183;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$183;-><init>()V

    const-string v3, "DisplayQuality"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_9
    const-class v0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;

    new-instance v2, Landroid/app/SystemServiceRegistry$184;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$184;-><init>()V

    const-string v3, "SemVideoTranscodingService"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_a

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$186;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$186;-><init>()V

    const-string/jumbo v3, "sepunion"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_a
    const-class v0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;

    new-instance v2, Landroid/app/SystemServiceRegistry$187;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$187;-><init>()V

    const-string v3, "CodecSolution"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Lcom/samsung/android/net/ExtendedEthernetManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$188;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$188;-><init>()V

    const-string v3, "extendedethernetservice"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$189;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$189;-><init>()V

    const-string/jumbo v3, "spengestureservice"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Lcom/samsung/android/ssdid/SemSsdidManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$190;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$190;-><init>()V

    const-string/jumbo v3, "sem_ssdid"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    :try_start_2
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/nfc/NfcFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Landroid/health/connect/HealthServicesInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/devicelock/DeviceLockFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/system/virtualmachine/VirtualizationFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerBaklava;->registerServiceWrappers()V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->newStoragePublicApi()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/flagging/ConfigInfrastructureFrameworkInitializer;->registerServiceWrappers()V

    :cond_b
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->telecomMainlineBlockedNumbersManager()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/provider/ProviderFrameworkInitializer;->registerServiceWrappers()V

    :cond_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/app/ecm/EnhancedConfirmationFrameworkInitializer;->registerServiceWrappers()V

    :cond_d
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/ProfilingFrameworkInitializer;->registerServiceWrappers()V

    :cond_e
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/webkit/WebViewBootstrapFrameworkInitializer;->registerServiceWrappers()V

    :cond_f
    invoke-static {}, Lcom/samsung/android/lifeguard/LifeGuardManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Lcom/samsung/android/shell/ShellFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/ranging/RangingFrameworkInitializer;->registerServiceWrappers()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    return-void

    :catchall_0
    move-exception v0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    throw v0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createServiceCache()[Ljava/lang/Object;
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist ensureInitializing(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const-string v1, "Internal error: %s can only be called during class initialization."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v0

    sget-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v2, :cond_d

    if-nez v0, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "vcn_management"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "textservices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "content_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "virtualdevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "contexthub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "virtualization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "app_prediction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "ethernet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "appwidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    :goto_0
    const-string v0, "android.hardware.type.watch"

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "android.hardware.telephony.subscription"

    invoke-static {p0, v0}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    return-object v1

    :pswitch_1
    invoke-static {}, Landroid/server/Flags;->removeTextService()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {p0, v0}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v1

    :pswitch_2
    invoke-static {p0, v0}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    :pswitch_3
    return-object v1

    :pswitch_4
    const-string v0, "android.software.app_widgets"

    invoke-static {p0, v0}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    return-object v1

    :cond_c
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Manager wrapper not available: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemServiceRegistry"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_d
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x69cd085b -> :sswitch_a
        -0x5499b029 -> :sswitch_9
        -0x36059a58 -> :sswitch_8
        -0x2dd60a93 -> :sswitch_7
        0x35db2f9 -> :sswitch_6
        0x1051cce6 -> :sswitch_5
        0x38858921 -> :sswitch_4
        0x3a1b1980 -> :sswitch_3
        0x3e5dd88b -> :sswitch_2
        0x40b177da -> :sswitch_1
        0x7cd04fe1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static blacklist getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown manager requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SystemServiceRegistry"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method public static blacklist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown manager requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SystemServiceRegistry"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static blacklist getSystemServiceWithNoContext(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p0}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->supportsFetchWithoutContext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manager cannot be fetched without a context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "SystemServiceRegistry"

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$194;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$194;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$195;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$195;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method public static blacklist registerForeverStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$192;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$192;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method private static blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$191;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$191;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$193;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$193;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method
