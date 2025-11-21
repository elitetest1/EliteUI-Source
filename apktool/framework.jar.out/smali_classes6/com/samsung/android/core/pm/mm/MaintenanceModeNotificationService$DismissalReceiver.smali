.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService$DismissalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DismissalReceiver"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "MaintenanceMode"

    const-string p2, "Notification has been dismissed!"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x4d

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->-$$Nest$smcreateNotificationChannel(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->-$$Nest$smregisterNotification(Landroid/content/Context;)V

    return-void
.end method
