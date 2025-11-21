.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$RateLimiter;,
        Landroid/app/NotificationManager$ReNotifyRunnable;,
        Landroid/app/NotificationManager$EdgeNotificationManager;,
        Landroid/app/NotificationManager$NotificationKey;,
        Landroid/app/NotificationManager$NotificationChannelQuery;,
        Landroid/app/NotificationManager$Policy;,
        Landroid/app/NotificationManager$CallNotificationEventCallbackStub;,
        Landroid/app/NotificationManager$CallNotificationEventListener;,
        Landroid/app/NotificationManager$SemZenMode;,
        Landroid/app/NotificationManager$BubblePreference;,
        Landroid/app/NotificationManager$Importance;,
        Landroid/app/NotificationManager$InterruptionFilter;,
        Landroid/app/NotificationManager$AutomaticZenRuleStatus;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APP_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.APP_BLOCK_STATE_CHANGED"

.field public static final whitelist ACTION_AUTOMATIC_ZEN_RULE:Ljava/lang/String; = "android.app.action.AUTOMATIC_ZEN_RULE"

.field public static final whitelist ACTION_AUTOMATIC_ZEN_RULE_STATUS_CHANGED:Ljava/lang/String; = "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

.field public static final whitelist ACTION_CLOSE_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.CLOSE_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONSOLIDATED_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.CONSOLIDATED_NOTIFICATION_POLICY_CHANGED"

.field public static final greylist-max-o ACTION_EFFECTS_SUPPRESSOR_CHANGED:Ljava/lang/String; = "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

.field public static final whitelist ACTION_INTERRUPTION_FILTER_CHANGED:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED"

.field public static final greylist-max-o ACTION_INTERRUPTION_FILTER_CHANGED_INTERNAL:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

.field public static final whitelist ACTION_NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

.field public static final whitelist ACTION_NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

.field public static final blacklist ACTION_NOTIFICATION_LISTENER_ENABLED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

.field public static final whitelist ACTION_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_CHANGED"

.field public static final whitelist ACTION_OPEN_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.OPEN_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TOGGLE_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.TOGGLE_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTOMATIC_RULE_STATUS_ACTIVATED:I = 0x4

.field public static final whitelist AUTOMATIC_RULE_STATUS_DEACTIVATED:I = 0x5

.field public static final whitelist AUTOMATIC_RULE_STATUS_DISABLED:I = 0x2

.field public static final whitelist AUTOMATIC_RULE_STATUS_ENABLED:I = 0x1

.field public static final whitelist AUTOMATIC_RULE_STATUS_REMOVED:I = 0x3

.field public static final whitelist AUTOMATIC_RULE_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist BUBBLE_PREFERENCE_ALL:I = 0x1

.field public static final whitelist BUBBLE_PREFERENCE_NONE:I = 0x0

.field public static final whitelist BUBBLE_PREFERENCE_SELECTED:I = 0x2

.field private static final blacklist DELAY_FOR_OVERFLOW:J = 0x2710L

.field private static final blacklist DELAY_FOR_OVERFLOW_SUMMARY:J = 0xc8L

.field public static final whitelist EXTRA_AUTOMATIC_RULE_ID:Ljava/lang/String; = "android.app.extra.AUTOMATIC_RULE_ID"

.field public static final whitelist EXTRA_AUTOMATIC_ZEN_RULE_ID:Ljava/lang/String; = "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

.field public static final whitelist EXTRA_AUTOMATIC_ZEN_RULE_STATUS:Ljava/lang/String; = "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

.field public static final whitelist EXTRA_BLOCKED_STATE:Ljava/lang/String; = "android.app.extra.BLOCKED_STATE"

.field public static final whitelist EXTRA_NOTIFICATION_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "android.app.extra.NOTIFICATION_CHANNEL_ID"

.field public static final whitelist EXTRA_NOTIFICATION_POLICY:Ljava/lang/String; = "android.app.extra.NOTIFICATION_POLICY"

.field public static final whitelist IMPORTANCE_DEFAULT:I = 0x3

.field public static final whitelist IMPORTANCE_HIGH:I = 0x4

