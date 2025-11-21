.class final Lcom/android/framework/protobuf/OneofInfo;
.super Ljava/lang/Object;
.source "OneofInfo.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field private final blacklist caseField:Ljava/lang/reflect/Field;

.field private final blacklist id:I

.field private final blacklist valueField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    iput-object p2, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public blacklist getCaseField()Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    return p0
.end method

.method public blacklist getValueField()Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-object p0
.end method
