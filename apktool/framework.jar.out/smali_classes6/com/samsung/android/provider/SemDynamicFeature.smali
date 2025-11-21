.class public final Lcom/samsung/android/provider/SemDynamicFeature;
.super Ljava/lang/Object;
.source "SemDynamicFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_KEY_NAME:Ljava/lang/String; = "persist.sys.df.enabled"

.field private static blacklist ALLOWED_COUNTRY_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FORCE_ENABLE:Ljava/lang/String; = "persist.sys.df.system.FORCE_ENABLE"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "dynamic_feature"

.field private static final blacklist TAG:Ljava/lang/String; = "SemDynamicFeature"

.field private static blacklist dfManager:Lcom/samsung/android/provider/DynamicFeatureManager; = null

.field private static blacklist sInit:Z = false

.field private static blacklist sSuitable:Z = false


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdfManager()Lcom/samsung/android/provider/DynamicFeatureManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputdfManager(Lcom/samsung/android/provider/DynamicFeatureManager;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/provider/SemDynamicFeature;->getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "KR"

    const-string v2, "KOREA"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->ALLOWED_COUNTRY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist getProperties(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/provider/SemDynamicFeature;->getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    const-string v0, "SemDynamicFeature"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Failed to get dfManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/provider/DynamicFeatureManager;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Remote Exception"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static blacklist getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/provider/Feature;
    .locals 1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/provider/SemDynamicFeature;->getProperties(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->getFeature(Ljava/lang/String;)Lcom/samsung/android/provider/Feature;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;
    .locals 4

    const-string v0, "SemDynamicFeature"

    const-string v1, "dfManager : "

    const-string v2, "dfManager: "

    sget-object v3, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    const-string v3, "dynamic_feature"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/provider/DynamicFeatureManager;

    sput-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    return-object p0
.end method

.method public static blacklist getVid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/provider/SemDynamicFeature;->getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    if-nez p0, :cond_0

    const-string p0, "SemDynamicFeature"

    const-string v0, "Failed to get dfManager"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/provider/DynamicFeatureManager;->getVid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isAllowedCSCCountry()Z
    .locals 5

    const-string v0, "SemDynamicFeature"

    const-string v1, "locale is not allowed "

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/provider/SemDynamicFeature;->ALLOWED_COUNTRY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAllowedCountry : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static blacklist isBetaBinaryType()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string/jumbo v1, "test-keys"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "C"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isForceEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "persist.sys.df.system.FORCE_ENABLE"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isForceEnabled : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemDynamicFeature"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static blacklist isSuitable()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sInit:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sSuitable:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isTestBinary()Z
    .locals 5

    const-string v0, "SemDynamicFeature"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "ro.build.type"

    const-string v4, "UNKNOWN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "eng"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2

    const-string v4, "This is a test binary "

    goto :goto_0

    :cond_2
    const-string v4, "This is not a test binary "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to read binary type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static blacklist markDisabled()V
    .locals 2

    const-string/jumbo v0, "persist.sys.df.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist markEnabled()V
    .locals 2

    const-string/jumbo v0, "persist.sys.df.enabled"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist setEndpoint(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/provider/SemDynamicFeature;->getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    if-nez p0, :cond_0

    const-string p0, "SemDynamicFeature"

    const-string p1, "Failed to get dfManager"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/provider/DynamicFeatureManager;->setEndpoint(I)I

    move-result p0

    return p0
.end method
