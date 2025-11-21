.class public abstract Landroid/app/ServiceStartNotAllowedException;
.super Ljava/lang/IllegalStateException;
.source "ServiceStartNotAllowedException.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist newInstance(ZLjava/lang/String;)Landroid/app/ServiceStartNotAllowedException;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/app/BackgroundServiceStartNotAllowedException;

    invoke-direct {p0, p1}, Landroid/app/BackgroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getCause()Ljava/lang/Throwable;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method
