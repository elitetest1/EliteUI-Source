.class final Lcom/android/framework/protobuf/ByteString$BoundedByteString;
.super Lcom/android/framework/protobuf/ByteString$LiteralByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedByteString"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final blacklist bytesLength:I

.field private final blacklist bytesOffset:I


# direct methods
.method constructor blacklist <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->checkRange(III)I

    iput p2, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    iput p3, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist byteAt(I)B
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->checkIndex(II)V

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytes:[B

    iget p0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method protected blacklist copyToInternal([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->getOffsetIntoBytes()I

    move-result p0

    add-int/2addr p0, p2

    invoke-static {v0, p0, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected blacklist getOffsetIntoBytes()I
    .locals 0

    iget p0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    return p0
.end method

.method blacklist internalByteAt(I)B
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytes:[B

    iget p0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public blacklist size()I
    .locals 0

    iget p0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
