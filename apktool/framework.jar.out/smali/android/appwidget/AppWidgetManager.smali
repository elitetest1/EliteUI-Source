.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final whitelist ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final whitelist ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final whitelist ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final whitelist ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final blacklist ACTION_APPWIDGET_ENABLE_AND_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLE_AND_UPDATE"

.field public static final whitelist ACTION_APPWIDGET_HOST_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_HOST_RESTORED"

.field public static final whitelist ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final whitelist ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final whitelist ACTION_APPWIDGET_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_RESTORED"

.field public static final whitelist ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final greylist-max-o ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final blacklist EVENT_CATEGORY_APPWIDGET:Ljava/lang/String; = "android.appwidget"

.field public static final blacklist EVENT_TYPE_WIDGET_INTERACTION:Ljava/lang/String; = "widget_interaction"

.field public static final whitelist EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final whitelist EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final whitelist EXTRA_APPWIDGET_OLD_IDS:Ljava/lang/String; = "appWidgetOldIds"

.field public static final whitelist EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final whitelist EXTRA_APPWIDGET_PREVIEW:Ljava/lang/String; = "appWidgetPreview"

.field public static final whitelist EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final whitelist EXTRA_APPWIDGET_PROVIDER_PROFILE:Ljava/lang/String; = "appWidgetProviderProfile"

.field public static final greylist-max-o EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final whitelist EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final whitelist EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final greylist-max-o EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field public static final blacklist EXTRA_EVENT_CLICKED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_CLICKED_VIEWS"

.field public static final blacklist EXTRA_EVENT_DURATION_MS:Ljava/lang/String; = "android.appwidget.extra.EVENT_DURATION_MS"

.field public static final blacklist EXTRA_EVENT_POSITION_RECT:Ljava/lang/String; = "android.appwidget.extra.EVENT_POSITION_RECT"

.field public static final blacklist EXTRA_EVENT_SCROLLED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

.field public static final whitelist EXTRA_HOST_ID:Ljava/lang/String; = "hostId"

.field public static final whitelist INVALID_APPWIDGET_ID:I = 0x0

.field public static final whitelist META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final whitelist OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final whitelist OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final whitelist OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final whitelist OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final whitelist OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"

.field public static final whitelist OPTION_APPWIDGET_RESTORE_COMPLETED:Ljava/lang/String; = "appWidgetRestoreCompleted"

.field public static final whitelist OPTION_APPWIDGET_SIZES:Ljava/lang/String; = "appWidgetSizes"

.field public static final whitelist SEM_ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.SEM_APPWIDGET_CONFIGURE"

.field public static final blacklist SEM_ACTION_APPWIDGET_UNBIND:Ljava/lang/String; = "com.samsung.android.appwidget.action.APPWIDGET_UNBIND"

.field public static whitelist SEM_APPWIDGET_LOCATION_LEFT:I = 0x0

.field public static whitelist SEM_APPWIDGET_LOCATION_RIGHT:I = 0x1

.field public static blacklist SEM_APPWIDGET_STYLE_COMPLICATION:Ljava/lang/String; = "complication"

.field public static final blacklist SEM_EXTRA_APPWIDGET_PACKAGENAME:Ljava/lang/String; = "appWidgetPackageName"

.field public static final whitelist SEM_META_DATA_CONFIGURE_ACTIVITY:Ljava/lang/String; = "android.appwidget.provider.semConfigureActivity"

.field public static final whitelist SEM_OPTION_APPWIDGET_COLUMN_SPAN:Ljava/lang/String; = "semAppWidgetColumnSpan"

.field public static final whitelist SEM_OPTION_APPWIDGET_LOCATION:Ljava/lang/String; = "semAppWidgetLocation"

.field public static final whitelist SEM_OPTION_APPWIDGET_ROW_SPAN:Ljava/lang/String; = "semAppWidgetRowSpan"

.field public static final blacklist SEM_OPTION_APPWIDGET_STYLE:Ljava/lang/String; = "widgetStyle"

.field private static final blacklist TAG:Ljava/lang/String; = "AppWidgetManager"