.field public static final whitelist IMPORTANCE_LOW:I = 0x2

.field public static final whitelist IMPORTANCE_MAX:I = 0x5

.field public static final whitelist IMPORTANCE_MIN:I = 0x1

.field public static final whitelist IMPORTANCE_NONE:I = 0x0

.field public static final whitelist IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final whitelist INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final whitelist INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final whitelist INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final whitelist INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final whitelist INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field private static final blacklist KNOWN_STATUS_CANCELLED:I = 0x2

.field private static final blacklist KNOWN_STATUS_ENQUEUED:I = 0x1

.field private static final blacklist MAX_NOTIFICATION_UNNECESSARY_CANCEL_RATE:F = 5.0f

.field private static final blacklist MAX_NOTIFICATION_UPDATE_RATE:F = 5.0f

.field public static blacklist MAX_SERVICE_COMPONENT_NAME_LENGTH:I = 0x1f4

.field public static final whitelist META_DATA_AUTOMATIC_RULE_TYPE:Ljava/lang/String; = "android.service.zen.automatic.ruleType"

.field public static final whitelist META_DATA_RULE_INSTANCE_LIMIT:Ljava/lang/String; = "android.service.zen.automatic.ruleInstanceLimit"

.field private static final blacklist NOTIFICATION_CHANNELS_CACHE_API:Ljava/lang/String; = "getNotificationChannels"

.field private static final blacklist NOTIFICATION_CHANNELS_CACHE_SIZE:I = 0xa

.field private static final blacklist NOTIFICATION_CHANNEL_GROUPS_CACHE_API:Ljava/lang/String; = "getNotificationChannelGroups"

.field private static final blacklist NOTIFICATION_CHANNEL_GROUPS_CACHE_SIZE:I = 0xa

.field public static final whitelist SEM_NOTIFICATION_HISTORY_TYPE_GENERAL:I = 0x0

.field public static final whitelist SEM_NOTIFICATION_HISTORY_TYPE_IMAGE:I = 0x2

.field public static final whitelist SEM_NOTIFICATION_HISTORY_TYPE_REPLY:I = 0x1

.field public static final whitelist SEM_ZEN_MODE_ALARMS:I = 0x3

.field public static final whitelist SEM_ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final whitelist SEM_ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final whitelist SEM_ZEN_MODE_OFF:I = 0x0

.field public static final whitelist SEM_ZEN_MODE_UNKNOWN:I = -0x1

.field public static final blacklist SET_LISTENER_ACCESS_GRANTED_IS_USER_AWARE:J = 0x1208c096L

.field private static greylist-max-o TAG:Ljava/lang/String; = "NotificationManager"

.field public static final greylist-max-o VISIBILITY_NO_OVERRIDE:I = -0x3e8

.field private static greylist-max-o localLOGV:Z = false

.field private static greylist sService:Landroid/app/INotificationManager;


# instance fields
.field private blacklist mBlockedChannelsForOverflowNoti:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallNotificationEventCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/NotificationManager$CallNotificationEventListener;",
            "Landroid/app/NotificationManager$CallNotificationEventCallbackStub;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClock:Ljava/time/InstantSource;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mEdgeNotificationManager:Landroid/app/NotificationManager$EdgeNotificationManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mKnownNotifications:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/app/NotificationManager$NotificationKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mNMLock:Ljava/lang/Object;

.field private final blacklist mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelListCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mOverflowChildUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverflowNotiUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReNotifyRunnable:Landroid/app/NotificationManager$ReNotifyRunnable;

.field private final blacklist mThrottleLock:Ljava/lang/Object;

.field private final blacklist mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

