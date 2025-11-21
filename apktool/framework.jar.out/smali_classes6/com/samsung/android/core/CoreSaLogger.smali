.class public Lcom/samsung/android/core/CoreSaLogger;
.super Ljava/lang/Object;
.source "CoreSaLogger.java"


# static fields
.field private static final blacklist ADVANCED_TRACKING_ID:Ljava/lang/String; = "408-399-975257"

.field private static final blacklist BASIC_TRACKING_ID:Ljava/lang/String; = "4F4-399-995755"

.field public static final blacklist DETAIL_KEY:Ljava/lang/String; = "det"

.field private static final blacklist DEX_TRACKING_ID:Ljava/lang/String; = "403-399-565756"

.field private static final blacklist DIMENSION_KEY:Ljava/lang/String; = "dimension"

.field private static final blacklist DIMENSION_VALUE_KEY1:Ljava/lang/String; = "d_key1"

.field private static final blacklist EXTRA_KEY:Ljava/lang/String; = "extra"

.field private static final blacklist FEATURE_KEY:Ljava/lang/String; = "feature"

.field private static final blacklist IS_FACTORY_BINARY:Z

.field public static final blacklist MODE_KEY:Ljava/lang/String; = "mode"

.field private static final blacklist NULL_VALUE:I = -0x1

.field private static final blacklist PACKAGE_NAME_KEY:Ljava/lang/String; = "pkg_name"

.field private static final blacklist PAGE_ID_KEY:Ljava/lang/String; = "page_id"

.field private static final blacklist SA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final blacklist SA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist SCREEN_ID_KEY:Ljava/lang/String; = "screen_id"

.field private static final blacklist SETTING_KEY:Ljava/lang/String; = "setting"

.field private static final blacklist SYSTEMUI_TRACKING_ID:Ljava/lang/String; = "472-399-5110257"

.field private static final blacklist TAG:Ljava/lang/String; = "CoreSaLogger"

.field private static final blacklist TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field private static final blacklist TYPE_KEY:Ljava/lang/String; = "type"

.field private static final blacklist TYPE_VALUE_EV:Ljava/lang/String; = "ev"

.field private static final blacklist TYPE_VALUE_ST:Ljava/lang/String; = "st"

.field private static final blacklist VALUE_KEY:Ljava/lang/String; = "value"

.field private static final blacklist sCustomDimensionForMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSettingMapForAdvanced:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSettingMapForBasic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSettingMapForDex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sCustomDimensionForMode:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSettingMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "4F4-399-995755"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "408-399-975257"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "403-399-565756"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "CoreSaLogger"

    const-string v0, "Invalid tracking id"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x38ce124c -> :sswitch_2
        -0xb747038 -> :sswitch_1
        0x5523cb27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcast$0(Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "page_id"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_1

    const-string/jumbo p7, "screen_id"

    invoke-virtual {v0, p7, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p7, "feature"

    invoke-virtual {v0, p7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p7, "extra"

    if-eqz p1, :cond_2

    invoke-virtual {v0, p7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/16 v1, -0x1

    cmp-long p8, p2, v1

    if-eqz p8, :cond_3

    const-string/jumbo p8, "value"

    invoke-virtual {v0, p8, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    const-string p8, "dimension"

    if-eqz p4, :cond_4

    invoke-virtual {v0, p8, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_4
    const-string p4, "408-399-975257"

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p4, "None"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    sget-object p4, Lcom/samsung/android/core/CoreSaLogger;->sCustomDimensionForMode:Ljava/util/HashMap;

    const-string/jumbo p6, "mode"

    invoke-virtual {p4, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p8, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_5
    const-string/jumbo p4, "type"

    const-string p5, "ev"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "pkg_name"

    const-string p5, "com.samsung.android.appcore"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "1004"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_8

    const-string p4, "1005"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_0

    :cond_6
    const-string p4, "2000"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "2504"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    :cond_7
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string p5, "d_key1"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p8, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_8
    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "MULTI_WIN_APP_RECOMMEND"

    filled-new-array {p7}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p3, "personalizedData"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_9
    :goto_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.sec.android.diagmonagent"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x4000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    sget-object p3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p9, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SA_RUNESTONE_LOGGING:Z

    if-eqz p2, :cond_a

    invoke-static {p9, p0, p1}, Lcom/samsung/android/core/RunestoneLogger;->interpretSaToRunestone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcastForAdvancedSetting$3(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "408-399-975257"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcastForBasicSetting$2(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "4F4-399-995755"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcastForSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/core/CoreSaLogger;->putToSettingMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "CoreSaLogger"

    const-string p1, "Null setting"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-static {p3, p0, p1, p2}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    int-to-long v5, p2

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "4F4-399-995755"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;I)V
    .locals 8

    int-to-long v5, p1

    const/4 v7, 0x0

    const-string v0, "4F4-399-995755"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "4F4-399-995755"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-string v0, "4F4-399-995755"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexMW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexMW(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    int-to-long v5, p2

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexWithScreenId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexWithScreenId(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexWithScreenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexWithScreenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    int-to-long v5, p3

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexWithScreenId(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForMWWithPageId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForMWWithPageId(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v0, "408-399-975257"

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForMWWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-string v0, "408-399-975257"

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForSystemUI(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-string v0, "472-399-5110257"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "408-399-975257"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "4F4-399-995755"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist putToSettingMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->getSettingMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static blacklist sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_0

    const-string p0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to sendSaLoggingBroadcast"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static blacklist sendSaLoggingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda3;

    move-object v11, p0

    move-object v9, p1

    move-object v8, p2

    move-object v10, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blacklist sendSaLoggingBroadcastForAdvancedSetting(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blacklist sendSaLoggingBroadcastForBasicSetting(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blacklist sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "CoreSaLogger"

    const-string p1, "Null trackingId or settingId"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->getSettingMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object p2, p3

    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "tracking_id"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "pkg_name"

    const-string v0, "com.samsung.android.appcore"

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    const-string/jumbo v0, "st"

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "setting"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.sec.android.diagmonagent"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static blacklist sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_0

    const-string p0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to sendSaLoggingBroadcastForSetting"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
