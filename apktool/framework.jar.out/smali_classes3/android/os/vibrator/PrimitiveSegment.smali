.class public final Landroid/os/vibrator/PrimitiveSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "PrimitiveSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/PrimitiveSegment;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_DELAY_MILLIS:I = 0x0

.field public static final blacklist DEFAULT_DELAY_TYPE:I = 0x0

.field public static final blacklist DEFAULT_SCALE:F = 1.0f


# instance fields
.field private final blacklist mDelay:I

.field private final blacklist mDelayType:I

.field private final blacklist mPrimitiveId:I

.field private final blacklist mScale:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/vibrator/PrimitiveSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/PrimitiveSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/PrimitiveSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IFI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    return-void
.end method

.method public constructor blacklist <init>(IFII)V
    .locals 0

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    iput p1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    iput p2, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    iput p3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    iput p4, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    return-void
.end method

.method private static blacklist isValidDelayType(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static blacklist toDelayTypeDebugString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "pause"

    return-object p0

    :cond_0
    const-string/jumbo p0, "startOffset"

    return-object p0
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/PrimitiveSegment;
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-virtual {p1, p0}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/os/vibrator/PrimitiveSegment;

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    iget v3, p1, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    iget v3, p1, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    iget p1, p1, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getDelay()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    return p0
.end method

.method public blacklist getDelayType()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    return p0
.end method

.method public blacklist getDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/os/VibratorInfo;)J
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDuration()J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-virtual {p1, v0}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result p1

    if-lez p1, :cond_1

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    add-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDuration()J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPrimitiveId()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    return p0
.end method

.method public blacklist getScale()F
    .locals 0

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

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

.method public blacklist resolve(I)Landroid/os/vibrator/PrimitiveSegment;
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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->resolve(I)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scale(F)Landroid/os/vibrator/PrimitiveSegment;
    .locals 3

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result p1

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-direct {v0, v1, p1, v2, p0}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->scale(F)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/PrimitiveSegment;
    .locals 3

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result p1

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-direct {v0, v1, p1, v2, p0}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

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

    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->scaleLinearly(F)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-static {v1}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-static {v3}, Landroid/os/vibrator/PrimitiveSegment;->toDelayTypeDebugString(I)Ljava/lang/String;

    move-result-object v3

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Primitive=%s(scale=%.2f, %s=%dms)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Primitive{primitive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-static {v1}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-static {p0}, Landroid/os/VibrationEffect$Composition;->delayTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist validate()V
    .locals 4

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    const/16 v1, 0x8

    const-string/jumbo v2, "primitiveId"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "scale"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    int-to-long v0, v0

    const-string v2, "delay"

    invoke-static {v0, v1, v2}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-static {p0}, Landroid/os/vibrator/PrimitiveSegment;->isValidDelayType(I)Z

    move-result p0

    const-string v0, "delayType"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