.field private final blacklist mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager;->mClock:Ljava/time/InstantSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/NotificationManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowChildUpdateTimeMap(Landroid/app/NotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager;->mOverflowChildUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowNotiUpdateTimeMap(Landroid/app/NotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager;->mOverflowNotiUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfixNotification(Landroid/app/NotificationManager;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/NotificationManager;->fixNotification(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Ljava/time/InstantSource;)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Ljava/time/InstantSource;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    new-instance v1, Landroid/app/NotificationManager$RateLimiter;

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const-string/jumbo v3, "notify (update)"

    const-string/jumbo v4, "notifications.value_client_throttled_notify_update"

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V

    iput-object v1, v2, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    new-instance v7, Landroid/app/NotificationManager$RateLimiter;

    const/high16 v11, 0x40a00000    # 5.0f

    const/4 v12, 0x0

    const-string v9, "cancel (dupe)"

    const-string/jumbo v10, "notifications.value_client_throttled_cancel_duplicate"

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V

    iput-object v7, v2, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    new-instance p0, Landroid/util/LruCache;

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p0, v2, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v2, Landroid/app/NotificationManager;->mBlockedChannelsForOverflowNoti:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v2, Landroid/app/NotificationManager;->mOverflowNotiUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v2, Landroid/app/NotificationManager;->mOverflowChildUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Landroid/app/NotificationManager;->mNMLock:Ljava/lang/Object;

    iput-object p0, v2, Landroid/app/NotificationManager;->mReNotifyRunnable:Landroid/app/NotificationManager$ReNotifyRunnable;

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p0, v2, Landroid/app/NotificationManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/app/NotificationManager$1;

    invoke-direct {v8, v2}, Landroid/app/NotificationManager$1;-><init>(Landroid/app/NotificationManager;)V

    iput-object v8, v2, Landroid/app/NotificationManager;->mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    new-instance v3, Landroid/os/IpcDataCache;

    const-string v6, "getNotificationChannels"

    const-string v7, "getNotificationChannels"

    const/16 v4, 0xa

    const-string/jumbo v5, "system_server"

    invoke-direct/range {v3 .. v8}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v3, v2, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v9, Landroid/app/NotificationManager$2;

    invoke-direct {v9, v2}, Landroid/app/NotificationManager$2;-><init>(Landroid/app/NotificationManager;)V

    iput-object v9, v2, Landroid/app/NotificationManager;->mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    new-instance v4, Landroid/os/IpcDataCache;

    const-string v7, "getNotificationChannelGroups"

    const-string v8, "getNotificationChannelGroups"

    const/16 v5, 0xa

    const-string/jumbo v6, "system_server"

    invoke-direct/range {v4 .. v9}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v4, v2, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    iput-object p1, v2, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    iput-object p2, v2, Landroid/app/NotificationManager;->mClock:Ljava/time/InstantSource;

    return-void
.end method

.method private static greylist-max-o checkRequired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is required"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/app/NotificationManager$NotificationKey;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    iget-object p1, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {p2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->eventExceedsRate()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager$RateLimiter;->recordRejected(Landroid/app/NotificationManager$NotificationKey;)V

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :cond_0
    iget-object p2, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->recordAccepted()V

    :cond_1
    iget-object p0, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z
    .locals 8

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/app/NotificationManager$NotificationKey;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    iget-object p1, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {p2, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_2

    invoke-virtual {p5}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->eventExceedsRate()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p0, v2}, Landroid/app/NotificationManager$RateLimiter;->recordRejected(Landroid/app/NotificationManager$NotificationKey;)V

    monitor-exit p1

    return v1

    :cond_1
    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->recordAccepted()V

    :cond_2
    iget-object p0, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_0

    iget p0, p1, Landroid/app/Notification;->icon:I

    if-eqz p0, :cond_0

    iget p0, p1, Landroid/app/Notification;->icon:I

    invoke-static {p2, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    :cond_0
    return-void
.end method

.method private blacklist fixNotification(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string v2, "Notification.sound"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid notification (no valid small icon): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/app/Notification$Builder;->maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method private static blacklist getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Landroid/app/NotificationChannel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo p0, "miscellaneous"

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private static blacklist getConversationChannelFromList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Landroid/app/NotificationChannel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo p0, "miscellaneous"

    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0, p2}, Landroid/app/NotificationManager;->getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v1, v0

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static greylist getService()Landroid/app/INotificationManager;
    .locals 1

    sget-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public static blacklist invalidateNotificationChannelCache()V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "system_server"

    const-string v1, "getNotificationChannels"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v1, "invalidateNotificationChannelCache called without flag"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist invalidateNotificationChannelGroupCache()V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "system_server"

    const-string v1, "getNotificationChannelGroups"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v1, "invalidateNotificationChannelGroupCache called without flag"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static greylist-max-o zenModeFromInterruptionFilter(II)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    return p1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o zenModeToInterruptionFilter(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method


# virtual methods
.method public whitelist addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist addAutomaticZenRule(Landroid/app/AutomaticZenRule;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Landroid/app/INotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;

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

.method public blacklist addWearableAppToList(ILjava/lang/String;)Z
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->addWearableAppToList(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist allowAssistantAdjustment(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->allowAssistantAdjustment(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist areAutomaticZenRulesUserManaged()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public whitelist areBubblesAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->areBubblesAllowed(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist areBubblesEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->areBubblesEnabled(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist areNotificationsEnabled()Z
    .locals 1

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfPermissionCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist areNotificationsPaused()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->isPackagePaused(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist canNotifyAsPackage(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, v1, p1, p0}, Landroid/app/INotificationManager;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist canPostPromotedNotifications()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->canBePromoted(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist canUseFullScreenIntent()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->canUseFullScreenIntent(Landroid/content/AttributionSource;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist cancel(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist cancel(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist cancelAll()V
    .locals 7

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager$NotificationKey;

    invoke-static {v4}, Landroid/app/NotificationManager$NotificationKey;->-$$Nest$fgetpkg(Landroid/app/NotificationManager$NotificationKey;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/app/NotificationManager$NotificationKey;->-$$Nest$fgetuser(Landroid/app/NotificationManager$NotificationKey;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": cancelAll()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, p0, Landroid/app/NotificationManager;->mEdgeNotificationManager:Landroid/app/NotificationManager$EdgeNotificationManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationAllByNormal()V

    :cond_4
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist cancelAsPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/NotificationManager;->discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 7

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2, p1, p2}, Landroid/app/NotificationManager;->discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    sget-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": cancel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/app/NotificationManager;->mEdgeNotificationManager:Landroid/app/NotificationManager$EdgeNotificationManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v5}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationByNormal(I)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist cleanUpCallersAfter(J)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->cleanUpCallersAfter(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist createNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method public whitelist createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/NotificationChannelGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    return-void
.end method

.method public whitelist createNotificationChannelGroups(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p0, v1}, Landroid/app/INotificationManager;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist createNotificationChannels(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p0, v1}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist deleteNotificationChannel(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist deleteNotificationChannelGroup(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist disallowAssistantAdjustment(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->disallowAssistantAdjustment(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/service/notification/StatusBarNotification;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAllowedAssistantAdjustments()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

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

.method public whitelist getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

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

.method public blacklist getAllowedOngoingActivityAppList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getAllowedOngoingActivityAppList()Ljava/util/List;

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

.method public whitelist getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

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

.method public whitelist getAutomaticZenRuleState(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getAutomaticZenRuleState(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAutomaticZenRules()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Landroid/app/INotificationManager;->getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule$AzrWithId;

    iget-object v2, v1, Landroid/app/AutomaticZenRule$AzrWithId;->mId:Ljava/lang/String;

    iget-object v1, v1, Landroid/app/AutomaticZenRule$AzrWithId;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getBubblePreference()I
    .locals 2

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

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

.method public final whitelist getCurrentInterruptionFilter()I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getZenMode()I

    move-result p0

    invoke-static {p0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

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

.method public blacklist getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

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

.method public greylist-max-o getEnabledNotificationListenerPackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

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

.method public whitelist getEnabledNotificationListeners()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getEnabledNotificationListeners(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

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

.method public whitelist getImportance()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 5

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p1, p0}, Landroid/app/NotificationManager;->getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0, p1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

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

.method public whitelist getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 7

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p1, p2, p0}, Landroid/app/NotificationManager;->getConversationChannelFromList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v4, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 5

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v2, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    invoke-virtual {p0, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {p1, v1, p0, v0}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupWithChannels(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

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

.method public whitelist getNotificationChannelGroups()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v2, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    invoke-virtual {p0, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->forAllGroups()Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupsWithChannels(Ljava/util/Collection;Ljava/util/Map;Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getNotificationChannels()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Landroid/app/INotificationManager;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

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

.method public whitelist getNotificationDelegate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;

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

.method public whitelist getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

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

.method public greylist-max-o getRuleInstanceCount(Landroid/content/ComponentName;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getUnsupportedAdjustmentTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Landroid/app/INotificationManager;->getUnsupportedAdjustmentTypes()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getWearableAppList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getWearableAppList(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o getZenMode()I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getZenMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-r getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

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

.method public blacklist hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isNotificationPolicyAccessGranted()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist isOngoingActivityAllowed(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->isOngoingActivityAllowed(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist matchesCallFilter(Landroid/net/Uri;)Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/app/Person$Builder;

    invoke-direct {v2}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "android.people.list"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist notify(ILandroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public whitelist notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist notifyAsPackage(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 10

    const-string v0, ", "

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Landroid/app/NotificationManager;->discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p0

    move-object v2, v6

    move v5, v8

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object p0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": notify("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") as package"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v4, v9}, Landroid/app/NotificationManager;->fixNotification(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v6

    iget-object p0, v4, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    move-object v4, v7

    move v7, p0

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    const-string v6, ", "

    const-string/jumbo v7, "|"

    const-string v8, "The time to post with delay has passed. pkg ="

    const-string/jumbo v9, "received first notification to check overflow. pkg ="

    const-string v10, "BOOTING pkg ="

    iget-object v1, v0, Landroid/app/NotificationManager;->mEdgeNotificationManager:Landroid/app/NotificationManager$EdgeNotificationManager;

    if-eqz v1, :cond_2

    iget-object v1, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.notify_to_edge"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Landroid/app/NotificationManager;->mEdgeNotificationManager:Landroid/app/NotificationManager$EdgeNotificationManager;

    iget-object v1, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager$EdgeNotificationManager;->postEdgeNotification(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v1, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "samsung.people.cancel_to_edge"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Landroid/app/NotificationManager;->mEdgeNotificationManager:Landroid/app/NotificationManager$EdgeNotificationManager;

    iget-object v1, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotification(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v1, v0, Landroid/app/NotificationManager;->mEdgeNotificationManager:Landroid/app/NotificationManager$EdgeNotificationManager;

    invoke-virtual {v1, v4, v5}, Landroid/app/NotificationManager$EdgeNotificationManager;->postEdgeNotificationByNormal(ILandroid/app/Notification;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v11

    iget-object v1, v0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/NotificationManager;->discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v12

    if-eqz v12, :cond_3

    return-void

    :cond_3
    :try_start_0
    sget-object v1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": notify("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") as user"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/app/NotificationManager;->mBlockedChannelsForOverflowNoti:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    :try_start_1
    iget-object v1, v0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Landroid/app/INotificationManager;->getBlockInfoOfNotificationsForOverflow(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/app/NotificationManager;->mBlockedChannelsForOverflowNoti:Ljava/util/List;

    sget-object v1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " mBlockedChannelsForOverflowNoti="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/app/NotificationManager;->mBlockedChannelsForOverflowNoti:Ljava/util/List;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_0
    iget-object v1, v0, Landroid/app/NotificationManager;->mBlockedChannelsForOverflowNoti:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v10, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v12, v0, Landroid/app/NotificationManager;->mOverflowNotiUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v9, v0, Landroid/app/NotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Landroid/app/NotificationManager;->mReNotifyRunnable:Landroid/app/NotificationManager$ReNotifyRunnable;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroid/app/NotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Landroid/app/NotificationManager;->mReNotifyRunnable:Landroid/app/NotificationManager$ReNotifyRunnable;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v9, v0, Landroid/app/NotificationManager;->mOverflowNotiUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v7, v12

    const-wide/16 v14, 0x2710

    cmp-long v9, v12, v14

    if-gez v9, :cond_7

    new-instance v0, Landroid/app/NotificationManager$ReNotifyRunnable;

    move-object/from16 v1, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/NotificationManager$ReNotifyRunnable;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;J)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/app/NotificationManager;->mReNotifyRunnable:Landroid/app/NotificationManager$ReNotifyRunnable;

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/app/NotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroid/app/NotificationManager;->mReNotifyRunnable:Landroid/app/NotificationManager$ReNotifyRunnable;

    const-wide/16 v2, 0x27d8

    sub-long/2addr v2, v12

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    iget-object v1, v0, Landroid/app/NotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroid/app/NotificationManager;->mReNotifyRunnable:Landroid/app/NotificationManager$ReNotifyRunnable;

    sub-long/2addr v14, v12

    invoke-virtual {v1, v0, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Landroid/app/NotificationManager;->mOverflowChildUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v3, v0, Landroid/app/NotificationManager;->mOverflowNotiUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Landroid/app/NotificationManager;->mOverflowChildUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v3, v0, Landroid/app/NotificationManager;->mOverflowNotiUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_1
    iget-object v1, v0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5}, Landroid/app/NotificationManager;->fixNotification(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v0, v11

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "userHandle"

    invoke-static {v0, p2}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "executor"

    invoke-static {v0, p3}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "listener"

    invoke-static {v0, p4}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V

    iget-object p0, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    invoke-interface {p0, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v2}, Landroid/app/INotificationManager;->registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist removeAutomaticZenRule(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist removeAutomaticZenRule(Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o removeAutomaticZenRules(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist removeAutomaticZenRules(Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeWearableAppFromList(ILjava/lang/String;)Z
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->removeWearableAppFromList(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist requestListenerHintsForWearable(I)Z
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->requestListenerHintsForWearable(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist semAddReplyHistory(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface/range {p0 .. p6}, Landroid/app/INotificationManager;->addReplyHistory(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist semAreNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist semBindNotificationListener(Landroid/content/ComponentName;I)V
    .locals 1

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Landroid/app/INotificationManager;->registerNotificationListener(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist semGetNotificationHistoryForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface/range {p0 .. p6}, Landroid/app/INotificationManager;->getNotificationHistoryDataForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist semSetZenMode(I)V
    .locals 7

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "zen_duration_end_time"

    const-wide/16 v3, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-lez p0, :cond_0

    invoke-static {v5, v6, v1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v2, "called by SEP API"

    invoke-interface {v0, p1, p0, v2, v1}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist semUnBindNotificationListener(Landroid/content/ComponentName;I)V
    .locals 1

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Landroid/app/INotificationManager;->registerNotificationListener(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist semUpdateNotificationChannels(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p0, v1}, Landroid/app/INotificationManager;->updateNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method protected blacklist service()Landroid/app/INotificationManager;
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setAllowOngoingActivity(Ljava/lang/String;IZ)V
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setAllowOngoingActivity(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setAssistantAdjustmentKeyTypeState(IZ)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setAssistantAdjustmentKeyTypeState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setCanPostPromotedNotifications(Ljava/lang/String;IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/app/INotificationManager;->setCanBePromoted(Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setChannelCachesToTestMode()V
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->testPropertyName()V

    iget-object p0, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    invoke-virtual {p0}, Landroid/os/IpcDataCache;->testPropertyName()V

    return-void
.end method

.method public final whitelist setInterruptionFilter(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setInterruptionFilter(IZ)V

    return-void
.end method

.method public final blacklist setInterruptionFilter(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setNotificationDelegate(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": setNotificationDelegate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    return-void
.end method

.method public whitelist setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    const-wide/32 v1, 0x1208c096

    :try_start_0
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p1, p0, p2, p3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V

    return-void
.end method

.method public blacklist setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V
    .locals 1

    const-string/jumbo v0, "policy"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setToastRateLimitingEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->setToastRateLimitingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setWearableAppList(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setWearableAppList(ILjava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist shouldHideSilentStatusBarIcons()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist silenceNotificationSound()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/app/INotificationManager;->silenceNotificationSound()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist unregisterCallNotificationEventListener(Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "listener"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v2, p0}, Landroid/app/INotificationManager;->unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist updateCancelEvent(ILjava/lang/String;Z)V
    .locals 0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateCancelEvent(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public blacklist updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
