.class public Landroid/util/AtomicFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "AtomicFileOutputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AtomicFileOutputStream"


# instance fields
.field private blacklist mClosed:Z

.field private final blacklist mFile:Landroid/util/AtomicFile;

.field private final blacklist mOutStream:Ljava/io/FileOutputStream;

.field private blacklist mWritingSuccessful:Z


# direct methods
.method public constructor blacklist <init>(Landroid/util/AtomicFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    iput-object p2, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/util/AtomicFileOutputStream;->mClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/AtomicFileOutputStream;->mClosed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    iget-object p0, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    iget-object p0, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist markSuccess()V
    .locals 1

    iget-boolean v0, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AtomicFileOutputStream success is already marked"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtomicFileOutputStream[mFile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWritingSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/util/AtomicFileOutputStream;->mClosed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
