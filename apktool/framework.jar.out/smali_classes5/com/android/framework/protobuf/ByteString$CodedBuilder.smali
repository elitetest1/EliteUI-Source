.class final Lcom/android/framework/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private final blacklist output:Lcom/android/framework/protobuf/CodedOutputStream;


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance([B)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/framework/protobuf/ByteString$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    iget-object p0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getCodedOutput()Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    return-object p0
.end method
