.class public Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;
.super Ljava/lang/Object;
.source "SmLib_IafdSmAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Dc.IafdSmAPIManager"


# instance fields
.field private final blacklist mCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLastCheckTime:J

.field private final blacklist mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/iaft/SmLib_CheckUpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCache(Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateCallbackMap(Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mLastCheckTime:J

    return-void
.end method


# virtual methods
.method public blacklist checkUpdate(Ljava/lang/String;JLcom/sec/android/iaft/SmLib_CheckUpdateCallback;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Dc.IafdSmAPIManager"

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v2, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/iaft/SmLib_CheckUpdateCallback;->onResult(IJLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "pkgName is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v2, p4

    iget-object p4, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    if-nez p4, :cond_1

    new-instance p4, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p4, p0, v0}, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$1;-><init>(Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    iget-object p4, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    sget-object v0, Lcom/sec/android/iaft/SmLib_IafdConstant;->IAFD_STUB_EX_CHECK_UPDATE_API:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p4, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-wide v3, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mLastCheckTime:J

    const-wide/16 v5, -0x1

    cmp-long p4, v3, v5

    if-nez p4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mLastCheckTime:J

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mLastCheckTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x2932e00

    cmp-long p4, v3, v5

    if-lez p4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mLastCheckTime:J

    const-string p4, "cache is expired clear it"

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    iget-object p4, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;

    if-eqz p4, :cond_4

    if-eqz v2, :cond_4

    const-string/jumbo p0, "using cache "

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p4, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;->resultCode:I

    iget-wide v4, p4, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;->versionCode:J

    iget-object v6, p4, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;->versionName:Ljava/lang/String;

    iget-object v7, p4, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;->pkgName:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/iaft/SmLib_CheckUpdateCallback;->onResult(IJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "pkgName"

    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "versionCode"

    invoke-virtual {p4, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "checkUpdate"

    const/4 p2, 0x0

    const-string p3, "com.samsung.android.sm.dcapi"

    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public blacklist onDestroy()V
    .locals 3

    const-string v0, "Dc.IafdSmAPIManager"

    :try_start_0
    const-string/jumbo v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p0, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v1, "onDestroy "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist reportErrorDataToServer(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "type"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_stack"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "component"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "versionCode"

    invoke-virtual {v0, p1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "app_name"

    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "version_name"

    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "reportToServer"

    const/4 p2, 0x0

    const-string p3, "com.samsung.android.sm.dcapi"

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
