.class public Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
.super Ljava/lang/Object;
.source "DocumentedOperation.java"


# static fields
.field public static final blacklist BOOLEAN:I = 0x2

.field public static final blacklist BUFFER:I = 0x4

.field public static final blacklist BYTE:I = 0x6

.field public static final blacklist FLOAT:I = 0x1

.field public static final blacklist FLOAT_ARRAY:I = 0xa

.field public static final blacklist INT:I = 0x0

.field public static final blacklist INT_ARRAY:I = 0xb

.field public static final blacklist LAYOUT:I = 0x0

.field public static final blacklist LONG:I = 0x8

.field public static final blacklist SHORT:I = 0x9

.field public static final blacklist UTF8:I = 0x5

.field public static final blacklist VALUE:I = 0x7


# instance fields
.field final blacklist mCategory:Ljava/lang/String;

.field blacklist mDescription:Ljava/lang/String;

.field blacklist mExamples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mExamplesHeight:I

.field blacklist mExamplesWidth:I

.field blacklist mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mId:I

.field final blacklist mName:Ljava/lang/String;

.field blacklist mTextExamples:Ljava/lang/String;

.field blacklist mVarSize:Ljava/lang/String;

.field blacklist mWIP:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mCategory:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mId:I

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mWIP:Z

    return-void
.end method

.method public static blacklist getType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "INT[]"

    return-object p0

    :pswitch_2
    const-string p0, "FLOAT[]"

    return-object p0

    :pswitch_3
    const-string p0, "SHORT"

    return-object p0

    :pswitch_4
    const-string p0, "LONG"

    return-object p0

    :pswitch_5
    const-string p0, "VALUE"

    return-object p0

    :pswitch_6
    const-string p0, "BYTE"

    return-object p0

    :pswitch_7
    const-string p0, "UTF8"

    return-object p0

    :pswitch_8
    const-string p0, "BUFFER"

    return-object p0

    :pswitch_9
    const-string p0, "BOOLEAN"

    return-object p0

    :pswitch_a
    const-string p0, "FLOAT"

    return-object p0

    :pswitch_b
    const-string p0, "INT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist examples(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mTextExamples:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    return-object p0
.end method

.method public blacklist field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getExamples()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getExamplesHeight()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    return p0
.end method

.method public blacklist getExamplesWidth()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    return p0
.end method

.method public blacklist getFields()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mId:I

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSizeFields()I
    .locals 6

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getSize()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getSize()I

    move-result v4

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getVarSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x 4"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return v2
.end method

.method public blacklist getTextExamples()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mTextExamples:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVarSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isWIP()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mWIP:Z

    return p0
.end method

.method public blacklist possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->possibleValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
