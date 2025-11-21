.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;
.super Ljava/lang/Object;
.source "SerializedWaveformEffectEntries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAmplitudes:Landroid/util/IntArray;

.field private final blacklist mTimings:Landroid/util/LongArray;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mAmplitudes:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method blacklist addDurationAndAmplitude(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->add(J)V

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mAmplitudes:Landroid/util/IntArray;

    invoke-virtual {p0, p3}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method blacklist build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;
    .locals 3

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mAmplitudes:Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;-><init>([J[ILcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries-IA;)V

    return-object v0
.end method

.method blacklist hasNonZeroDuration()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v2, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
