.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "/system/bin/app_process64"

    goto :goto_0

    :cond_0
    const-string p0, "/system/bin/app_process32"

    :goto_0
    const/16 p3, 0x20

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -Xcompiler-option --generate-mini-debug-info /system/bin --application"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p0, " \'--nice-name="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, " com.android.internal.os.WrapperInit "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist main([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_0

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "AndroidRuntime"

    const-string v5, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_2

    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw p0

    :cond_0
    :goto_2
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v3, "WrapperInitTiming"

    const-wide/16 v4, 0x4000

    invoke-direct {v1, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    array-length v1, p0

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p0, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v4}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static blacklist preserveCapabilities()V
    .locals 13

    const-string v1, "AndroidRuntime"

    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v2, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/system/StructCapUserHeader;-><init>(II)V

    :try_start_0
    invoke-static {v0}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    aget-object v4, v2, v3

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    aget-object v4, v2, v6

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Landroid/system/StructCapUserData;

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    aget-object v7, v2, v3

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    aget-object v8, v2, v3

    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v4, v2, v3

    new-instance v4, Landroid/system/StructCapUserData;

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    aget-object v7, v2, v6

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    aget-object v8, v2, v6

    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v4, v2, v6

    :try_start_1
    invoke-static {v0, v2}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    const/16 v0, 0x40

    if-ge v3, v0, :cond_3

    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v0

    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v4

    aget-object v0, v2, v0

    iget v0, v0, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    :try_start_2
    sget v4, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v0, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v5, v0

    int-to-long v7, v3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v4 .. v12}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RuntimeInit: Failed to raise ambient capability "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_1
    move-exception v0

    const-string v2, "RuntimeInit: Failed capset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v0

    const-string v2, "RuntimeInit: Failed capget"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static blacklist wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v3, p1, v1

    const-string v4, "-cp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    array-length v4, p1

    sub-int/2addr v4, v2

    new-array v4, v4, [Ljava/lang/String;

    array-length v5, p1

    sub-int/2addr v5, v2

    invoke-static {p1, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    invoke-static {p0, v0, p1, v3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
