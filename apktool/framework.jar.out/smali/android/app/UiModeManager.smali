.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;,
        Landroid/app/UiModeManager$Globals;,
        Landroid/app/UiModeManager$InnerListener;,
        Landroid/app/UiModeManager$OnProjectionStateChangedListener;,
        Landroid/app/UiModeManager$ContrastChangeListener;,
        Landroid/app/UiModeManager$ForceInvertStateChangeListener;,
        Landroid/app/UiModeManager$ProjectionType;,
        Landroid/app/UiModeManager$DisableCarMode;,
        Landroid/app/UiModeManager$EnableCarMode;,
        Landroid/app/UiModeManager$ContrastUtils;,
        Landroid/app/UiModeManager$ForceInvertType;,
        Landroid/app/UiModeManager$NightModeCustomReturnType;,
        Landroid/app/UiModeManager$NightModeCustomType;,
        Landroid/app/UiModeManager$AttentionModeThemeOverlayReturnType;,
        Landroid/app/UiModeManager$AttentionModeThemeOverlayType;,
        Landroid/app/UiModeManager$NightMode;
    }
.end annotation


# static fields
.field public static whitelist ACTION_ENTER_CAR_MODE:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE"

.field public static final whitelist ACTION_ENTER_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_ENTER_DESK_MODE:Ljava/lang/String; = "android.app.action.ENTER_DESK_MODE"

.field public static whitelist ACTION_EXIT_CAR_MODE:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE"

.field public static final whitelist ACTION_EXIT_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_EXIT_DESK_MODE:Ljava/lang/String; = "android.app.action.EXIT_DESK_MODE"

.field private static final blacklist CURRENT_MODE_TYPE_API:Ljava/lang/String; = "getCurrentModeType"

.field public static final whitelist DEFAULT_PRIORITY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DISABLE_CAR_MODE_ALL_PRIORITIES:I = 0x2

.field public static final whitelist DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final whitelist ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final whitelist ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.app.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.app.extra.PRIORITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FORCE_INVERT_TYPE_DARK:I = 0x1

.field public static final blacklist FORCE_INVERT_TYPE_LIGHT:I = 0x2

.field public static final blacklist FORCE_INVERT_TYPE_OFF:I = 0x0

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_DAY:I = 0x3ea

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_NIGHT:I = 0x3e9

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_OFF:I = 0x3e8

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_UNKNOWN:I = -0x1

.field public static final whitelist MODE_NIGHT_AUTO:I = 0x0

.field public static final whitelist MODE_NIGHT_CUSTOM:I = 0x3

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_BEDTIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_SCHEDULE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_NO:I = 0x1

.field public static final whitelist MODE_NIGHT_YES:I = 0x2

.field private static final blacklist NIGHT_MODE_API:Ljava/lang/String; = "getNightMode"

.field public static final whitelist PROJECTION_TYPE_ALL:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_AUTOMOTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String; = "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

.field public static blacklist SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String; = "android.app.action.ENTER_KNOX_DESKTOP_MODE"

.field public static whitelist SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String; = "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

.field public static blacklist SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String; = "android.app.action.EXIT_KNOX_DESKTOP_MODE"

.field public static final whitelist SEM_DISPLAY_TYPE_DUAL:I = 0x66

.field public static final whitelist SEM_DISPLAY_TYPE_STANDALONE:I = 0x65

.field public static final whitelist SEM_EXTRA_DISPLAY_TYPE:Ljava/lang/String; = "android.app.extra.DISPLAY_TYPE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UiModeManager"

.field private static blacklist sGlobals:Landroid/app/UiModeManager$Globals;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentModeTypeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNightModeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

