.class public Landroid/util/AtomicFilePrintWriter;
.super Ljava/io/PrintWriter;
.source "AtomicFilePrintWriter.java"


# instance fields
.field private final blacklist mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;


# direct methods
.method public constructor blacklist <init>(Landroid/util/AtomicFile;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {v0, p1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    invoke-direct {p0, v0, p2}, Landroid/util/AtomicFilePrintWriter;-><init>(Landroid/util/AtomicFileOutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/AtomicFileOutputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Landroid/util/AtomicFilePrintWriter;->mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;

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

    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->flush()V

    iget-object p0, p0, Landroid/util/AtomicFilePrintWriter;->mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {p0}, Landroid/util/AtomicFileOutputStream;->markSuccess()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtomicFilePrintWriter["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/AtomicFilePrintWriter;->mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
