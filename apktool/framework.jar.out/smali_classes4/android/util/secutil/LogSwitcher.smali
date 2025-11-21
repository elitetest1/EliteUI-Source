.class public final Landroid/util/secutil/LogSwitcher;
.super Ljava/lang/Object;
.source "LogSwitcher.java"


# static fields
.field public static blacklist isShowingGlobalLog:Z = false

.field public static blacklist isShowingSecDLog:Z = false

.field public static blacklist isShowingSecELog:Z = false

.field public static blacklist isShowingSecILog:Z = false

.field public static blacklist isShowingSecVLog:Z = false

.field public static blacklist isShowingSecWLog:Z = false

.field public static blacklist isShowingSecWtfLog:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
