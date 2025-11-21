.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
.super Ljava/lang/Object;
.source "SerializedWaveformEnvelopeEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;,
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

.field private final blacklist mInitialFrequency:F


# direct methods
.method constructor blacklist <init>([Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    iput p2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 8

    new-instance v0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    :cond_0
    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmAmplitude(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v4

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmFrequency(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v5

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SerializedWaveformEnvelopeEffect{InitialFrequency="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controlPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "waveform-envelope-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v2, "initialFrequencyHz"

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    sget-object v4, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v5, "control-point"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v6, "amplitude"

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmAmplitude(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v7

    invoke-interface {p1, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v6, "frequencyHz"

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmFrequency(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v7

    invoke-interface {p1, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v6, "durationMs"

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)J

    move-result-wide v7

    invoke-interface {p1, v4, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v3, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
