.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$WeakDisplayCache;,
        Landroid/hardware/display/DisplayManager$DisplayListener;,
        Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;,
        Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;,
        Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;,
        Landroid/hardware/display/DisplayManager$DeviceConfig;,
        Landroid/hardware/display/DisplayManager$PrivateEventType;,
        Landroid/hardware/display/DisplayManager$EventType;,
        Landroid/hardware/display/DisplayManager$SwitchingType;,
        Landroid/hardware/display/DisplayManager$MatchContentFrameRateType;,
        Landroid/hardware/display/DisplayManager$VirtualDisplayFlag;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ROTATION_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.ROTATION_CHANGED"

.field public static final greylist-max-r ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field static final greylist-max-o DEBUG:Z

.field public static final blacklist DISPLAY_CATEGORY_ALL_INCLUDING_BUILT_IN:Ljava/lang/String; = "android.hardware.display.category.ALL_INCLUDING_BUILT_IN"

.field public static final blacklist DISPLAY_CATEGORY_ALL_INCLUDING_DISABLED:Ljava/lang/String; = "android.hardware.display.category.ALL_INCLUDING_DISABLED"

.field public static final blacklist DISPLAY_CATEGORY_BACKGROUND_DISPLAY:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BACKGROUND_DISPLAY"

.field public static final blacklist DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field public static final blacklist DISPLAY_CATEGORY_BUILT_IN_DISPLAYS:Ljava/lang/String; = "android.hardware.display.category.BUILT_IN_DISPLAYS"

.field public static final blacklist DISPLAY_CATEGORY_CARLIFE_DISPLAY:Ljava/lang/String; = "com.samsung.android.hardware.display.category.CARLIFE_DISPLAY"

.field public static final blacklist DISPLAY_CATEGORY_DESKTOP:Ljava/lang/String; = "com.samsung.android.hardware.display.category.DESKTOP"

.field public static final blacklist DISPLAY_CATEGORY_HIDDEN_SPACE_DISPLAY:Ljava/lang/String; = "com.samsung.android.hardware.display.category.HIDDEN_SPACE_DISPLAY"

.field public static final whitelist DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final blacklist DISPLAY_CATEGORY_REAR:Ljava/lang/String; = "android.hardware.display.category.REAR"

.field public static final blacklist DISPLAY_CATEGORY_REMOTE_APP_DISPLAY:Ljava/lang/String; = "com.samsung.android.hardware.display.category.REMOTE_APP_DISPLAY"

.field public static final blacklist DISPLAY_CATEGORY_VIEW_COVER_DISPLAY:Ljava/lang/String; = "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

.field private static final blacklist ENABLE_VIRTUAL_DISPLAY_REFRESH_RATE:Z = true

.field public static final whitelist EVENT_TYPE_DISPLAY_ADDED:J = 0x1L

.field public static final whitelist EVENT_TYPE_DISPLAY_CHANGED:J = 0x4L

.field public static final whitelist EVENT_TYPE_DISPLAY_REFRESH_RATE:J = 0x8L

.field public static final whitelist EVENT_TYPE_DISPLAY_REMOVED:J = 0x2L

.field public static final whitelist EVENT_TYPE_DISPLAY_STATE:J = 0x10L

.field public static final blacklist EXTERNAL_DESKTOP_DISPLAY_MIN_HEIGHT:I = 0x384

.field public static final blacklist EXTERNAL_DESKTOP_DISPLAY_MIN_WIDTH:I = 0x640

.field public static final greylist-max-r EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final blacklist HDR_OUTPUT_CONTROL_FLAG:Ljava/lang/String; = "enable_hdr_output_control"

.field public static final whitelist MATCH_CONTENT_FRAMERATE_ALWAYS:I = 0x2

.field public static final whitelist MATCH_CONTENT_FRAMERATE_NEVER:I = 0x0

