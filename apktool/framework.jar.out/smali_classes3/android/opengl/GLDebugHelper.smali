.class public Landroid/opengl/GLDebugHelper;
.super Ljava/lang/Object;
.source "GLDebugHelper.java"


# static fields
.field public static final whitelist CONFIG_CHECK_GL_ERROR:I = 0x1

.field public static final whitelist CONFIG_CHECK_THREAD:I = 0x2

.field public static final whitelist CONFIG_LOG_ARGUMENT_NAMES:I = 0x4

.field public static final whitelist ERROR_WRONG_THREAD:I = 0x7000


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/opengl/EGLLogWrapper;

    invoke-direct {v0, p0, p1, p2}, Landroid/opengl/EGLLogWrapper;-><init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static whitelist wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/opengl/GLErrorWrapper;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLErrorWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;I)V

    move-object p0, v0

    :cond_0
    if-eqz p2, :cond_2

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroid/opengl/GLLogWrapper;

    invoke-direct {v0, p0, p2, p1}, Landroid/opengl/GLLogWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V

    return-object v0

    :cond_2
    return-object p0
.end method
