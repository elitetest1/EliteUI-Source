.class public final Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist checkInitialized:[I

.field private blacklist defaultInstance:Ljava/lang/Object;

.field private final blacklist fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist messageSetWireFormat:Z

.field private blacklist syntax:Lcom/android/framework/protobuf/ProtoSyntax;

.field private blacklist wasBuilt:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/framework/protobuf/StructuralMessageInfo;
    .locals 7

    iget-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Lcom/android/framework/protobuf/StructuralMessageInfo;

    iget-object v2, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    iget-boolean v3, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    iget-object v4, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/framework/protobuf/FieldInfo;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lcom/android/framework/protobuf/FieldInfo;

    iget-object v6, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/StructuralMessageInfo;-><init>(Lcom/android/framework/protobuf/ProtoSyntax;Z[I[Lcom/android/framework/protobuf/FieldInfo;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must specify a proto syntax"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Builder can only build once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist withCheckInitialized([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    return-void
.end method

.method public blacklist withDefaultInstance(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    return-void
.end method

.method public blacklist withField(Lcom/android/framework/protobuf/FieldInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Builder can only build once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist withMessageSetWireFormat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    return-void
.end method

.method public blacklist withSyntax(Lcom/android/framework/protobuf/ProtoSyntax;)V
    .locals 1

    const-string/jumbo v0, "syntax"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/ProtoSyntax;

    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    return-void
.end method
