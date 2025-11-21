.class public abstract Lcom/android/modules/utils/BasicShellCommandHandler;
.super Ljava/lang/Object;
.source "BasicShellCommandHandler.java"


# static fields
.field protected static final blacklist DEBUG:Z = false

.field protected static final blacklist TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private blacklist mArgPos:I

.field private blacklist mArgs:[Ljava/lang/String;

.field private blacklist mCmd:Ljava/lang/String;

.field private blacklist mCurArgData:Ljava/lang/String;

.field private blacklist mErr:Ljava/io/FileDescriptor;

.field private blacklist mErrPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mFileErr:Ljava/io/FileOutputStream;

.field private blacklist mFileIn:Ljava/io/FileInputStream;

.field private blacklist mFileOut:Ljava/io/FileOutputStream;

.field private blacklist mIn:Ljava/io/FileDescriptor;

.field private blacklist mInputStream:Ljava/io/InputStream;

.field private blacklist mOut:Ljava/io/FileDescriptor;

.field private blacklist mOutPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mTarget:Landroid/os/Binder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I
    .locals 10

    const-string v1, "Exception occurred while executing \'"

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    array-length v2, p5

    if-lez v2, :cond_0

    aget-object v0, p5, v0

    const/4 v2, 0x1

    move v9, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v9, v0

    move-object v0, v2

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/modules/utils/BasicShellCommandHandler;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    iput-object v0, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v3, v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onCommand(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    iget-object p1, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_2
    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-virtual {v3}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\':"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_3
    iget-object p0, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    const/4 p0, -0x1

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    iget-object p1, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_5
    iget-object p1, v3, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_6
    throw p0
.end method

.method public blacklist getAllArgs()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public blacklist getErrFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public blacklist getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    :cond_1
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public blacklist getInFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public blacklist getNextArg()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object p0, v2, v0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public blacklist getNextArgRequired()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument expected after \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getNextOption()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    return-object v4

    :cond_0
    aget-object v0, v2, v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iput-object v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_4
    iput-object v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr p0, v1

    aget-object p0, v0, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No argument expected after \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getOutFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public blacklist getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method public blacklist getRawInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    return-object p0
.end method

.method public blacklist getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method public blacklist getRemainingArgsCount()I
    .locals 2

    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public blacklist getTarget()Landroid/os/Binder;
    .locals 0

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    return-object p0
.end method

.method public blacklist handleDefaultCommands(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onHelp()V

    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    iput-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    iput-object p4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    iput-object p5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    iput p6, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public abstract blacklist onCommand(Ljava/lang/String;)I
.end method

.method public abstract blacklist onHelp()V
.end method

.method public blacklist peekNextArg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist peekRemainingArgs()[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRemainingArgsCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    :goto_0
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int v3, v1, v3

    aget-object v2, v2, v1

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
