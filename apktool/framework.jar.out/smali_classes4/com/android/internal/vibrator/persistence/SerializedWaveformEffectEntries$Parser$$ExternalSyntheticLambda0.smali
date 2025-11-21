.class public final synthetic Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->addDurationAndAmplitude(JI)V

    return-void
.end method
