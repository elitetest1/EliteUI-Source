.class final Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;
.super Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;
.source "AdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/AdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdvancedExtenderImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/AdvancedExtender;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/AdvancedExtender;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/AdvancedExtender;Landroid/hardware/camera2/extension/AdvancedExtender-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;-><init>(Landroid/hardware/camera2/extension/AdvancedExtender;)V

    return-void
.end method


# virtual methods
.method public blacklist getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 6

    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getMetadataVendorId(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v4

    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 6

    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCaptureResultKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getMetadataVendorId(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureResult$Key;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v4

    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 7

    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {v2}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {p0}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    aput v5, v2, v3

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    move v3, v6

    goto :goto_1

    :cond_1
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSessionProcessor()Landroid/hardware/camera2/extension/SessionProcessor;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {p0}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/AdvancedExtender;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/extension/SessionProcessor;->setCameraUsageTracker(Landroid/hardware/camera2/extension/CameraUsageTracker;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->getSessionProcessorBinder()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/extension/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist init(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    new-instance v0, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v0, p2}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->initialize(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)V

    return-void
.end method

.method public blacklist isCaptureProcessProgressAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    new-instance v0, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v0, p2}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)Z

    move-result p0

    return p0
.end method

.method public blacklist isPostviewAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
