.class Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudBackupReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$nMPZgTXPb-EYMZb6lP6FpKgzZoY(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceive$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$mupdateCloudBackupStatusFromReceiver(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {p2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$fgetmSingleThreadExecutor(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onReceive: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaintenanceMode"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
