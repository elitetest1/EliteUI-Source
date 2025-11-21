.class public final Landroid/os/vibrator/StepSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "StepSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/StepSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAmplitude:F

.field private final blacklist mDuration:I

.field private final blacklist mFrequencyHz:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/vibrator/StepSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/StepSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/StepSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    iput p1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    iput p2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iput p3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/StepSegment;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->applyEffectStrength(I)Landroid/os/vibrator/StepSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 1

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v0}, Landroid/os/vibrator/StepSegment;->frequencyRequiresFrequencyControl(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->hasFrequencyControl()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget p0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {p0}, Landroid/os/vibrator/StepSegment;->amplitudeRequiresAmplitudeControl(F)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result p0

    and-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/os/vibrator/StepSegment;

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    iget v2, p1, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v2, p1, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    iget p1, p1, Landroid/os/vibrator/StepSegment;->mDuration:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getAmplitude()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    return p0
.end method

.method public blacklist getDuration()J
    .locals 2

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getFrequencyHz()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/StepSegment;
    .locals 2

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    if-lez p1, :cond_1

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/vibrator/StepSegment;

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v0, p1, v1, p0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amplitude must be between 1 and 255 inclusive (amplitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->resolve(I)Landroid/os/vibrator/StepSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scale(F)Landroid/os/vibrator/StepSegment;
    .locals 2

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result p1

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Landroid/os/vibrator/StepSegment;

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v0, p1, v1, p0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->scale(F)Landroid/os/vibrator/StepSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/StepSegment;
    .locals 2

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result p1

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Landroid/os/vibrator/StepSegment;

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v0, p1, v1, p0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0
.end method

.method public bridge synthetic blacklist scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->scaleLinearly(F)Landroid/os/vibrator/StepSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "Hz"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Step=%dms(amplitude=%.2f%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Step{amplitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", frequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist validate()V
    .locals 5

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    const-string v1, "frequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    int-to-long v2, v0

    const-string v0, "duration"

    invoke-static {v2, v3, v0}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "amplitude"

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {p0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    return-void

    :cond_0
    iget p0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "frequency must be default when amplitude is set to default"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
