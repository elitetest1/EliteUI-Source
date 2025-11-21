.class public final Lcom/android/internal/app/WhitePointColorController;
.super Ljava/lang/Object;
.source "WhitePointColorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/WhitePointColorController$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "WhitePointColorController"


# instance fields
.field private blacklist mCallback:Lcom/android/internal/app/WhitePointColorController$Callback;

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monSettingChanged(Lcom/android/internal/app/WhitePointColorController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/WhitePointColorController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/WhitePointColorController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/WhitePointColorController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/app/WhitePointColorController;->mUserId:I

    new-instance p1, Lcom/android/internal/app/WhitePointColorController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/internal/app/WhitePointColorController$1;-><init>(Lcom/android/internal/app/WhitePointColorController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/app/WhitePointColorController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_0
    iget-object p0, p0, Lcom/android/internal/app/WhitePointColorController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static blacklist isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist onSettingChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhitePointColorController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mCallback:Lcom/android/internal/app/WhitePointColorController$Callback;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "white_point_display_color_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "white_point_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/WhitePointColorController;->mCallback:Lcom/android/internal/app/WhitePointColorController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/WhitePointColorController;->isActivated()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/WhitePointColorController$Callback;->onActivated(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/internal/app/WhitePointColorController;->mCallback:Lcom/android/internal/app/WhitePointColorController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/WhitePointColorController;->getWhitePointColorLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/WhitePointColorController$Callback;->onLevelChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getDefaultWhitePointColorLevel()I
    .locals 0

    const/16 p0, 0x7f

    return p0
.end method

.method public blacklist getMaximumWhitePointColorLevel()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public blacklist getMinimumWhitePointColorLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getWhitePointColorLevel()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WhitePointColorController;->mUserId:I

    const-string/jumbo v2, "white_point_display_color_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "WhitePointColorController"

    const-string v1, "Using default value for setting: white_point_display_color_level"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/WhitePointColorController;->getDefaultWhitePointColorLevel()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public blacklist isActivated()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/app/WhitePointColorController;->mUserId:I

    const-string/jumbo v1, "white_point_display_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public blacklist setActivated(Z)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/WhitePointColorController;->getDefaultWhitePointColorLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WhitePointColorController;->setWhitePointColorLevel(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/app/WhitePointColorController;->mUserId:I

    const-string/jumbo v1, "white_point_display_activated"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public blacklist setListener(Lcom/android/internal/app/WhitePointColorController$Callback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mCallback:Lcom/android/internal/app/WhitePointColorController$Callback;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/android/internal/app/WhitePointColorController;->mCallback:Lcom/android/internal/app/WhitePointColorController$Callback;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/app/WhitePointColorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/app/WhitePointColorController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/internal/app/WhitePointColorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "white_point_display_activated"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WhitePointColorController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/WhitePointColorController;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "white_point_display_color_level"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WhitePointColorController;->mContentObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/internal/app/WhitePointColorController;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    return-void
.end method

.method public blacklist setWhitePointColorLevel(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/WhitePointColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_point_display_color_level"

    iget p0, p0, Lcom/android/internal/app/WhitePointColorController;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method
