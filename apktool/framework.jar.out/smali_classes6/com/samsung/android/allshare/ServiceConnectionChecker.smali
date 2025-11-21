.class public final Lcom/samsung/android/allshare/ServiceConnectionChecker;
.super Ljava/lang/Object;
.source "ServiceConnectionChecker.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAllShareServiceConnected(Lcom/samsung/android/allshare/IAllShareConnector;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
