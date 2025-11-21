.class Lcom/sec/android/iaft/IAFDServiceImpl;
.super Ljava/lang/Object;
.source "IAFDServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAFDServiceImpl"


# instance fields
.field private blacklist apiSMManager:Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

.field private blacklist mIAFDGetHotfixDataService:Lcom/sec/android/iaft/IAFDSocketFdServer;

.field private blacklist mIAFDRepair:Lcom/sec/android/iaft/IAFDRepair;

.field private blacklist mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDServiceImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mHandler:Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIAFDGetHotfixDataService(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDSocketFdServer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mIAFDGetHotfixDataService:Lcom/sec/android/iaft/IAFDSocketFdServer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIAFDRepair(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDRepair;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mIAFDRepair:Lcom/sec/android/iaft/IAFDRepair;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mIAFDstartApp(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/iaft/IAFDServiceImpl;->IAFDstartApp(Landroid/os/Bundle;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckUpdate(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDServiceImpl;->checkUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/sec/android/iaft/IAFDDiagnosis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mIAFDGetHotfixDataService:Lcom/sec/android/iaft/IAFDSocketFdServer;

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDServiceImpl;->init()V

    return-void
.end method

.method private blacklist IAFDstartApp(Landroid/os/Bundle;Z)Z
    .locals 7

    const-string/jumbo v0, "vocApp"

    const-string v1, "dualUserId"

    const-string v2, "IAFDServiceImpl"

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string p2, "hasUpdate"

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    const-string/jumbo v4, "repairType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDServiceImpl;->getDualUserIdAndIsNoSettingsProvidersOfDual()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x5f

    if-eq v5, v1, :cond_2

    const/16 v1, 0x60

    if-eq v5, v1, :cond_2

    move v4, v3

    :cond_2
    :goto_1
    if-nez p2, :cond_5

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo p2, "repairTrigAPP"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDServiceImpl;->reportErrorDataToServer(Landroid/os/Bundle;)V

    const-string/jumbo p2, "voc://view/faq?app=iafd"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "ShowAppErrorUiExt start voc app"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/iaft/IAFDServiceImpl;->showSystemAppDiaglog(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.sm.ACTION_START_THIRD_APP_ERROR_DIALOG"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v4, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string p0, "ShowAppErrorUiExt start sm app"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "ShowAppErrorUiExt fail, skip"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private blacklist checkUpdate(Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->apiSMManager:Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "versionCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Lcom/sec/android/iaft/IAFDServiceImpl$3;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/iaft/IAFDServiceImpl$3;-><init>(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->checkUpdate(Ljava/lang/String;JLcom/sec/android/iaft/SmLib_CheckUpdateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "hasUpdate"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p1, 0x6

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mHandler:Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist getDualUserIdAndIsNoSettingsProvidersOfDual()I
    .locals 4

    const-string p0, "/system/bin/sh"

    const-string v0, "-c"

    const-string v1, "dumpsys package com.android.providers.settings | grep User"

    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p0, 0x3e8

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    add-int/lit8 p0, p0, -0x1

    const-string v3, "    User "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "    User 0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "installed=false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 p0, 0x3a

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0

    :cond_2
    if-gez p0, :cond_0

    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private blacklist init()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageIAFDThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;-><init>(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mHandler:Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    new-instance v0, Lcom/sec/android/iaft/IAFDRepair;

    invoke-direct {v0}, Lcom/sec/android/iaft/IAFDRepair;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mIAFDRepair:Lcom/sec/android/iaft/IAFDRepair;

    new-instance v0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->apiSMManager:Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;

    new-instance v0, Lcom/sec/android/iaft/IAFDSocketFdServer;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/iaft/IAFDSocketFdServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mIAFDGetHotfixDataService:Lcom/sec/android/iaft/IAFDSocketFdServer;

    return-void
.end method

.method private blacklist showSystemAppDiaglog(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "System hint"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Happened exception in the running application, you can try to resolve it with the button of [Try to resolve]"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Try to resolve"

    new-instance v3, Lcom/sec/android/iaft/IAFDServiceImpl$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/sec/android/iaft/IAFDServiceImpl$2;-><init>(Lcom/sec/android/iaft/IAFDServiceImpl;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Cancel"

    new-instance v1, Lcom/sec/android/iaft/IAFDServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/sec/android/iaft/IAFDServiceImpl$1;-><init>(Lcom/sec/android/iaft/IAFDServiceImpl;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    const/16 p2, 0x7f6

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method blacklist IAFDServiceHandlerMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->mHandler:Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist reportErrorDataToServer(Landroid/os/Bundle;)V
    .locals 11

    :try_start_0
    const-string/jumbo v0, "pkgName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "error_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "component"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "versionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "versionName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl;->apiSMManager:Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->reportErrorDataToServer(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
