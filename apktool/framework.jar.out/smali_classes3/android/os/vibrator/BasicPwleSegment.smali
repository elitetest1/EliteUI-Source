.class public final Landroid/os/vibrator/BasicPwleSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "BasicPwleSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/BasicPwleSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDuration:J

.field private final blacklist mEndIntensity:F

.field private final blacklist mEndSharpness:F

.field private final blacklist mStartIntensity:F

.field private final blacklist mStartSharpness:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/vibrator/BasicPwleSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/BasicPwleSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/BasicPwleSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFJ)V
    .locals 0

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    iput p1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    iput p2, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    iput p3, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    iput p4, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    iput-wide p5, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/BasicPwleSegment;
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->applyEffectStrength(I)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->areEnvelopeEffectsSupported()Z

    move-result p0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/os/vibrator/BasicPwleSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/os/vibrator/BasicPwleSegment;

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    iget v2, p1, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    iget v2, p1, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    iget v2, p1, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    iget v2, p1, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    iget-wide p0, p1, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    return-wide v0
.end method

.method public blacklist getEndIntensity()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    return p0
.end method

.method public blacklist getEndSharpness()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    return p0
.end method

.method public blacklist getStartIntensity()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    return p0
.end method

.method public blacklist getStartSharpness()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

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

.method public blacklist resolve(I)Landroid/os/vibrator/BasicPwleSegment;
    .locals 0

    return-object p0
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->resolve(I)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scale(F)Landroid/os/vibrator/BasicPwleSegment;
    .locals 8

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v2

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v3

    iget p1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Landroid/os/vibrator/BasicPwleSegment;

    iget v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    iget v5, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    iget-wide v6, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    return-object v1
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->scale(F)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/BasicPwleSegment;
    .locals 8

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v2

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v3

    iget p1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Landroid/os/vibrator/BasicPwleSegment;

    iget v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    iget v5, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    iget-wide v6, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    return-object v1
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->scaleLinearly(F)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget p0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pwle=%dms(intensity=%.2f @ %.2f to %.2f @ %.2f)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicPwle{startIntensity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startSharpness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endSharpness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist validate()V
    .locals 4

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    const-string/jumbo v1, "startSharpness"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    const-string v1, "endSharpness"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    const-string/jumbo v1, "startIntensity"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    const-string v1, "endIntensity"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget-wide v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    long-to-float p0, v0

    const-string v0, "Time must be greater than zero."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
