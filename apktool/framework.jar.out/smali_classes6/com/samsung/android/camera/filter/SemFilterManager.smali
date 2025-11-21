.class public Lcom/samsung/android/camera/filter/SemFilterManager;
.super Ljava/lang/Object;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;,
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
    }
.end annotation


# static fields
.field private static final blacklist AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final blacklist BASE_URI:Landroid/net/Uri;

.field private static final blacklist FILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final blacklist FILTER_CATEGORY:Ljava/lang/String; = "category"

.field public static final whitelist FILTER_EVENT_ADD:I = 0x0

.field public static final whitelist FILTER_EVENT_DELETE:I = 0x1

.field public static final whitelist FILTER_EVENT_LOCALE_CHANGE:I = 0x2

.field public static final whitelist FILTER_EVENT_RESET:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation
.end field

.field private static final blacklist FILTER_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final blacklist FILTER_NAME:Ljava/lang/String; = "name"

.field private static final blacklist FILTER_PACKAGE:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final blacklist FILTER_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist FILTER_PROJECTION:[Ljava/lang/String;

.field private static final blacklist FILTER_TITLE:Ljava/lang/String; = "title"

.field private static final blacklist FILTER_TITLE_ID:Ljava/lang/String; = "title_id"

.field private static final blacklist FILTER_URI:Landroid/net/Uri;

.field private static final blacklist FILTER_VENDOR:Ljava/lang/String; = "vendor"

.field private static final blacklist FILTER_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist INDEX_FILTER_CATEGORY:I = 0x4

.field private static final blacklist INDEX_FILTER_FILE_NAME:I = 0x1

.field private static final blacklist INDEX_FILTER_NAME:I = 0x0

.field private static final blacklist INDEX_FILTER_PACKAGE_NAME:I = 0x2

.field private static final blacklist INDEX_FILTER_TITLE_ID:I = 0x6

.field private static final blacklist INDEX_FILTER_VENDOR:I = 0x3

.field private static final blacklist INDEX_FILTER_VERSION:I = 0x5

.field private static final blacklist MYFILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/myfilter"

.field private static final blacklist MYFILTER_SEPERATOR:Ljava/lang/String; = "[MYFILTER]"

.field private static final blacklist MYFILTER_URI:Landroid/net/Uri;

.field private static final blacklist SI_KEY_FILTER_VALUE_GS_NO_EFFECT:I = 0x190

.field private static final blacklist TAG:Ljava/lang/String; = "SemFilterManager"

.field private static final blacklist TYPE_EFFECT_CUSTOMCOLOR:I = 0x1a9

.field private static final blacklist TYPE_EFFECT_DISTORTION_CORRECTION:I = 0x1bf

.field private static final blacklist TYPE_EFFECT_FOOD:I = 0x1c2

.field public static final whitelist TYPE_FILTER_BASIC:I = 0x64

.field public static final whitelist TYPE_FILTER_EXTENDED:I = 0x65
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation
.end field

.field public static final whitelist TYPE_FILTER_USER_GENERATED:I = 0x66

.field private static final blacklist notiAddUri:Landroid/net/Uri;

.field private static final blacklist notiDeleteUri:Landroid/net/Uri;

.field private static final blacklist notiLocaleChangeUri:Landroid/net/Uri;


# instance fields
.field private blacklist mCallbackHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFilterAddObserver:Landroid/database/ContentObserver;

.field private blacklist mFilterDeleteObserver:Landroid/database/ContentObserver;

.field private blacklist mLocaleChangeObserver:Landroid/database/ContentObserver;

.field private blacklist mObserverHandler:Landroid/os/Handler;

.field private blacklist mObserverHandlerThread:Landroid/os/HandlerThread;

.field blacklist mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/myfilter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyAdd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyDelete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyLocaleChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "title_id"

    const-string/jumbo v1, "name"

    const-string v2, "filename"

    const-string/jumbo v3, "package_name"

    const-string/jumbo v4, "vendor"

    const-string v5, "category"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SemFilter ContentObserver"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/camera/filter/SemFilterManager$1;

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/camera/filter/SemFilterManager$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/camera/filter/SemFilterManager$2;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/samsung/android/camera/filter/SemFilterManager$3;

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/camera/filter/SemFilterManager$3;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->registerObserver()V

    return-void
.end method

.method private blacklist loadFilter()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    const-string v0, "[SemFilterManager] loadFilter()"

    const-string v1, "SemFilterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    :try_start_0
    const-string p0, "[SemFilterManager] loadFilter() cursor is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v9, 0x6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v9, "getResourcesForApplication or getString encounter exception"

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v7

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "packageName : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filterFullName : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterIdentifier : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    new-instance v5, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    move-object v6, v8

    move-object v8, v0

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v3, :cond_a

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw p0
.end method

.method private blacklist registerObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist unRegisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public whitelist close()V
    .locals 5

    const-string/jumbo v0, "stopHandler : interrupted - "

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "SemFilterManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    throw v0

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->unRegisterObserver()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->close()V

    return-void
.end method

.method public blacklist getAvailableFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->loadFilter()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getAvailableFilters(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1a9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1c2

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableMyFilters()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "com.samsung.android.provider"

    const-string v3, "SelfieFaceCorrection"

    const/16 v4, 0x1bf

    const-string v5, "Selfie Face Correction"

    const-string v6, "SAMSUNG_MOBILE"

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const/16 v5, 0x1a9

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v10, 0x0

    const-string v4, "com.samsung.android.provider"

    const-string v5, "Food"

    const/16 v6, 0x1c2

    const-string v7, "Food"

    const-string v8, "SAMSUNG_MOBILE"

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "com.samsung.android.provider"

    const-string v3, "Food"

    const/16 v4, 0x1c2

    const-string v5, "Food"

    const-string v6, "SAMSUNG_MOBILE"

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const/16 v5, 0x1a9

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAvailableMyFilters()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    const-string v0, "Unnamed filter"

    const-string v1, "[SemFilterManager] getAvailableMyFilters()"

    const-string v2, "SemFilterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    const-string v9, "filter_order"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "[SemFilterManager] getAvailableMyFilters() cursor is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_5

    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "myFilterName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", myFilterFileName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v5, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MYFILTER]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v6

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_2
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public whitelist getFilter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/camera/filter/SemFilter;
    .locals 10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getFilter : type : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",  filterName : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",  filterFileName"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", filterPackageName : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFilterManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1a9

    const/16 v2, 0x1c2

    if-eq p1, v2, :cond_1

    if-eq p1, p0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string p0, "There\'s no filter file"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/16 v0, 0x64

    if-eq p1, v0, :cond_5

    const/16 v0, 0x66

    if-eq p1, v0, :cond_4

    if-eq p1, p0, :cond_3

    if-eq p1, v2, :cond_2

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, ""

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_2
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "com.samsung.android.provider"

    const-string v3, "Food"

    const/16 v4, 0x1c2

    const-string v5, "Food"

    const-string v6, "SAMSUNG_MOBILE"

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v1

    :cond_3
    new-instance v2, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const/16 v5, 0x1a9

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v2

    :cond_4
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[MYFILTER]"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, ""

    const-string v5, ""

    move-object v4, p2

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ""

    move-object v4, p2

    move-object v2, p2

    move-object v1, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public whitelist setFilterCallback(Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    iput-object p2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method
