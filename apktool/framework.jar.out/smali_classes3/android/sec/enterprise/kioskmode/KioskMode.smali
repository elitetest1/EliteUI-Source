.class public Landroid/sec/enterprise/kioskmode/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static blacklist CONTROL_PANEL_PKGNAME:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field public static blacklist MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = "com.sec.minimode.taskcloser"

.field private static final blacklist TAG:Ljava/lang/String; = "KioskMode"

.field public static blacklist TASK_MANAGER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.taskmanager"


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


# virtual methods
.method public blacklist isTaskManagerAllowed(Z)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isTaskManagerAllowed(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "KioskMode"

    const-string p1, "PXY-isTaskManagerAllowed returning default value"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
