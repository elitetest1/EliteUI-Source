.class public final Lcom/samsung/android/hardware/display/RefreshRateConfig;
.super Ljava/lang/Object;
.source "RefreshRateConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;,
        Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    }
.end annotation


# static fields
.field private static final blacklist PROPERTY_AMBIENT_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.ambient_brightness"

.field private static final blacklist PROPERTY_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.display_brightness"

.field private static final blacklist PROPERTY_SUB_AMBIENT_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.sub_ambient_brightness"

.field private static final blacklist PROPERTY_SUB_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.sub_display_brightness"

.field private static final blacklist TYPE_SEAMLESS:I = 0x2

.field private static final blacklist TYPE_SEAMLESS_PLUS:I = 0x3

.field private static final blacklist TYPE_SWITCHABLE:I = 0x1

.field private static blacklist sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig; = null

.field private static blacklist sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig; = null

.field private static blacklist sIsFolded:Z = false

.field private static blacklist sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;


# instance fields
.field private blacklist mBrightnessThreshold:Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

.field private final blacklist mDisplayType:I

.field blacklist mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

.field blacklist mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

.field private final blacklist mUnsupportedNS:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mUnsupportedNS:Z

    iput-object p4, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mBrightnessThreshold:Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    return-void
.end method

.method public static blacklist createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)V

    return-object v0
.end method

.method public static blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    const-string v1, "RefreshRateConfigs"

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  SUB_HFR_MODE: 0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  SUB_HFR_SUPPORTED_REFRESH_RATE: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  SUB_HFR_SUPPORTED_REFRESH_RATE_NS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  SUB_SEAMLESS_BRT: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  persist.dm.passive.sub_display_brightness: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  SUB_SEAMLESS_LUX: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  persist.dm.passive.sub_ambient_brightness: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HFR_DEFAULT_REFRESH_RATE: 120"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HFR_MODE: 2"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HFR_SUPPORTED_REFRESH_RATE: 60,120"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HFR_SUPPORTED_REFRESH_RATE_NS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SEAMLESS_BRT: 89,91"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "persist.dm.passive.display_brightness: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SEAMLESS_LUX: 200,2500"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "persist.dm.passive.ambient_brightness: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static blacklist getExtraInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .locals 4

    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    const-string/jumbo v1, "persist.dm.passive.sub_display_brightness"

    const-string/jumbo v2, "persist.dm.passive.sub_ambient_brightness"

    const-string v3, ""

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    invoke-static {v1, v3, v3, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sExtraInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-object v0
.end method

.method public static blacklist getInstance(I)Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOLD:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsFolded:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getExtraInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getMainInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Z)Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getExtraInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getMainInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getMainInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .locals 5

    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    const-string/jumbo v1, "persist.dm.passive.display_brightness"

    const-string/jumbo v2, "persist.dm.passive.ambient_brightness"

    const-string v3, "89,91"

    const-string v4, "200,2500"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2"

    const-string v2, "60,120"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-object v0
.end method

.method public static blacklist isInExtraDisplay()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsFolded:Z

    return v0
.end method

.method private static blacklist isInPrimaryDevice(Landroid/view/DisplayAddress;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist updateFoldStateIfNeeded(Landroid/view/DisplayAddress;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isInPrimaryDevice(Landroid/view/DisplayAddress;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sput-boolean p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsFolded:Z

    return-void
.end method


# virtual methods
.method public blacklist createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .locals 1

    new-instance p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;-><init>(Ljava/lang/String;ZLcom/samsung/android/hardware/display/RefreshRateConfig-IA;)V

    return-object p0
.end method

.method public blacklist getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mBrightnessThreshold:Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    return-object p0
.end method

.method public blacklist getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-object p0
.end method

.method public blacklist getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-object p0
.end method

.method public blacklist isSeamless()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSeamlessPlus()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSwitchable()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist unsupportedNS()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mUnsupportedNS:Z

    return p0
.end method