.field private final blacklist mProjectionStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            "Landroid/app/UiModeManager$InnerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetCurrentModeTypeFromServer(Landroid/app/UiModeManager;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/app/UiModeManager;->getCurrentModeTypeFromServer()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNightModeFromServer(Landroid/app/UiModeManager;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/app/UiModeManager;->getNightModeFromServer()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method constructor greylist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/UiModeManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    new-instance v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>(Landroid/app/UiModeManager-IA;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    new-instance v8, Landroid/app/UiModeManager$1;

    invoke-direct {v8, p0}, Landroid/app/UiModeManager$1;-><init>(Landroid/app/UiModeManager;)V

    iput-object v8, p0, Landroid/app/UiModeManager;->mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;

    new-instance v3, Landroid/os/IpcDataCache;

    const-string/jumbo v5, "system_server"

    const-string v6, "getCurrentModeType"

    const-string v7, "CurrentModeTypeCache"

    const/4 v4, 0x1

    invoke-direct/range {v3 .. v8}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v3, p0, Landroid/app/UiModeManager;->mCurrentModeTypeCache:Landroid/os/IpcDataCache;

    new-instance v9, Landroid/app/UiModeManager$2;

    invoke-direct {v9, p0}, Landroid/app/UiModeManager$2;-><init>(Landroid/app/UiModeManager;)V

    iput-object v9, p0, Landroid/app/UiModeManager;->mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    new-instance v4, Landroid/os/IpcDataCache;

    const-string/jumbo v6, "system_server"

    const-string v7, "getNightMode"

    const-string v8, "NightModeCache"

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v9}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v4, p0, Landroid/app/UiModeManager;->mNightModeCache:Landroid/os/IpcDataCache;

    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object p1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-nez p0, :cond_1

    new-instance p0, Landroid/app/UiModeManager$Globals;

    invoke-direct {p0, v0}, Landroid/app/UiModeManager$Globals;-><init>(Landroid/app/IUiModeManager;)V

    sput-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getCurrentModeTypeFromServer()Ljava/lang/Integer;
    .locals 0

    :try_start_0
    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist getNightModeFromServer()Ljava/lang/Integer;
    .locals 0

    :try_start_0
    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist invalidateCurrentModeTypeCache()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string v1, "getCurrentModeType"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist invalidateNightModeCache()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string v1, "getNightMode"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p0, p2, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist addForceInvertStateChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p0, p2, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public whitelist addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "UiModeManager"

    const-string p1, "Attempted to add listener that was already added."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/app/UiModeManager$InnerListener;

    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Landroid/app/IUiModeManager;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    iget-object p1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object p0, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {p0, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist disableCarMode(I)V
    .locals 1

    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    iget-object p0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p1, p0}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public whitelist enableCarMode(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/UiModeManager;->enableCarMode(II)V

    return-void
.end method

.method public whitelist enableCarMode(II)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    iget-object p0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p2, p1, p0}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public whitelist getActiveProjectionTypes()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getActiveProjectionTypes()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAttentionModeThemeOverlay()I
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getAttentionModeThemeOverlay()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist getContrast()F
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;)F

    move-result p0

    return p0
.end method

.method public whitelist getCurrentModeType()I
    .locals 1

    invoke-static {}, Landroid/app/Flags;->enableCurrentModeTypeBinderCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/UiModeManager;->mCurrentModeTypeCache:Landroid/os/IpcDataCache;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Landroid/app/UiModeManager;->getCurrentModeTypeFromServer()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public whitelist getCustomNightModeEnd()Ljava/time/LocalTime;
    .locals 4

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    sget-object p0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object p0
.end method

.method public whitelist getCustomNightModeStart()Ljava/time/LocalTime;
    .locals 4

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    sget-object p0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object p0
.end method

.method public blacklist getForceInvertState()I
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;)I

    move-result p0

    return p0
.end method

.method public whitelist getNightMode()I
    .locals 1

    invoke-static {}, Landroid/app/Flags;->enableNightModeBinderCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/UiModeManager;->mNightModeCache:Landroid/os/IpcDataCache;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Landroid/app/UiModeManager;->getNightModeFromServer()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public whitelist getNightModeCustomType()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPackageNightMode(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/app/IUiModeManager;->getPackageNightMode(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist getProjectingPackages(I)Ljava/util/Set;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Landroid/util/ArraySet;

    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->getProjectingPackages(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist isNightModeLocked()Z
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->isNightModeLocked()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isUiModeLocked()Z
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IUiModeManager;->isUiModeLocked()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist releaseProjection(I)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    iget-object p0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/app/IUiModeManager;->releaseProjection(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p0, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;)V

    return-void
.end method

.method public blacklist removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p0, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    return-void
.end method

.method public whitelist removeOnProjectionStateChangedListener(Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$InnerListener;

    if-nez v1, :cond_0

    const-string p0, "UiModeManager"

    const-string p1, "Attempted to remove listener that was not added."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {v2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IUiModeManager;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {p0, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist requestProjection(I)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object p0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0}, Landroid/app/IUiModeManager;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist setApplicationNightMode(I)V
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IUiModeManager;->setApplicationNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist setAttentionModeThemeOverlay(I)V
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IUiModeManager;->setAttentionModeThemeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public whitelist setCustomNightModeEnd(Ljava/time/LocalTime;)V
    .locals 4

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-interface {p0, v0, v1}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public whitelist setCustomNightModeStart(Ljava/time/LocalTime;)V
    .locals 4

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-interface {p0, v0, v1}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public whitelist setNightMode(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setNightMode : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", caller : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UiModeManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist setNightModeActivated(Z)Z
    .locals 0

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IUiModeManager;->setNightModeActivated(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist setNightModeActivatedForCustomMode(IZ)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/IUiModeManager;->setNightModeActivatedForCustomMode(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist setNightModeCustomType(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setNightModeCustomType : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", caller : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UiModeManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IUiModeManager;->setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist setPackageNightMode(Ljava/lang/String;I)V
    .locals 1

    sget-object p0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-interface {p0, p1, v0, p2}, Landroid/app/IUiModeManager;->setPackageNightMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method
