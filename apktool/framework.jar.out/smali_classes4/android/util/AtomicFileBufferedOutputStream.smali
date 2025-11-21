.class public Landroid/util/AtomicFileBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "AtomicFileBufferedOutputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AtomicFileBufferedOutputStream"


# instance fields
.field private final blacklist mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;


# direct methods
.method public constructor blacklist <init>(Landroid/util/AtomicFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {v0, p1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    invoke-direct {p0, v0}, Landroid/util/AtomicFileBufferedOutputStream;-><init>(Landroid/util/AtomicFileOutputStream;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/AtomicFile;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {v0, p1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    invoke-direct {p0, v0, p2}, Landroid/util/AtomicFileBufferedOutputStream;-><init>(Landroid/util/AtomicFileOutputStream;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/AtomicFileOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/AtomicFileOutputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p1, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    return-void
.end method


# virtual methods
.method public blacklist markSuccess()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/AtomicFileBufferedOutputStream;->flush()V

    iget-object p0, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {p0}, Landroid/util/AtomicFileOutputStream;->markSuccess()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtomicFileBufferedOutputStream["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
