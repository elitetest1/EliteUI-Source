.class public Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;
.super Ljava/lang/Object;
.source "SemWifiApAutoHotspotHelper.java"


# static fields
.field public static final blacklist KEY_CAN_AUTO_HOTSPOT_BE_ENABLED:Ljava/lang/String; = "key_can_auto_hotspot_be_enabled"

.field private static blacklist TAG:Ljava/lang/String; = "SemWifiApAutoHotspotHelper"

.field public static final blacklist VALUE_FALSE:Ljava/lang/String; = "0"

.field public static final blacklist VALUE_TRUE:Ljava/lang/String; = "1"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getIfAutoHotspotCanBeEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->canAutoHotspotBeEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;->setIfAutoHotspotCanBeEnabled(Landroid/content/Context;Z)V

    const-string v0, "key_can_auto_hotspot_be_enabled"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIfAutoHotspotCanBeEnabled() - Getting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist setIfAutoHotspotCanBeEnabled(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setIfAutoHotspotCanBeEnabled() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "key_can_auto_hotspot_be_enabled"

    if-eqz p1, :cond_0

    const-string p1, "1"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "0"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
