.class public abstract Landroid/os/ProxyFileDescriptorCallback;
.super Ljava/lang/Object;
.source "ProxyFileDescriptorCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance p0, Landroid/system/ErrnoException;

    const-string/jumbo v0, "onFsync"

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    invoke-direct {p0, v0, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance p0, Landroid/system/ErrnoException;

    const-string/jumbo v0, "onGetSize"

    sget v1, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {p0, v0, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist onRead(JI[B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance p0, Landroid/system/ErrnoException;

    const-string/jumbo p1, "onRead"

    sget p2, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {p0, p1, p2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onWrite(JI[B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance p0, Landroid/system/ErrnoException;

    const-string/jumbo p1, "onWrite"

    sget p2, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {p0, p1, p2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
