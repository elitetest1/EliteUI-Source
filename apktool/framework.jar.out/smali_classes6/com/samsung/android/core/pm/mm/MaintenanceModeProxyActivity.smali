.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeProxyActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsTablet:Z

.field private blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mIsTablet:Z

    return-void
.end method

.method private blacklist showToast(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    const v2, 0x10407f4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const-string p1, ""

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x10407f5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x10407fe

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x10407fd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x10407ea

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x10407f8

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mIsTablet:Z

    if-eqz v1, :cond_5

    const v1, 0x10407f7

    goto :goto_0

    :cond_5
    const v1, 0x10407f6

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    return-void
.end method

.method private blacklist startIntroActivity()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start Intro activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mIsTablet:Z

    iget-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->checkRequiredConditions(Landroid/content/Context;Z)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->startIntroActivity()V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->finish()V

    return-void
.end method
