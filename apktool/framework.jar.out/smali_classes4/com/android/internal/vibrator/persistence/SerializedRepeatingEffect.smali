.class public Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
.super Ljava/lang/Object;
.source "SerializedRepeatingEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

.field private final blacklist mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    iput-object p2, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->deserialize()Landroid/os/VibrationEffect$Composed;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->deserialize()Landroid/os/VibrationEffect$Composed;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->deserialize()Landroid/os/VibrationEffect$Composed;

    move-result-object p0

    invoke-static {p0}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SerializedRepeatingEffect{preamble="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repeating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "repeating-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "preamble"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "repeating"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    sget-object p0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object p0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
