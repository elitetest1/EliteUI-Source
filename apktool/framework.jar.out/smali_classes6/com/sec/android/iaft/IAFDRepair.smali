.class Lcom/sec/android/iaft/IAFDRepair;
.super Ljava/lang/Object;
.source "IAFDRepair.java"


# static fields
.field public static final blacklist EXP_REPAIRMODE_ONEACTIVITY:I = 0x2

.field public static final blacklist EXP_REPAIRMODE_ONEKEY:I = 0x1

.field public static final blacklist EXP_REPAIRMODE_ONLYTIPS:I = 0x3

.field public static final blacklist EXP_REPAIR_CANNOT:I = 0x0

.field public static final blacklist EXP_REPAIR_ISOLABLE:I = 0x2

.field public static final blacklist EXP_REPAIR_PILE:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist repair_NoEnoughSpace(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist repair_NoSettingsProvidersForDual(Landroid/content/Context;I)Z
    .locals 1

    const-string/jumbo p0, "pm install-existing --user "

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " com.android.providers.settings"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist repair_WebView(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist repair_allfile(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    const-string/jumbo p0, "package:"

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist repairHandle(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 4

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p1, v0, v1}, Lcom/sec/android/iaft/IAFDHotfix;->hotfix(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    const/16 v3, 0x13

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "dualUserId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/iaft/IAFDRepair;->repair_NoSettingsProvidersForDual(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/iaft/IAFDRepair;->repair_NoEnoughSpace(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/iaft/IAFDRepair;->repair_allfile(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/iaft/IAFDRepair;->repair_WebView(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :cond_4
    :goto_0
    return v2

    :catch_0
    const/4 v2, 0x0

    :catch_1
    return v2
.end method
