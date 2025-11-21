.class final Lcom/android/framework/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfo;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final blacklist flags:I

.field private final blacklist info:Ljava/lang/String;

.field private final blacklist objects:[Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    iput-object p2, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_0

    iput p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_1

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_0

    :cond_1
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    return-void
.end method


# virtual methods
.method public blacklist getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-object p0
.end method

.method blacklist getObjects()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object p0
.end method

.method blacklist getStringInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;
    .locals 1

    iget p0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public blacklist isMessageSetWireFormat()Z
    .locals 1

    iget p0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
