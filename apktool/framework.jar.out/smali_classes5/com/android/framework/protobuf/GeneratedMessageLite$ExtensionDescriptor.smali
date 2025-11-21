.class final Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist enumTypeMap:Lcom/android/framework/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final blacklist isPacked:Z

.field final blacklist isRepeated:Z

.field final blacklist number:I

.field final blacklist type:Lcom/android/framework/protobuf/WireFormat$FieldType;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    iput p2, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iput-object p3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iput-boolean p4, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    iput-boolean p5, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 0

    iget p0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget p1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p0

    return p0
.end method

.method public blacklist getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    return-object p0
.end method

.method public blacklist getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/framework/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public blacklist getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return p0
.end method

.method public blacklist internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isPacked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return p0
.end method

.method public blacklist isRepeated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return p0
.end method
