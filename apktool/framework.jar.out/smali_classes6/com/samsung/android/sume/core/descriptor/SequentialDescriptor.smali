.class public Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "SequentialDescriptor.java"


# instance fields
.field private final blacklist descriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist evaluators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

.field private final blacklist sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;",
            "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    iput-object p3, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    sget-object v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;->BATCHED:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    return-void
.end method


# virtual methods
.method public blacklist getDescriptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getEvaluators()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->evaluators:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getFilterType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class p0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;

    return-object p0
.end method

.method public blacklist getSequentialMode()Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    return-object p0
.end method

.method public blacklist getSequentialType()Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    return-object p0
.end method

.method public blacklist setEvaluators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->evaluators:Ljava/util/List;

    return-void
.end method
