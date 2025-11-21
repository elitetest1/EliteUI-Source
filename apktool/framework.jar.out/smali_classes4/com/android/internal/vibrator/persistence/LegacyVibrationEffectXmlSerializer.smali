.class public final Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;
.super Ljava/lang/Object;
.source "LegacyVibrationEffectXmlSerializer.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    invoke-static {}, Landroid/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/VibrationEffect$VendorEffect;

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    const-string v1, "Unsupported VibrationEffect type %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Unsupported empty VibrationEffect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v1, p0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p0, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p0, Landroid/os/vibrator/PwleSegment;

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeWaveformEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p1

    if-eqz p1, :cond_4

    instance-of p0, p0, Landroid/os/vibrator/BasicPwleSegment;

    if-eqz p0, :cond_4

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeBasicEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist serializeBasicEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v3, "Unsupported repeating basic envelope effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/os/vibrator/BasicPwleSegment;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unsupported segment for basic envelope effect %s"

    invoke-static {p0, v3, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/BasicPwleSegment;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->setInitialSharpness(F)V

    :cond_1
    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v3

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v5

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    const-string v1, "Unsupported segment for predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    check-cast p0, Landroid/os/vibrator/PrebakedSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findById(II)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unsupported predefined effect id %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    and-int/2addr p1, v2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unsupported predefined effect with should fallback %s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p1, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object p1
.end method

.method private static blacklist serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v2, "Unsupported repeating predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v1, "Unsupported multiple segments in predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v1, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, "Unsupported repeating primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v1

    aput-object v1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-direct {v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v0
.end method

.method private static blacklist serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    instance-of v0, p0, Landroid/os/vibrator/PrimitiveSegment;

    const-string v1, "Unsupported segment for primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    check-cast p0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findById(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unsupported primitive effect id %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v3

    const-string v4, "Unsupported primitive delay type %s"

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->findByType(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_3
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FILcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;)V

    return-object v1
.end method

.method private static blacklist serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
    .locals 1

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private static blacklist serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/os/vibrator/StepSegment;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Unsupported segment for waveform effect %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    :cond_0
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Unsupported segment with non-default frequency %f"

    invoke-static {v5, v7, v6}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v4

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->toAmplitudeInt(F)I

    move-result v4

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->addDurationAndAmplitude(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializeWaveformEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v3, "Unsupported repeating waveform envelope effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/os/vibrator/PwleSegment;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unsupported segment for waveform envelope effect %s"

    invoke-static {p0, v3, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/PwleSegment;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->setInitialFrequencyHz(F)V

    :cond_1
    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v3

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v5

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist toAmplitudeInt(F)I
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
