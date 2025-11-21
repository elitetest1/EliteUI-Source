.class abstract Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/android/framework/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractByteIterator"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist next()Ljava/lang/Byte;
    .locals 0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;->next()Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
