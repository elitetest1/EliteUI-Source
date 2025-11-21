.class public Lcom/samsung/android/sume/solution/service/NNDirector;
.super Ljava/lang/Object;
.source "NNDirector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist AlphaChannelPluginName:Ljava/lang/String;

.field private final blacklist MasteringNetPluginName:Ljava/lang/String;

.field private final blacklist OldPhotoPluginName:Ljava/lang/String;

.field private final blacklist VSWUpscalerPluginName:Ljava/lang/String;

.field private final blacklist defaultServiceClass:Ljava/lang/String;

.field private final blacklist defaultServicePackage:Ljava/lang/String;

.field private final blacklist graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

.field private final blacklist serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/solution/service/NNDirector;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/solution/service/NNDirector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.sume.nn.service"

    iput-object v0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->defaultServicePackage:Ljava/lang/String;

    const-string v1, "com.samsung.android.sume.nn.service.RemoteNNService"

    iput-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->defaultServiceClass:Ljava/lang/String;

    const-string v2, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->AlphaChannelPluginName:Ljava/lang/String;

    const-string v2, "com.samsung.android.sume.nn.plugin.OldPhotoPlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->OldPhotoPluginName:Ljava/lang/String;

    const-string v2, "com.samsung.android.sume.midas.upscaler.WrapVSWEnginePlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->VSWUpscalerPluginName:Ljava/lang/String;

    const-string v2, "com.samsung.android.masteringnet.MasteringNetPlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->MasteringNetPluginName:Ljava/lang/String;

    instance-of v2, p1, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->setParameters([Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/PlaceHolder;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->reset()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    iput-object p1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    :goto_0
    new-instance p1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    return-void
.end method


# virtual methods
.method public blacklist newAiUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newAiUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newAvailableMasteringNet(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "com.samsung.android.masteringnet.MasteringNetPlugin"

    const-string v2, "AvailableMasteringNet"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newImageUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newImageUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 7

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setInputWithEvaluationValue(Z)V

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v5, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    new-instance v2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/Model;->IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v6, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/core/types/DataType;->U8C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setTargetFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getFilterThreshold()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    const/high16 v3, 0x42ac0000    # 86.0f

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->ge(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->lt(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v3

    invoke-virtual {v4, v0, v1, v3}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->isSupportAlphaChannel()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "EXTRACT_ALPHA"

    const-string v4, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v5, "MERGE_ALPHA"

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newImageVSWUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageVSWUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newImageVSWUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 6

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setInputWithEvaluationValue(Z)V

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v5, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getUpscaler()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "com.samsung.android.sume.midas.upscaler.WrapVSWEnginePlugin"

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "X4_UPSCALER"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "X3_UPSCALER"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "X2_UPSCALER"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getFilterThreshold()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    const/high16 v3, 0x42ac0000    # 86.0f

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->ge(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->lt(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v3

    invoke-virtual {v4, v0, v1, v3}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->isSupportAlphaChannel()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "EXTRACT_ALPHA"

    const-string v4, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v5, "MERGE_ALPHA"

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newMasteringNet(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "com.samsung.android.masteringnet.MasteringNetPlugin"

    const-string v2, "MasteringNet"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newMotionPhotoUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newMotionPhotoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newMotionPhotoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 5

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setTargetFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    iget-object v0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newMotionPhotoVSWUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getUpscaler()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.sume.midas.upscaler.WrapVSWEnginePlugin"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "X4_UPSCALER"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "X3_UPSCALER"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "X2_UPSCALER"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newOldPhotoDetector()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newOldPhotoDetector(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newOldPhotoDetector(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 5

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->CPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newOldPhotoEnhancer()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newOldPhotoEnhancer(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newOldPhotoEnhancer(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 8

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "SEPARATE_BG_FACES"

    const-string v2, "com.samsung.android.sume.nn.plugin.OldPhotoPlugin"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "COMPOSE_BG_FACES"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setWaitToReceiveAll(Z)V

    new-instance v3, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v6, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setFilterIgnorable(Z)V

    new-instance v4, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_FACE_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v6, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v7, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    iget-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method

.method public blacklist newVideoUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    const v1, 0x3e800

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/solution/Option;->setAudioBitrate(I)Lcom/samsung/android/sume/solution/Option;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newVideoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newVideoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 11

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getAudioBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setBitrate(I)V

    new-instance v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v3, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    new-instance v3, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setScale(F)V

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getVideoBitrate()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setBitrate(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    new-instance v5, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v5, v7}, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;-><init>([Lcom/samsung/android/sume/core/types/MediaType;)V

    new-instance v7, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    invoke-direct {v7, v6}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;-><init>(I)V

    new-array v8, v4, [Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    aput-object v9, v8, v6

    invoke-virtual {v7, v8}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->setMediaTypeToNotifyEvent([Lcom/samsung/android/sume/core/types/MediaType;)V

    new-instance v6, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v8, Lcom/samsung/android/sume/core/types/nn/Model;->VIDEO_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v9, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v10, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v6, v8, v9, v10, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-virtual {v6, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setBatchIO(Z)V

    invoke-virtual {v6, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->runOneByOne()Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->packedIOBuffers()Lcom/samsung/android/sume/core/graph/Graph$Option;

    iget-object v8, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v9}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v9

    invoke-virtual {v8, v5, v0, v9, v4}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    sget-object v8, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v8}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v1}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v1, v4}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v6, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v3, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v1}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v1

    invoke-virtual {v0, v3, v7, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object p0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v0
.end method
