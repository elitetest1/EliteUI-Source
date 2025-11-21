.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
.super Ljava/lang/Object;
.source "SerializedWaveformEnvelopeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mControlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInitialFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControlPoints(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mInitialFrequencyHz:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method blacklist addControlPoint(FFJ)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;-><init>(FFJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method blacklist build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
    .locals 3

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    iget p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mInitialFrequencyHz:F

    invoke-direct {v0, v1, p0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;F)V

    return-object v0
.end method

.method blacklist setInitialFrequencyHz(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mInitialFrequencyHz:F

    return-void
.end method
