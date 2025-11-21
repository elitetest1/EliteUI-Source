.class public final Landroid/os/vibrator/VibratorFrequencyProfileLegacy;
.super Ljava/lang/Object;
.source "VibratorFrequencyProfileLegacy.java"


# instance fields
.field private final blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;


# direct methods
.method public constructor blacklist <init>(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Frequency profile must have a non-empty frequency range"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    return-void
.end method


# virtual methods
.method public blacklist getMaxAmplitudeMeasurementInterval()F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyResolutionHz()F

    move-result p0

    return p0
.end method

.method public blacklist getMaxAmplitudeMeasurements()[F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitudes()[F

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMaxFrequency()F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public blacklist getMinFrequency()F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method