.field public static final whitelist MATCH_CONTENT_FRAMERATE_SEAMLESSS_ONLY:I = 0x1

.field public static final whitelist MATCH_CONTENT_FRAMERATE_UNKNOWN:I = -0x1

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_BRIGHTNESS:J = 0x1L

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_COMMITTED_STATE_CHANGED:J = 0x8L

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_CONNECTION_CHANGED:J = 0x4L

.field public static final blacklist PRIVATE_EVENT_TYPE_HDR_SDR_RATIO_CHANGED:J = 0x2L

.field public static final blacklist SEM_ACTION_DISCONNECT_LELINK_CAST:Ljava/lang/String; = "com.samsung.intent.action.DISCONNECT_LELINK_CAST"

.field public static final whitelist SEM_ACTION_DLNA_STATUS_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.DLNA_STATUS_CHANGED"

.field public static final whitelist SEM_ACTION_SET_SCREEN_RATIO_VALUE:Ljava/lang/String; = "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

.field public static final whitelist SEM_ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final whitelist SEM_CONNECT_STATE_CHANGEPLAYER_MUSIC:I = 0x8

.field public static final whitelist SEM_CONNECT_STATE_NORMAL:I = -0x1

.field public static final whitelist SEM_DISPLAY_CATEGORY_RUNTIME_MIRRORING_SWAP:Ljava/lang/String; = "com.samsung.android.hardware.display.category.RUNTIME_MIRRORING_SWAP"

.field public static final whitelist SEM_EXTRA_DLNA_PLAYER_TYPE:Ljava/lang/String; = "player_type"

.field public static final whitelist SEM_EXTRA_DLNA_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist SEM_EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final blacklist SEM_PRESENTATION_START:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_START"

.field public static final blacklist SEM_PRESENTATION_START_SMARTVIEW:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

.field public static final blacklist SEM_PRESENTATION_STOP:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_STOP"

.field public static final blacklist SEM_PRESENTATION_STOP_SMARTVIEW:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

.field public static final blacklist SEM_WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final whitelist SEM_WIFI_DISPLAY_SINK_STATE:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

.field public static final whitelist SEM_WIFI_DISPLAY_SOURCE_STATE:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

.field public static final blacklist SEM_WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

.field public static final blacklist SPEG_DISPLAY_NAME:Ljava/lang/String; = "SpegVirtualDisplay"

.field public static final blacklist SPEG_VIRTUAL_DISPLAY_FLAGS:I = 0x10001c8

.field public static final blacklist SUPPORT_SCREEN_SHARING_READY:Z = false

.field public static final blacklist SUPPORT_WFD_SERVICE:Z = true

.field public static final blacklist SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS:I = 0x2

.field public static final blacklist SWITCHING_TYPE_NONE:I = 0x0

.field public static final blacklist SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY:I = 0x3

.field public static final blacklist SWITCHING_TYPE_WITHIN_GROUPS:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayManager"

.field public static final blacklist TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED:I = 0x1000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR:I = 0x10

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_BACKGROUND_DISPLAY:I = -0x80000000

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_CARLIFE:I = 0x100000

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_DESTROY_CONTENT_ON_REMOVAL:I = 0x100

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP:I = 0x8000

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_HIDDEN_SPACE:I = 0x20000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY:I = 0x8

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP:I = 0x800

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_OWN_FOCUS:I = 0x4000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_REMOTE_APP:I = 0x80000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_ROTATES_WITH_CONTENT:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x200

.field private static final blacklist VIRTUAL_DISPLAY_FLAG_SPEG_DISPLAY:I = 0x1000000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH:I = 0x40

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_TOUCH_FEEDBACK_DISABLED:I = 0x2000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_TRUSTED:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_VIEW_COVER:I = 0x40000000

.field public static final blacklist VIRTUAL_DISPLAY_NO_LOCK_PRESENTATION:I = 0x200000


# instance fields
.field private blacklist mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

