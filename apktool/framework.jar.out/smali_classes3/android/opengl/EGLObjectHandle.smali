.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "EGLObjectHandle.java"


# instance fields
.field private final greylist-max-o mHandle:J


# direct methods
.method protected constructor whitelist <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method

.method protected constructor whitelist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method


# virtual methods
.method public whitelist getHandle()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long p0, v2, v0

    if-nez p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method
