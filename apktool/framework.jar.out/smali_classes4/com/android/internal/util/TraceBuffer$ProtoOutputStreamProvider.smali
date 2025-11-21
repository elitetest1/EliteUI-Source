.class Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;
.super Ljava/lang/Object;
.source "TraceBuffer.java"

# interfaces
.implements Lcom/android/internal/util/TraceBuffer$ProtoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/TraceBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtoOutputStreamProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/TraceBuffer-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBytes(Landroid/util/proto/ProtoOutputStream;)[B
    .locals 0

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getBytes(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getBytes(Landroid/util/proto/ProtoOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getItemSize(Landroid/util/proto/ProtoOutputStream;)I
    .locals 0

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist getItemSize(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getItemSize(Landroid/util/proto/ProtoOutputStream;)I

    move-result p0

    return p0
.end method

.method public blacklist write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Ljava/util/Queue<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic blacklist write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V

    return-void
.end method
