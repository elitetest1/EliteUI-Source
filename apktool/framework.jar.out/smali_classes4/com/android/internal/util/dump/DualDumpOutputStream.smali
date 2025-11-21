.class public Lcom/android/internal/util/dump/DualDumpOutputStream;
.super Ljava/lang/Object;
.source "DualDumpOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;,
        Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;,
        Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DualDumpOutputStream"


# instance fields
.field private final blacklist mDumpObjects:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIpw:Landroid/util/IndentingPrintWriter;

.field private final blacklist mProtoStream:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    new-instance p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    invoke-direct {p0, v1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public blacklist end(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected token for ending "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    iget-object v0, v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-void
.end method

.method public blacklist flush()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->print(Landroid/util/IndentingPrintWriter;Z)V

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public blacklist isProto()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist start(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    iget-object p3, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public blacklist write(Ljava/lang/String;JD)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method

.method public blacklist write(Ljava/lang/String;JF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method

.method public blacklist write(Ljava/lang/String;JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method

.method public blacklist write(Ljava/lang/String;JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method

.method public blacklist write(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method

.method public blacklist write(Ljava/lang/String;JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method

.method public blacklist write(Ljava/lang/String;J[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method

.method public blacklist writeNested(Ljava/lang/String;[B)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "writeNested does not work for proto logging"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    return-void
.end method
