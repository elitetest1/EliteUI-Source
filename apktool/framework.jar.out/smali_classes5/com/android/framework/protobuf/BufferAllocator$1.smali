.class Lcom/android/framework/protobuf/BufferAllocator$1;
.super Lcom/android/framework/protobuf/BufferAllocator;
.source "BufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/BufferAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .locals 0

    new-array p0, p1, [B

    invoke-static {p0}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap([B)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p0

    return-object p0
.end method
