.class public final Landroid/app/IdsController;
.super Ljava/lang/Object;
.source "IdsController.java"


# static fields
.field private static final blacklist DO_IDS:I

.field private static final blacklist IDS_KEY:Ljava/lang/String; = "IDSCount"

.field private static final blacklist IDS_URI:Ljava/lang/String; = "android.app.ActivityThread.IDS"

.field private static final blacklist NO_IDS:I = -0x1

.field public static final blacklist REASON_BACKGROUND_CHANGED:I = 0x0

.field public static final blacklist REASON_BACKGROUND_COLOR_CHANGED:I = 0x1

.field public static final blacklist REASON_LAYOUT_CHANGED:I = 0x2

.field public static final blacklist REASON_SETCONTENTVIEW:I = 0x3

.field public static final blacklist REASON_VIEW_INFLATED:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "IDS_TAG"

.field private static blacklist sClearData:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIdsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "debug.ids.setWindowSize"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/IdsController;->DO_IDS:I

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/IdsController;->sClearData:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroid/app/IdsController;->mHasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroid/app/IdsController;->mIdsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static blacklist clearTrainingData(Z)V
    .locals 0

    sput-boolean p0, Landroid/app/IdsController;->sClearData:Z

    return-void
.end method

.method private blacklist getIdsSharedPreference()Landroid/content/SharedPreferences;
    .locals 4

    const-string v0, "IDS_TAG"

    const-string v1, "Getting Shared Preference for "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    const-string p0, "System UID: no SharedPreferences here, no IDS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object p0, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    const-string v0, "android.app.ActivityThread.IDS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method private blacklist getReasonForUpdate(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "Invalid reason"

    return-object p0

    :cond_0
    const-string p0, "View Inflated"

    return-object p0

    :cond_1
    const-string/jumbo p0, "setContentView"

    return-object p0

    :cond_2
    const-string p0, "Layout Changed"

    return-object p0

    :cond_3
    const-string p0, "Background Color Changed"

    return-object p0

    :cond_4
    const-string p0, "Background Changed"

    return-object p0
.end method

.method private blacklist getUiUpdated()Z
    .locals 0

    iget-object p0, p0, Landroid/app/IdsController;->mHasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method private blacklist isIdsWindowActive()Z
    .locals 0

    iget-object p0, p0, Landroid/app/IdsController;->mIdsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method private blacklist registerLayoutListener(Landroid/view/View;Landroid/view/Choreographer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Landroid/app/IdsController$1;

    invoke-direct {p2, p0}, Landroid/app/IdsController$1;-><init>(Landroid/app/IdsController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private blacklist setIdsWindowActive(Z)V
    .locals 0

    iget-object p0, p0, Landroid/app/IdsController;->mIdsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public blacklist closeIdsWindow()V
    .locals 8

    const-string v0, "IDSCount"

    const-string v1, "IDS_TAG"

    const-string v2, "IDS count updated to "

    const-string v3, "IDS disabled for "

    :try_start_0
    invoke-direct {p0}, Landroid/app/IdsController;->isIdsWindowActive()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Closing IDS observe window"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/app/IdsController;->setIdsWindowActive(Z)V

    invoke-direct {p0}, Landroid/app/IdsController;->getIdsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget v6, Landroid/app/IdsController;->DO_IDS:I

    if-ge v4, v6, :cond_1

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    invoke-direct {p0}, Landroid/app/IdsController;->getUiUpdated()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v4, 0x1

    :goto_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Clearing data while writing to SP of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    const-string v0, "android.app.ActivityThread.IDS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public blacklist doIds()Z
    .locals 5

    invoke-direct {p0}, Landroid/app/IdsController;->getIdsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "App "

    const-string v3, "IDS_TAG"

    if-eqz v0, :cond_1

    const-string v4, "IDSCount"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v4, Landroid/app/IdsController;->DO_IDS:I

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " being boosted by IDS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in NO_IDS list"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not finished training"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method blacklist openIdsWindow(Landroid/view/View;Landroid/view/Choreographer;)V
    .locals 3

    sget-boolean v0, Landroid/app/IdsController;->sClearData:Z

    const-string v1, "IDS_TAG"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Clearing training data of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/IdsController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v2, "android.app.ActivityThread.IDS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    :cond_0
    const-string v0, "Starting IDS observe window"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/app/IdsController;->registerLayoutListener(Landroid/view/View;Landroid/view/Choreographer;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/app/IdsController;->setIdsWindowActive(Z)V

    return-void
.end method

.method public blacklist uiUpdated(I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/IdsController;->isIdsWindowActive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Landroid/app/IdsController;->getReasonForUpdate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " updated UI for IDS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDS_TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/app/IdsController;->mHasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
