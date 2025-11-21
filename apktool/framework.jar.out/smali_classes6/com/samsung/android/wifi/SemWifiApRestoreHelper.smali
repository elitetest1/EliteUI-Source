.class public Lcom/samsung/android/wifi/SemWifiApRestoreHelper;
.super Ljava/lang/Object;
.source "SemWifiApRestoreHelper.java"


# static fields
.field public static final blacklist KEY_OPEN_INDEX:Ljava/lang/String; = "open_index"

.field public static final blacklist KEY_PASSWORD:Ljava/lang/String; = "shared_password"

.field public static final blacklist KEY_SECURITY_TYPE:Ljava/lang/String; = "security_type"

.field public static final blacklist KEY_SSID:Ljava/lang/String; = "shared_ssid"

.field public static final blacklist KEY_WPA_INDEX:Ljava/lang/String; = "wpa_index"

.field private static blacklist TAG:Ljava/lang/String; = "SemWifiApRestoreHelper"

.field public static final blacklist WPA2_INDEX:Ljava/lang/String; = "wpa2_index"

.field public static final blacklist WPA3_INDEX:Ljava/lang/String; = "wpa3_index"

.field public static final blacklist WPA3_TRANSITION_INDEX:Ljava/lang/String; = "wpa3_transition_index"


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

.method public static blacklist getPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "shared_password"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "getPassword() - is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "got Password() sucess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static blacklist getSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "shared_ssid"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSSID() - Getting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static blacklist getSecurityType(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSecurityTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wpa2_index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v0, "getSecurityType() - Getting: KeyMgmt.WPA2_PSK"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "wpa3_index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v0, "getSecurityType() - Getting: KeyMgmt.SOFTAP_WPA3_SAE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string/jumbo v0, "wpa3_transition_index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v0, "getSecurityType() - Getting: KeyMgmt.SOFTAP_WPA3_SAE_TRANSITION"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_2
    sget-object p0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v0, "getSecurityType() - Getting: KeyMgmt.NONE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getSecurityTypeAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "security_type"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSecurityTypeAsString() - Getting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static blacklist isRestoreNetworkPasswordDialogToBeShowOnce(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_is_restore_network_password_dialog_to_be_shown_once"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v0, "Show restore dialog Flag not set. [Not required to show dialog]"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->isRestoreSsidSameAsSoftApSsid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "SSID in Content Provider is same as current SSID. [Not required to show dialog]"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setRestoreNetworkPasswordDialogToBeShowOnce(Landroid/content/Context;Z)V

    :cond_2
    return v2

    :cond_3
    sget-object p0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v0, "Showing restoring dialog might be required. [Further Need to check EDM policy & AH connection]"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static blacklist isRestoreSsidSameAsSoftApSsid(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSID in Content Provider is different from current SSID. contentProviderSSID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", networkName: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setApConfiguration(softApConfiguration) - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setPassword(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSecurityTypeIndex(Landroid/content/Context;I)V

    return-void
.end method

.method public static blacklist setCurrentApConfiguration(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCurrentApConfiguration() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setPassword(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSecurityTypeIndex(Landroid/content/Context;I)V

    return-void
.end method

.method public static blacklist setPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "xxxxxx"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setPassword() - Setting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "shared_password"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist setRestoreNetworkPasswordDialogToBeShowOnce(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRestoreNetworkPasswordDialogRequiredToShow() - Setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi_ap_is_restore_network_password_dialog_to_be_shown_once"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static blacklist setSSID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSSID() - Setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "shared_ssid"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setRestoreNetworkPasswordDialogToBeShowOnce(Landroid/content/Context;Z)V

    return-void
.end method

.method private static blacklist setSecurityType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSecurityType() - Setting securityType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "security_type"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist setSecurityTypeIndex(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSecurityType() - Setting securityTypeIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "wpa2_index"

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "wpa3_index"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string/jumbo p1, "wpa3_transition_index"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "open_index"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSecurityType(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
