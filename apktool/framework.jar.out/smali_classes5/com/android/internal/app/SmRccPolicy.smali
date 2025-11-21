.class public final Lcom/android/internal/app/SmRccPolicy;
.super Ljava/lang/Object;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SmRccPolicy$MyHandler;,
        Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;,
        Lcom/android/internal/app/SmRccPolicy$RccApp;
    }
.end annotation


# static fields
.field private static final blacklist ACTION:Ljava/lang/String; = "action"

.field private static final blacklist ACTION_DELETE:Ljava/lang/String; = "delete"

.field private static final blacklist ACTION_INSERT:Ljava/lang/String; = "insert"

.field private static final blacklist ACTION_UPDATE_OPEN:Ljava/lang/String; = "update_open"

.field private static final blacklist ACTION_UPDATE_RESTRICT:Ljava/lang/String; = "update_restrict"

.field private static final blacklist ACTION_UPDATE_SHOW:Ljava/lang/String; = "update_show"

.field private static final blacklist MSG_LOAD_RCC_APP_LIST:I = 0xa

.field private static final blacklist MSG_RCC_APP_DELETE:I = 0x1e

.field private static final blacklist MSG_RCC_APP_INSERT:I = 0x14

.field private static final blacklist MSG_RCC_APP_RESET_OPEN:I = 0x46

.field private static final blacklist MSG_RCC_APP_UPDATE_OPEN:I = 0x32

.field private static final blacklist MSG_RCC_APP_UPDATE_RESTRICT:I = 0x3c

.field private static final blacklist MSG_RCC_APP_UPDATE_SHOW:I = 0x28

.field private static final blacklist OFF:Ljava/lang/String; = "0"

.field private static final blacklist ON:Ljava/lang/String; = "1"

.field private static final blacklist OPEN:Ljava/lang/String; = "open"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist RCC_APP_AUTHORITY_URI:Landroid/net/Uri;

.field private static final blacklist RCC_APP_CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist RESET_SM_RCC_OPEN:Ljava/lang/String; = "reset_sm_rcc_open"

.field private static final blacklist RESTRICT:Ljava/lang/String; = "restrict"

.field private static final blacklist SHOW:Ljava/lang/String; = "show"

.field public static final blacklist SM_RCC_ACTIVITY_OPTIONS:Ljava/lang/String; = "SM_RCC_PACKAGE_OPTIONS"

.field public static final blacklist SM_RCC_EXTRA_RESULT_NEEDED:Ljava/lang/String; = "SM_RCC_EXTRA_RESULT_NEEDED"

.field public static final blacklist SM_RCC_PACKAGE_INTENT:Ljava/lang/String; = "SM_RCC_PACKAGE_INTENT"

.field public static final blacklist SM_RCC_PACKAGE_USERID:Ljava/lang/String; = "SM_RCC_PACKAGE_USERID"

.field private static final blacklist TAG:Ljava/lang/String; = "SmRccPolicy"

.field private static blacklist mRccPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/SmRccPolicy$RccApp;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sInstance:Lcom/android/internal/app/SmRccPolicy;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$7k1oMVewu_bWfWJ50LKgCG5n5SI(Lcom/android/internal/app/SmRccPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/SmRccPolicy;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcallResetSmRccOpen(Lcom/android/internal/app/SmRccPolicy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->callResetSmRccOpen(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadRccAppFromSm(Lcom/android/internal/app/SmRccPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/SmRccPolicy;->loadRccAppFromSm()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sm.rcc/SmRccApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.rcc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_AUTHORITY_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmRccPolicy"

    const-string v1, "RccAppPolicy init"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RccAppThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/internal/app/SmRccPolicy$MyHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/SmRccPolicy$MyHandler;-><init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/internal/app/SmRccPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/internal/app/SmRccPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/SmRccPolicy;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist callResetSmRccOpen(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SmRccPolicy"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "reset_sm_rcc_open"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p0, "call sm reset rcc open status"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "call sm reset rcc open status error"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/app/SmRccPolicy;
    .locals 2

    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/internal/app/SmRccPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/app/SmRccPolicy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/SmRccPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    return-object p0
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/SmRccPolicy;->registerRccDBObserver()V

    return-void
.end method

.method private blacklist loadRccAppFromSm()V
    .locals 8

    const-string v0, "loadRccAppFromSm: "

    const-string v1, "SmRccPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "package_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "show"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "open"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "restrict"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    new-instance v6, Lcom/android/internal/app/SmRccPolicy$RccApp;

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/android/internal/app/SmRccPolicy$RccApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "put="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v2

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "loadRccAppFromSm error"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private blacklist registerRccDBObserver()V
    .locals 4

    const-string v0, "SmRccPolicy"

    :try_start_0
    new-instance v1, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;

    iget-object v2, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;-><init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo p0, "registerRccDBObserver"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v1, "registerRccDBObserver error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public blacklist addRccPackage(Lcom/android/internal/app/SmRccPolicy$RccApp;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getPkgName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addRccPackage: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmRccPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getSmRccAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.sm.security.RCC_START_APP"

    return-object p0
.end method

.method public blacklist isSmRccOpen(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getOpen()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSmRccOpen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",open="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmRccPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSmRccPkg(Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getShow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getRestrict()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSmRccPkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",show="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",restrict="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SmRccPolicy"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist loadData()V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string p0, "SmRccPolicy"

    const-string v0, "SmRcc handler is null, return"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist removeRccPackage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removeRccPackage: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmRccPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist resetSmRccOpen(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist updateRccOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/app/SmRccPolicy$RccApp;->setOpen(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "update rcc open pkg="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " open="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmRccPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist updateRccRestrict(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/app/SmRccPolicy$RccApp;->setRestrict(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "update rcc restrict pkg="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " restrict="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmRccPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist updateRccShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/app/SmRccPolicy$RccApp;->setShow(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "update rcc show pkg="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " show="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmRccPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
