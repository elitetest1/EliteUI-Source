.class public Landroid/opengl/EGLContext;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLContext.java"


# direct methods
.method private constructor greylist-max-o <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/opengl/EGLContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/opengl/EGLContext;

    invoke-virtual {p0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method
