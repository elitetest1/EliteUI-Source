.class public Lcom/google/android/gles_jni/EGLContextImpl;
.super Ljavax/microedition/khronos/egl/EGLContext;
.source "EGLContextImpl.java"


# instance fields
.field blacklist mEGLContext:J

.field private blacklist mGLContext:Lcom/google/android/gles_jni/GLImpl;


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    new-instance p1, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {p1}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gles_jni/EGLContextImpl;

    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    iget-wide p0, p1, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method