.field private blacklist mDisplayIdToMirror:I

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$0oEBnf5MlJ63XG3Xyp_qO5VrFbw(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isBuiltInDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$9yY1HXnjeij7w-FwzJ1bCArB-bc(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->checkNonNullAndOtherPolicy(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$DpgFaEbPUwx3CjZLjUA6wQgjhJ4(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isCarLifeDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$F6SlQe9yX1OohndV6-ukqDL-L9I(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isPresentationDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qqP-Le8zJzAr3Y5cQEW9VAoNXF4(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isRearDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wC6YlzZ1Vo-wYvgNLkWkdQzsFaA(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isViewCoverDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xIX75W417Zzi6YvaUQy8yBK_lEw(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isRemoteAppDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zyygYpdvb29eQmjrzhc0gV14bxs(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->checkNonNullIncludingBuiltIn(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "DisplayManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DisplayManager_All"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/hardware/display/DisplayManager;->DEBUG:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;-><init>(Landroid/hardware/display/DisplayManager-IA;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    return-void
.end method

.method private blacklist addHiddenSpaceDisplaysLocked([II)[Landroid/view/Display;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplay(IZ)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getFlags()I

    move-result v3

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/Display;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display;

    return-object p0
.end method

.method private static blacklist checkNonNullAndOtherPolicy(Landroid/view/Display;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isExtraDisplay(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isViewCoverDisplay(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v1, 0x200000

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist checkNonNullIncludingBuiltIn(Landroid/view/Display;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isExtraDisplay(Landroid/view/Display;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->checkNonNullAndOtherPolicy(Landroid/view/Display;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public static whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    new-instance v2, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p2, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    const/16 p0, 0x10

    invoke-virtual {v2, p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p0

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    aget-object p1, p1, p3

    :goto_0
    new-instance p3, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {p3, p2, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    :try_start_1
    invoke-interface {v0, p0, p3, p2, p1}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p2

    invoke-virtual {p2, p0, p3, p1}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist getAmbientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private blacklist getDisplayIdToMirror()I
    .locals 2

    iget v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    :cond_1
    iget p0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    return p0
.end method

.method private blacklist getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/function/Predicate<",
            "Landroid/view/Display;",
            ">;)[",
            "Landroid/view/Display;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplay(IZ)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v4

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/Display;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display;

    return-object p0
.end method

.method private blacklist getHiddenDisplayId(Ljava/lang/String;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/Display;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/Display;->getOwnerUid()I

    move-result v3

    if-ne v3, p2, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Display #"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (SpegVirtualDisplay), owner: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Display;->getOwnerUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SPEG"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getOrCreateDisplay(IZ)Landroid/view/Display;
    .locals 3

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->get(I)Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :cond_0
    iget-object p2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p2, p1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->put(Landroid/view/Display;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result p0

    if-nez p0, :cond_2

    move-object v1, v2

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist isBackgroundDisplay(Landroid/view/Display;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    sget v0, Landroid/view/Display;->FLAG_BACKGROUND_DISPLAY:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isBuiltInDisplay(Landroid/view/Display;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private static blacklist isCarLifeDisplay(Landroid/view/Display;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isExternalDesktopDisplay(Landroid/view/Display;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isExternalDesktopDisplay(Landroid/view/DisplayInfo;)Z
    .locals 1

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isExtraDisplay(Landroid/view/Display;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isHDPlusResolutionDisplay(Landroid/view/DisplayInfo;)Z
    .locals 3

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v1, 0x640

    if-ne v0, v1, :cond_1

    const/16 v0, 0x384

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private static blacklist isPresentationDisplay(Landroid/view/Display;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isExtraDisplay(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isViewCoverDisplay(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/4 v2, 0x5

    if-eq p0, v2, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method private static blacklist isRearDisplay(Landroid/view/Display;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isRemoteAppDisplay(Landroid/view/Display;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isViewCoverDisplay(Landroid/view/Display;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/hardware/display/DisplayManagerGlobal;->mapFiltersToInternalEventFlag(JJ)J

    move-result-wide p3

    move-object p5, p7

    move p6, p8

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;Z)V

    return-void
.end method

.method private blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JJLjava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/hardware/display/DisplayManagerGlobal;->mapFiltersToInternalEventFlag(JJ)J

    move-result-wide p3

    move-object p5, p7

    move p6, p8

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V

    return-void
.end method

.method public static blacklist shouldAdjustResolutionForDesktopDisplay(Landroid/view/DisplayInfo;)Z
    .locals 2

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v1, 0x640

    if-lt v0, v1, :cond_1

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist shouldIncludeDisabledDisplays(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "android.hardware.display.category.BUILT_IN_DISPLAYS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const-string p0, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "android.hardware.display.category.ALL_INCLUDING_BUILT_IN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private blacklist toMatchContentFrameRateSetting(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid value of switching type."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist areUserDisabledHdrTypesAllowed()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->areUserDisabledHdrTypesAllowed()Z

    move-result p0

    return p0
.end method

.method public blacklist clearGlobalUserPreferredDisplayMode()V
    .locals 2

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    return-void
.end method

.method public greylist connectWifiDisplay(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist convertToBrightness(F)I
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->convertToBrightness(F)I

    move-result p0

    return p0
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 7

    if-eqz p3, :cond_1

    new-instance v0, Landroid/os/HandlerExecutor;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    :goto_0
    invoke-static {p4}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p4

    invoke-direct {v0, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v6, v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, p7}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    if-eqz p10, :cond_0

    invoke-virtual {v0, p10}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_1
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getDisplayIdToMirror()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p8, p9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_0
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getDisplayIdToMirror()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p8, p7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableConnectedDisplay(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->disableConnectedDisplay(I)V

    return-void
.end method

.method public greylist disconnectWifiDisplay()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    return-void
.end method

.method public blacklist enableConnectedDisplay(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->enableConnectedDisplay(I)V

    return-void
.end method

.method public greylist forgetWifiDisplay(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getAdaptiveBrightness(IF)F
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getAdaptiveBrightness(IF)F

    move-result p0

    return p0
.end method

.method public whitelist getAmbientBrightnessStats()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getAmbientBrightnessStats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBackupBrightnessConfiguration(II)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getBackupBrightnessConfiguration(II)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBrightness(I)F
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightness(I)F

    move-result p0

    return p0
.end method

.method public whitelist getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBrightnessConfigurationForDisplay(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBrightnessEvents()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultDozeBrightness(I)F
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDefaultDozeBrightness(I)F

    move-result p0

    return p0
.end method

.method public whitelist getDisplay(I)Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplay(IZ)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDisplayTopology()Landroid/hardware/display/DisplayTopology;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDisplays()[Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 2

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManager;->shouldIncludeDisabledDisplays(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds(Z)[I

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayCategoryBuiltIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.hardware.display.category.BUILT_IN_DISPLAYS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "android.hardware.display.category.REAR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "android.hardware.display.category.ALL_INCLUDING_BUILT_IN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v1, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v1, "com.samsung.android.hardware.display.category.REMOTE_APP_DISPLAY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v1, :cond_7

    const-string v1, "com.samsung.android.hardware.display.category.CARLIFE_DISPLAY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p1, :cond_a

    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    const-string v1, "com.samsung.android.hardware.display.category.HIDDEN_SPACE_DISPLAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->addHiddenSpaceDisplaysLocked([II)[Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/view/Display;

    return-object p0

    :cond_a
    :goto_0
    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDozeBrightnessSensorValueToBrightness(I)[F
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDozeBrightnessSensorValueToBrightness(I)[F

    move-result-object p0

    return-object p0
.end method

.method public blacklist getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .locals 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHiddenDisplayId(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getHiddenDisplayId(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public whitelist getMatchContentFrameRateUserPreference()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRefreshRateSwitchingType()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/display/DisplayManager;->toMatchContentFrameRateSetting(I)I

    move-result p0

    return p0
.end method

.method public whitelist getMinimumBrightnessCurve()Landroid/util/Pair;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getMinimumBrightnessCurve()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getStableDisplaySize()Landroid/graphics/Point;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedHdrOutputTypes()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getSupportedHdrOutputTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUserDisabledHdrTypes()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getUserDisabledHdrTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public greylist getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAlwaysOnDisplayCurrentlyAvailable()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getAmbientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isMinimalPostProcessingRequested(I)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isMinimalPostProcessingRequested(I)Z

    move-result p0

    return p0
.end method

.method public blacklist overrideHdrTypes(I[I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->overrideHdrTypes(I[I)V

    return-void
.end method

.method public greylist pauseWifiDisplay()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    return-void
.end method

.method public whitelist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 9

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v3, 0x7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .locals 9

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V
    .locals 9

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    return-void
.end method

.method public whitelist registerDisplayListener(Ljava/util/concurrent/Executor;JLandroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 9

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v1, p4

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JJLjava/lang/String;Z)V

    return-void
.end method

.method public blacklist registerHbmBrightnessListener(Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->registerHbmBrightnessListener(Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;)V

    return-void
.end method

.method public blacklist registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public greylist renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist requestDisplayModes(I[I)V
    .locals 1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "requestDisplayModes: modesIds can\'t be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->requestDisplayModes(I[I)V

    return-void
.end method

.method public blacklist resetBrightnessConfiguration()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManagerGlobal;->resetBrightnessConfigurationForUser(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist resetImplicitRefreshRateCallbackStatus()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->resetImplicitRefreshRateCallbackStatus()V

    return-void
.end method

.method public greylist resumeWifiDisplay()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    return-void
.end method

.method public whitelist semCheckExceptionalCase()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public whitelist semCheckScreenSharingSupported()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist semConnectWifiDisplay(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semConnectWifiDisplay : config = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist semDisconnectDevice()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    return-void
.end method

.method public whitelist semDisconnectWifiDisplay()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    return-void
.end method

.method public whitelist semEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "scramble_support"

    const/16 v10, 0x10

    if-ne v3, v10, :cond_0

    const/4 v11, 0x3

    goto :goto_0

    :cond_0
    const/4 v11, 0x2

    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v15, 0xe

    const/16 v16, 0x0

    if-ne v3, v15, :cond_1

    const/16 v10, 0x20

    move/from16 v15, v16

    goto :goto_2

    :cond_1
    const/16 v15, 0x13

    if-eq v3, v15, :cond_4

    if-ne v3, v10, :cond_2

    goto :goto_1

    :cond_2
    const/16 v10, 0x11

    if-ne v3, v10, :cond_3

    move/from16 v10, v16

    const/4 v15, 0x2

    goto :goto_2

    :cond_3
    move/from16 v10, v16

    move v15, v10

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v10, v16

    const/4 v15, 0x3

    :goto_2
    const-string v8, "setparams"

    const-string v9, "getparams"

    if-eqz v4, :cond_9

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v9

    move/from16 v3, v16

    :goto_3
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_6

    new-instance v9, Landroid/hardware/display/SemWifiDisplayParameter;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v19, v10

    :try_start_2
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    goto :goto_3

    :cond_5
    move-object/from16 v18, v9

    :cond_6
    move/from16 v19, v10

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move/from16 v4, v16

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move-object/from16 v20, v3

    const/4 v3, 0x2

    if-ne v10, v3, :cond_7

    new-instance v10, Landroid/hardware/display/SemWifiDisplayParameter;

    aget-object v3, v9, v16

    const/16 v21, 0x1

    aget-object v9, v9, v21

    invoke-direct {v10, v3, v9}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v20

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v7, v0}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_0
    :cond_9
    move-object/from16 v18, v9

    :catch_1
    move/from16 v19, v10

    :catch_2
    :cond_a
    :goto_5
    const-string v0, ", option = "

    const-string v3, ", config = "

    const-string v4, "semEnableWifiDisplay : deviceType = "

    const-string v7, "DisplayManager"

    const-string v9, "initparams"

    const/4 v10, 0x3

    if-ne v11, v10, :cond_b

    new-instance v10, Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    invoke-direct {v10}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;-><init>()V

    invoke-virtual {v10, v1, v2, v5, v6}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->setUsbConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->setMode(I)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v1

    move/from16 v10, v19

    invoke-virtual {v1, v10}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addFlags(I)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v9, v12}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addParameters(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v1

    move-object/from16 v11, v18

    invoke-virtual {v1, v11, v13}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addParameters(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v8, v14}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addParameters(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->build()Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V

    goto :goto_6

    :cond_b
    move-object/from16 v17, v0

    move-object/from16 p7, v7

    move-object/from16 v11, v18

    move/from16 v10, v19

    move/from16 v7, p3

    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->setApConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->setMode(I)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addFlags(I)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v12}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addParameters(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v11, v13}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addParameters(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v14}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->addParameters(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->build()Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V

    :goto_6
    return-void
.end method

.method public whitelist semFitToActiveDisplay(Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->fitToActiveDisplay(Z)V

    return-void
.end method

.method public whitelist semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist semGetActiveDlnaState()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result p0

    return p0
.end method

.method public whitelist semGetPresentationOwner(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist semGetScreenSharingStatus()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getScreenSharingStatus()I

    move-result p0

    return p0
.end method

.method public blacklist semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "muvo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->isDeviceVolumeMuted()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "mivo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getDeviceMaxVolume()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "mavo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getDeviceMinVolume()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;
    .locals 1

    new-instance v0, Landroid/hardware/display/SemWifiDisplayStatus;

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayStatus;-><init>(Landroid/hardware/display/WifiDisplayStatus;)V

    return-object v0
.end method

.method public whitelist semIsFitToActiveDisplay()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->isFitToActiveDisplay()Z

    move-result p0

    return p0
.end method

.method public whitelist semIsWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isWifiDisplayWithPinSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist semPauseWifiDisplay()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    return-void
.end method

.method public whitelist semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist semRegisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist semRegisterWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist semRequestSetWifiDisplayParameters(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semRequestSetWifiDisplayParameters : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public whitelist semRequestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semRequestWifiDisplayParameter, parameterGroup : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    move-result p0

    return p0
.end method

.method public whitelist semResumeWifiDisplay()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    return-void
.end method

.method public whitelist semSetActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semSetActiveDlnaState"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/hardware/display/SemDlnaDevice;->setConnectionState(I)V

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;)V

    :cond_0
    return-void
.end method

.method public whitelist semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V
    .locals 2

    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v1, "wifi_display_on"

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    return-void

    :cond_1
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    return-void

    :cond_2
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method public whitelist semSetDeviceVolume(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDeviceVolume(I)V

    return-void
.end method

.method public whitelist semSetScreenSharingStatus(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setScreenSharingStatus(I)V

    return-void
.end method

.method public whitelist semSetTemporaryBrightness(F)V
    .locals 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightness(IF)V

    return-void
.end method

.method public blacklist semSetTemporaryBrightness(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semSetTemporaryBrightness: brightness="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightness(IF)V

    return-void
.end method

.method public whitelist semSetTemporaryBrightness(IF)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightness(IF)V

    return-void
.end method

.method public blacklist semSetWifiDisplayConfiguration(Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semSetWifiDisplayConfiguration key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vkev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setVolumeKeyEvent(I)V

    return v1

    :cond_0
    const-string v0, "svol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->semSetDeviceVolume(I)V

    return v1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist semSetWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semSetWifiDisplayConfiguration key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " String value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semSetWifiDisplayConfiguration(Ljava/lang/String;Z)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semSetWifiDisplayConfiguration key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "smut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setDeviceVolumeMuted(Z)V

    return v1

    :cond_0
    const-string v0, "mkev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVolumeKeyEvent(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVolumeKeyEvent(I)V

    :goto_0
    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist semSetWifiDisplayVolume(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetDeviceVolume(I)V

    return-void
.end method

.method public whitelist semSetWifiDisplayVolumeMuted(Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDeviceVolumeMuted(Z)V

    return-void
.end method

.method public whitelist semStartScanWifiDisplays()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semStartScanWifiDisplays"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    return-void
.end method

.method public whitelist semStartScanWifiDisplays(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semStartScanWifiDisplays, scanChannel = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan(I)V

    return-void
.end method

.method public whitelist semStartScanWifiDisplays(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semStartScanWifiDisplays, scanChannel = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan(II)V

    return-void
.end method

.method public whitelist semStopScanWifiDisplays()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semStopScanWifiDisplays"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    return-void
.end method

.method public whitelist semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    return-void
.end method

.method public whitelist semUnregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    return-void
.end method

.method public blacklist semUnregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V

    return-void
.end method

.method public whitelist semUnregisterWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;)V

    return-void
.end method

.method public blacklist setAreUserDisabledHdrTypesAllowed(Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setAreUserDisabledHdrTypesAllowed(Z)V

    return-void
.end method

.method public blacklist setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal;->setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;I)V

    return-void
.end method

.method public blacklist setBrightness(IF)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightness(IF)V

    return-void
.end method

.method public whitelist setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    return-void
.end method

.method public whitelist setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, v1, p0}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/BrightnessConfiguration;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual/range {p0 .. p7}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public greylist-max-o setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/BrightnessConfiguration;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public blacklist setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V

    return-void
.end method

.method public blacklist setEnableConnectedDisplay(IZ)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setEnableConnectedDisplay(IZ)V

    return-void
.end method

.method public blacklist setGlobalUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .locals 3

    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Landroid/view/Display$Mode;-><init>(IIF)V

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    return-void
.end method

.method public blacklist setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V

    return-void
.end method

.method public blacklist setRefreshRateSwitchingType(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setRefreshRateSwitchingType(I)V

    return-void
.end method

.method public whitelist setSaturationLevel(F)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Saturation level must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setShouldAlwaysRespectAppRequestedMode(Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setShouldAlwaysRespectAppRequestedMode(Z)V

    return-void
.end method

.method public greylist-max-o setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryAutoBrightnessAdjustment(F)V

    return-void
.end method

.method public blacklist setTemporaryBrightness(IF)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightness(IF)V

    return-void
.end method

.method public blacklist setTemporaryBrightness(IIZ)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightnessForSlowChange(IFZ)V

    return-void
.end method

.method public blacklist setTemporaryBrightness(IZ)V
    .locals 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightnessForSlowChange(IFZ)V

    return-void
.end method

.method public blacklist setUserDisabledHdrTypes([I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setUserDisabledHdrTypes([I)V

    return-void
.end method

.method public blacklist shouldAlwaysRespectAppRequestedMode()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->shouldAlwaysRespectAppRequestedMode()Z

    move-result p0

    return p0
.end method

.method public greylist startWifiDisplayScan()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    return-void
.end method

.method public greylist stopWifiDisplayScan()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    return-void
.end method

.method public blacklist supportsSeamlessRefreshRateSwitching()Z
    .locals 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111027f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public whitelist unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public blacklist unregisterHbmBrightnessListener(Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterHbmBrightnessListener(Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;)V

    return-void
.end method

.method public blacklist unregisterTopologyListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterTopologyListener(Ljava/util/function/Consumer;)V

    return-void
.end method
