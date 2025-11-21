.class public Landroid/app/BroadcastStickyCache;
.super Ljava/lang/Object;
.source "BroadcastStickyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    }
.end annotation


# static fields
.field public static final blacklist STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

.field public static final blacklist sActionApiNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sActionConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/IpcDataCache$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFilterCacheMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;",
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 24

    const-string v22, "android.intent.action.HDMI_PLUGGED"

    const-string v23, "android.net.conn.INET_CONDITION_ACTION"

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    const-string v2, "android.intent.action.HEADSET_PLUG"

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    const-string v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const-string v6, "android.media.RINGER_MODE_CHANGED"

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    const-string v9, "android.intent.action.DEVICE_STORAGE_FULL"

    const-string v10, "android.intent.action.DEVICE_STORAGE_LOW"

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    const-string v12, "android.net.nsd.STATE_CHANGED"

    const-string v13, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    const-string v14, "android.net.conn.TETHER_STATE_CHANGED"

    const-string v15, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    const-string v16, "android.hardware.usb.action.USB_STATE"

    const-string v17, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    const-string v18, "android.net.wifi.STATE_CHANGE"

    const-string v19, "android.net.wifi.supplicant.STATE_CHANGE"

    const-string v20, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string v21, "android.net.wifi.p2p.STATE_CHANGED"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/BroadcastStickyCache;->STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/BroadcastStickyCache;->sActionConfigMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    const-string v2, "hdmi_audio_plug"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    const-string v2, "headset_plug"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    const-string/jumbo v2, "sco_audio_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    const-string v2, "action_sco_audio_state_updated"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const-string v2, "internal_ringer_mode_changed_action"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    const-string/jumbo v2, "ringer_mode_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "connectivity_change"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    const-string v2, "battery_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    const-string v2, "device_storage_full"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    const-string v2, "device_storage_low"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    const-string/jumbo v2, "sim_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    const-string/jumbo v2, "nsd_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    const-string/jumbo v2, "service_providers_updated"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    const-string/jumbo v2, "tether_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    const-string/jumbo v2, "update_lock_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    const-string/jumbo v2, "usb_state"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    const-string/jumbo v2, "wifi_scan_availability_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    const-string/jumbo v2, "network_state_change"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    const-string/jumbo v2, "supplicant_state_change"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string/jumbo v2, "wifi_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    const-string/jumbo v2, "wifi_p2p_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    const-string v2, "hdmi_plugged"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    const-string v2, "inet_condition_action"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearCacheForTest()V
    .locals 2

    const-class v0, Landroid/app/BroadcastStickyCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->useStickyBcastCache()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-class p0, Landroid/app/BroadcastStickyCache;

    monitor-enter p0

    :try_start_0
    invoke-static {v0}, Landroid/app/BroadcastStickyCache;->dumpCacheLocked(Ljava/io/PrintWriter;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static blacklist dumpCacheLocked(Ljava/io/PrintWriter;)V
    .locals 7

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p0, v1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cached sticky broadcasts:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object v1, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "<empty>"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IpcDataCache;

    const-string v5, "Entry #"

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v5, "action"

    invoke-static {v4}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->-$$Nest$fgetaction(Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-static {v4}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->-$$Nest$fgetfilter(Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;)Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter;->toLongString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v0, v5, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3, p0}, Landroid/os/IpcDataCache;->dumpCacheEntries(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method private static blacklist findIpcDataCache(Landroid/content/IntentFilter;)Landroid/os/IpcDataCache;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IpcDataCache;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getConfig(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;
    .locals 5

    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/IpcDataCache$Config;

    sget-object v2, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x20

    const-string/jumbo v4, "system_server"

    invoke-direct {v1, v3, v4, v2}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IpcDataCache$Config;

    return-object p0
.end method

.method public static blacklist getIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 13

    move-object/from16 v4, p3

    const-class v8, Landroid/app/BroadcastStickyCache;

    monitor-enter v8

    :try_start_0
    invoke-static {v4}, Landroid/app/BroadcastStickyCache;->findIpcDataCache(Landroid/content/IntentFilter;)Landroid/os/IpcDataCache;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    invoke-direct {v10, v4, v0, v9}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;-><init>(Landroid/content/IntentFilter;Ljava/lang/String;Landroid/app/BroadcastStickyCache-IA;)V

    invoke-static {v0}, Landroid/app/BroadcastStickyCache;->getConfig(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v11

    new-instance v12, Landroid/os/IpcDataCache;

    new-instance v0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;-><init>(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;II)V

    invoke-direct {v12, v11, v0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sget-object p0, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v12

    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v9}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist invalidateAllCaches()V
    .locals 3

    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system_server"

    invoke-static {v2, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/Flags;->useStickyBcastCache()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/BroadcastStickyCache;->STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "system_server"

    invoke-static {v0, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$getIntent$0(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;IILjava/lang/Void;)Landroid/content/Intent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string/jumbo v4, "null"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist useCache(Landroid/content/IntentFilter;)Z
    .locals 3

    invoke-static {}, Landroid/app/Flags;->useStickyBcastCache()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/IntentFilter;->safeCountActions()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/app/BroadcastStickyCache;->STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method
