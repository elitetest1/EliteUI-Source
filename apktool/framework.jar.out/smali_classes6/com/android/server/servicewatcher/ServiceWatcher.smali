.class public interface abstract Lcom/android/server/servicewatcher/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;,
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;,
        Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;,
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;,
        Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;
    }
.end annotation


# direct methods
.method public static blacklist create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract blacklist checkServiceResolves()Z
.end method

.method public abstract blacklist dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist register()V
.end method

.method public abstract blacklist runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
.end method

.method public abstract blacklist unregister()V
.end method
