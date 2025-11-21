.class public Lcom/sec/android/iaft/IAFTReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IAFTReceiver.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAFTManager"

.field public static final blacklist TRACE_RESULT:Ljava/lang/String; = "com.android.internal.intent.action.TRACE_RESULT"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "IAFTManager"

    const-string p1, "IAFTReceiver onReceive."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.android.internal.intent.action.TRACE_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "tid"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "code"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "freq"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/iaft/IAFTManagerServiceImpl;->sendResult(III)V

    :cond_0
    return-void
.end method
