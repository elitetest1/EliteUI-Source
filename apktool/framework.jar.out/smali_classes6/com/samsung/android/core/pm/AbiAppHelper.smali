.class public Lcom/samsung/android/core/pm/AbiAppHelper;
.super Ljava/lang/Object;
.source "AbiAppHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationPackageManager"


# instance fields
.field private blacklist is32bitAppRunningInAbi64:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/core/pm/AbiAppHelper;->is32bitAppRunningInAbi64:Z

    return-void
.end method


# virtual methods
.method public blacklist canAccessApkFile(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 v0, 0x400

    invoke-virtual {p2, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/core/pm/AbiAppHelper;->canAccessApkFile(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public blacklist canAccessApkFile(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    iget-boolean p0, p0, Lcom/samsung/android/core/pm/AbiAppHelper;->is32bitAppRunningInAbi64:Z

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    if-nez p0, :cond_4

    iget-boolean p0, p2, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long p0, v1, v3

    if-gez p0, :cond_3

    return v0

    :cond_3
    return p1

    :cond_4
    :goto_0
    return v0
.end method
