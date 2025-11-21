.class public final Landroid/os/vibrator/SemHapticSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "SemHapticSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/SemHapticSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mMagnitude:I

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/vibrator/SemHapticSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/SemHapticSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/SemHapticSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    iput p1, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    iput p1, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    iput p2, p0, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/os/vibrator/SemHapticSegment;-><init>(II)V

    return-void
.end method

.method private blacklist isValidEffectStrength(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/16 p0, 0x2710

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/SemHapticSegment;
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/vibrator/SemHapticSegment;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/vibrator/SemHapticSegment;

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-direct {v0, p0, p1}, Landroid/os/vibrator/SemHapticSegment;-><init>(II)V

    return-object v0

    :cond_0
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/SemHapticSegment;->applyEffectStrength(I)Landroid/os/vibrator/SemHapticSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/os/vibrator/SemHapticSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/os/vibrator/SemHapticSegment;

    iget v0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    iget v2, p1, Landroid/os/vibrator/SemHapticSegment;->mType:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    iget p1, p1, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getCategoryPath()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getCategoryPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultSepIndex()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getDefaultSepIndex(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDuration()J
    .locals 2

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public blacklist getMagnitude()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    return p0
.end method

.method public blacklist getSepIndex()I
    .locals 1

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    const v0, 0xc368

    sub-int/2addr p0, v0

    return p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist isCustomIndexValid()Z
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isCustomIndexValid(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isEffectClickReservedDC()Z
    .locals 1

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    const v0, 0xc3cc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEffectSilent()Z
    .locals 1

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    const v0, 0xc3a4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isHybridIndexValid()Z
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isHybridIndexValid(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isRamIndexValid()Z
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isRamIndexValid(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isResourceIndexValid()Z
    .locals 0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isResourceIndexValid(I)Z

    move-result p0

    return p0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/SemHapticSegment;
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/SemHapticSegment;->resolve(I)Landroid/os/vibrator/SemHapticSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scale(F)Landroid/os/vibrator/SemHapticSegment;
    .locals 0

    return-object p0
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/SemHapticSegment;->scale(F)Landroid/os/vibrator/SemHapticSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/SemHapticSegment;
    .locals 0

    new-instance p1, Landroid/os/vibrator/SemHapticSegment;

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-direct {p1, p0}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    return-object p1
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/SemHapticSegment;->scaleLinearly(F)Landroid/os/vibrator/SemHapticSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SemHaptic: mType=%d, mMagnitude=%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemHaptic{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist validate()V
    .locals 3

    iget v0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-static {v0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid haptic type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/vibrator/SemHapticSegment;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/os/vibrator/SemHapticSegment;->mMagnitude:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
