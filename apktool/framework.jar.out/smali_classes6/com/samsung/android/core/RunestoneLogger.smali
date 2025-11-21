.class public Lcom/samsung/android/core/RunestoneLogger;
.super Ljava/lang/Object;
.source "RunestoneLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/RunestoneLogger$ScreenState;,
        Lcom/samsung/android/core/RunestoneLogger$ScreenType;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_SCREEN_LOGGING:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.ACTION_SCREEN_LOGGING"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist EXTRA_FOLD_STATE:Ljava/lang/String; = "fold_state"

.field private static final blacklist EXTRA_MULTI_WINDOW_STATE:Ljava/lang/String; = "multi_window_state"

.field private static final blacklist EXTRA_PACKAGES:Ljava/lang/String; = "packages"

.field private static final blacklist EXTRA_SCREEN_TYPE:Ljava/lang/String; = "screen_type"

.field private static final blacklist EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist PERMISSION_SCREEN_LOGGING:Ljava/lang/String; = "com.sec.android.diagmonagent.permission.DIAGMON_SURVEY"

.field private static final blacklist TAG:Ljava/lang/String; = "RunestoneLogger"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist interpretSaToRunestone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "1004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/samsung/android/core/RunestoneLogger;->sendPairMultiWindow(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static blacklist sendDismissMultiWindowState(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/samsung/android/core/RunestoneLogger;->sendMultiWindowState(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static blacklist sendMultiWindowState(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Warning sendPairLoggingLocked ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RunestoneLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->MULTIWINDOW_3UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->MULTIWINDOW_2UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->NONE_MULTIWINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    :goto_0
    sget-object v1, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v1}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->getValue()I

    move-result v0

    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/core/RunestoneLogger;->sendRunestoneLogging(Landroid/content/Context;IILjava/util/ArrayList;)V

    return-void
.end method

.method private static blacklist sendPairMultiWindow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/samsung/android/core/RunestoneLogger;->sendMultiWindowState(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static blacklist sendRunestoneLogging(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "screen_type"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v3}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    const-string v3, "fold_state"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v3}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_1

    const-string/jumbo v3, "multi_window_state"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo p1, "packages"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {p3}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result p3

    if-ne p1, p3, :cond_3

    sget-object p1, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->NONE_MULTIWINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    invoke-virtual {p1}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->getValue()I

    move-result p1

    if-eq p2, p1, :cond_3

    const-string p0, "RunestoneLogger"

    const-string p1, "Send failed. it\'s MULTI_WINDOW Type, but package list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string/jumbo p1, "timestamp"

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.diagmonagent.intent.ACTION_SCREEN_LOGGING"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.sec.android.diagmonagent"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string p3, "com.sec.android.diagmonagent.permission.DIAGMON_SURVEY"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
