.class public final Landroid/os/vibrator/PwlePoint;
.super Ljava/lang/Object;
.source "PwlePoint.java"


# instance fields
.field private final blacklist mAmplitude:F

.field private final blacklist mFrequencyHz:F

.field private final blacklist mTimeMillis:I


# direct methods
.method public constructor blacklist <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    iput p2, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    iput p3, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/os/vibrator/PwlePoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/os/vibrator/PwlePoint;

    iget v0, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    iget v2, p1, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    iget v2, p1, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    iget p1, p1, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getAmplitude()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    return p0
.end method

.method public blacklist getFrequencyHz()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    return p0
.end method

.method public blacklist getTimeMillis()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PwlePoint{amplitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
