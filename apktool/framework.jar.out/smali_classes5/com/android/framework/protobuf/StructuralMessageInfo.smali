.class final Lcom/android/framework/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfo;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final blacklist checkInitialized:[I

.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final blacklist fields:[Lcom/android/framework/protobuf/FieldInfo;

.field private final blacklist messageSetWireFormat:Z

.field private final blacklist syntax:Lcom/android/framework/protobuf/ProtoSyntax;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/ProtoSyntax;Z[I[Lcom/android/framework/protobuf/FieldInfo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    iput-boolean p2, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    iput-object p3, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->checkInitialized:[I

    iput-object p4, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->fields:[Lcom/android/framework/protobuf/FieldInfo;

    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0}, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static blacklist newBuilder(I)Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public blacklist getCheckInitialized()[I
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object p0
.end method

.method public blacklist getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-object p0
.end method

.method public blacklist getFields()[Lcom/android/framework/protobuf/FieldInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->fields:[Lcom/android/framework/protobuf/FieldInfo;

    return-object p0
.end method

.method public blacklist getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public blacklist isMessageSetWireFormat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return p0
.end method
