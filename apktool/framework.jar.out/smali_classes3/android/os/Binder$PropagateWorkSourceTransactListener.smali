.class public Landroid/os/Binder$PropagateWorkSourceTransactListener;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateWorkSourceTransactListener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransactEnded(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingWorkSource(J)V

    :cond_0
    return-void
.end method

.method public whitelist onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->getUid()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