.field private static blacklist sUpdateExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mHasPostedLegacyLists:Z

.field private blacklist mMaxBitmapMemory:I

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist mService:Lcom/android/internal/appwidget/IAppWidgetService;

.field private blacklist mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public static synthetic blacklist $r8$lambda$Emo9F9Eo3H92TWufpOrPKUtYf-g(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$5([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QqdazheZhcerN4Y0qy91aYaLrT4(Landroid/appwidget/AppWidgetManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyCollectionWidgetChange$9(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WKLPyaeqLNLNb3560d7QJuq2DwQ(Landroid/appwidget/AppWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager;->lambda$new$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eLfJmuev9KseIIWrQoFmxYrV-jE(Landroid/appwidget/AppWidgetManager;[II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyAppWidgetViewDataChanged$8([II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f_OVkK3KW0mzmRH9rcv5fxfoLF4(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$7(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ondr49HbQW1wDxCAX8a9ES8Uv6A(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$partiallyUpdateAppWidget$6([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sBR9PAOwcEI1Yyr9xw1B15idXJ4(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->lambda$tryAdapterConversion$4(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getMaxBitmapMemory()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppWidgetManager"

    const-string v0, "Error setting the maximum bitmap memory"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;-><init>(Landroid/appwidget/AppWidgetManager;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private greylist bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "bindAppWidgetIdIfAllowed() appWidgetIds = "

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    const-string v1, "AppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", provider = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist createAndStartNewHandler(Ljava/lang/String;I)Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;
    .locals 3

    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerExecutor;

    const-string/jumbo v1, "widget_manager_update_helper_thread"

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/appwidget/AppWidgetManager;->createAndStartNewHandler(Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static blacklist createWidgetInteractionEvent(IJLandroid/graphics/Rect;[I[I)Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "android.app.usage.extra.EVENT_ACTION"

    const-string/jumbo v2, "widget_interaction"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.app.usage.extra.EVENT_CATEGORY"

    const-string v2, "android.appwidget"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "android.appwidget.extra.EVENT_DURATION_MS"

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p3, :cond_0

    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    filled-new-array {p0, p1, p2, p3}, [I

    move-result-object p0

    const-string p1, "android.appwidget.extra.EVENT_POSITION_RECT"

    invoke-virtual {v0, p1, p0}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    if-eqz p4, :cond_1

    array-length p0, p4

    if-lez p0, :cond_1

    const-string p0, "android.appwidget.extra.EVENT_CLICKED_VIEWS"

    invoke-virtual {v0, p0, p4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1
    if-eqz p5, :cond_2

    array-length p0, p5

    if-lez p0, :cond_2

    const-string p0, "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

    invoke-virtual {v0, p0, p5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_2
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .locals 1

    const-string v0, "appwidget"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method private greylist hidden_semGetTemplateWidgetPreview(Landroid/content/ComponentName;Landroid/os/UserHandle;II)Landroid/os/Bundle;
    .locals 9

    const-string v0, " "

    const-string v1, "getTemplateWidgetPreview : "

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    :cond_0
    const-string v2, "AppWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v5, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/appwidget/IAppWidgetService;->getTemplateWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;III)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private greylist hidden_semIsPreviewUpdateAvailable(Landroid/content/ComponentName;)Z
    .locals 3

    const-string v0, "isTemplatePreviewUpdateAvailable : "

    :try_start_0
    const-string v1, "AppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->isTemplatePreviewUpdateAvailable(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private greylist hidden_semRemoveTemplateWidgetPreview(Landroid/content/ComponentName;II)V
    .locals 4

    const-string v0, " "

    const-string/jumbo v1, "removeTemplateWidgetPreview : "

    :try_start_0
    const-string v2, "AppWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->removeTemplateWidgetPreview(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private greylist hidden_semSetTemplateWidgetPreview(Landroid/content/ComponentName;II[Landroid/widget/RemoteViews;)Z
    .locals 4

    const-string v0, "AppWidgetManager"

    const-string v1, " "

    const-string/jumbo v2, "setTemplateWidgetPreview : "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p4

    if-nez v1, :cond_0

    const-string p0, "The preview data array is empty."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetService;->setTemplateWidgetPreview(Landroid/content/ComponentName;II[Landroid/widget/RemoteViews;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/content/ComponentName;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroid/appwidget/AppWidgetProvider;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$new$2(I)[Landroid/content/ComponentName;
    .locals 0

    new-array p0, p0, [Landroid/content/ComponentName;

    return-object p0
.end method

.method private synthetic blacklist lambda$new$3()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/ComponentName;

    invoke-interface {v0, p0}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyProviderInheritance([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "AppWidgetManager"

    const-string v1, "Notify service of inheritance info"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic blacklist lambda$notifyAppWidgetViewDataChanged$8([II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyCollectionWidgetChange$10(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 0

    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method private synthetic blacklist lambda$notifyCollectionWidgetChange$9(II)V
    .locals 4

    const-string v0, "AppWidgetManager"

    const-string v1, "Error notifying changes in RemoteViews because of its null pkg:"

    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :cond_0
    if-nez v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " widgetId:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error notifying changes in RemoteViews"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$partiallyUpdateAppWidget$6([ILandroid/widget/RemoteViews;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic blacklist lambda$tryAdapterConversion$4(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->collectAllIntents(ILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "AppWidgetManager"

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic blacklist lambda$updateAppWidget$5([ILandroid/widget/RemoteViews;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateAppWidget$7(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private blacklist notifyCollectionWidgetChange([II)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    new-instance v3, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager;II)V

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "AppWidgetManager"

    const-string p2, "Error notifying changes for all widgets"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "AppWidgetManager"

    const-string v1, "Original RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_4

    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    new-instance p2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v0, p1, p3}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne p0, p1, :cond_3

    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_4
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public greylist bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public greylist-max-r bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    return-void
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z
    .locals 9

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v7

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4

    const-string v0, "App widget provider info is null. PackageName="

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    const-string v2, "AppWidgetManager"

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Service wasn\'t initialized, appWidgetId="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, p0}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    return-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " appWidgetId-"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getInstalledProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getInstalledProviders(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "A non-null package must be passed to this method. If you want all widgets regardless of package, see getInstalledProvidersForProfile(UserHandle)"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p3, v0}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getWidgetPreview(Landroid/content/ComponentName;Landroid/os/UserHandle;I)Landroid/widget/RemoteViews;
    .locals 1

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/widget/RemoteViews;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist hidden_semGetInstalledProvidersForPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o isBoundWidgetPackage(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isRequestPinAppWidgetSupported()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0}, Lcom/android/internal/appwidget/IAppWidgetService;->isRequestPinAppWidgetSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist noteAppWidgetTapped(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->noteAppWidgetTapped(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist notifyAppWidgetViewDataChanged(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    return-void
.end method

.method public whitelist notifyAppWidgetViewDataChanged([II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "notifyAppWidgetViewDataChanged() appWidgetIds = "

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;-><init>(Landroid/appwidget/AppWidgetManager;[II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    return-void

    :cond_2
    :try_start_0
    const-string v1, "AppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", viewId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public whitelist partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "partiallyUpdateAppWidget() appWidgetIds = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string p1, "Error partially updating app widget views in background"

    invoke-direct {p0, v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist removeWidgetPreview(Landroid/content/ComponentName;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->removeWidgetPreview(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o requestPinAppWidget(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public whitelist requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3

    :goto_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist semChangeHostIds([II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "semChangeHostIds() appWidgetIds = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hostId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->changeHostIds(Ljava/lang/String;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist semSetSkipPackageChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->semSetSkipPackageChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public greylist-max-o setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    return-void
.end method

.method public whitelist setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public whitelist updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)V

    const-string p1, "Error updating app widget view using provider in background"

    invoke-direct {p0, v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist updateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAppWidget() appWidgetIds = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string p1, "Error updating app widget views in background"

    invoke-direct {p0, v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "updateAppWidgetOptions() appWidgetId = "

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "AppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", options = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
