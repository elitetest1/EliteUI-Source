.class public final Landroid/os/VibratorInfo$FrequencyProfileLegacy;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequencyProfileLegacy"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfileLegacy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequencyRangeHz:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrequencyResolutionHz:F

.field private final blacklist mMaxAmplitudes:[F

.field private final blacklist mMinFrequencyHz:F

.field private final blacklist mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFF[F)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    iput p3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p4

    :goto_0
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    if-eqz p4, :cond_1

    array-length v2, p4

    invoke-static {p4, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p4, :cond_2

    cmpl-float p4, p1, v2

    if-lez p4, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_2

    cmpl-float p4, p2, v2

    if-lez p4, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_2

    cmpl-float p4, p3, v2

    if-lez p4, :cond_2

    array-length p4, v1

    if-lez p4, :cond_2

    move p4, v3

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    move v1, v0

    :goto_2
    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget v4, v4, v1

    cmpl-float v5, v4, v2

    if-ltz v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    and-int/2addr p4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    array-length v1, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    goto :goto_4

    :cond_5
    const/high16 p3, 0x7fc00000    # Float.NaN

    :goto_4
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_6

    cmpl-float v1, p1, p2

    if-ltz v1, :cond_6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_6

    cmpg-float p1, p2, p3

    if-gez p1, :cond_6

    move v0, v3

    :cond_6
    and-int p1, p4, v0

    if-eqz p1, :cond_7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    iput-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    iget-object p1, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getFrequencyRangeHz()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    return-object p0
.end method

.method public blacklist getFrequencyResolutionHz()F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    return p0
.end method

.method public blacklist getMaxAmplitude(F)F
    .locals 4

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    sub-float/2addr p1, v0

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v3, v2, v0

    aget v2, v2, v1

    int-to-float v0, v0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    mul-float/2addr v0, p0

    int-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {v3, v2, v0, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMaxAmplitudes()[F
    .locals 1

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FrequencyProfileLegacy{mFrequencyRange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMinFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mResonantFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequencyResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxAmplitudes count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
