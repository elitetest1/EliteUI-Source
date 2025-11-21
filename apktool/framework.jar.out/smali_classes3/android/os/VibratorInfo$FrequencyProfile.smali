.class public final Landroid/os/VibratorInfo$FrequencyProfile;
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
    name = "FrequencyProfile"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequenciesHz:[F

.field private final blacklist mMaxFrequencyHz:F

.field private final blacklist mMaxOutputAccelerationGs:F

.field private final blacklist mMinFrequencyHz:F

.field private final blacklist mOutputAccelerationsGs:[F

.field private final blacklist mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfile$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(F[F[F)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length p1, p2

    array-length v1, p3

    if-ne p1, v1, :cond_2

    array-length p1, p2

    if-lez p1, :cond_2

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/TreeMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p2

    new-array p2, p2, [F

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p3

    new-array p3, p3, [F

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, p2, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, p3, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    iput-object p3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget p1, p2, v1

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    iput v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    iput-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-void
.end method

.method private static blacklist deduplicateAndSortList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v4, v3}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static blacklist extractFrequencyToOutputAccelerationData([F[F)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Landroid/util/Pair;

    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic blacklist lambda$deduplicateAndSortList$0(Landroid/util/Pair;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    return-object p0
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
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/os/VibratorInfo$FrequencyProfile;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    iget-object v3, p1, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    iget-object p1, p1, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public blacklist getFrequenciesHz()[F
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    return-object p0
.end method

.method public blacklist getFrequencyRangeHz(F)Landroid/util/Range;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    new-instance p1, Landroid/util/Range;

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    array-length v4, v3

    const/high16 v5, 0x7fc00000    # Float.NaN

    if-ge v2, v4, :cond_4

    aget v4, v3, v2

    cmpl-float v6, v4, p1

    if-ltz v6, :cond_3

    if-nez v2, :cond_2

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    add-int/lit8 v6, v2, -0x1

    aget v7, v0, v6

    aget v0, v0, v2

    aget v3, v3, v6

    invoke-static {v7, v0, v3, v4, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    move v0, v5

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    array-length v3, v1

    if-ge v2, v3, :cond_7

    aget v3, v1, v2

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_6

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    add-int/lit8 v5, v2, -0x1

    aget v6, v4, v5

    aget v2, v4, v2

    aget v1, v1, v5

    invoke-static {v6, v2, v1, v3, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v5

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_8

    iget v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    :cond_8
    new-instance p0, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0

    :cond_9
    :goto_4
    return-object v1
.end method

.method public blacklist getMaxFrequencyHz()F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    return p0
.end method

.method public blacklist getMaxOutputAccelerationGs()F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    return p0
.end method

.method public blacklist getMinFrequencyHz()F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    return p0
.end method

.method public blacklist getOutputAccelerationGs(F)F
    .locals 4

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    if-nez v0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_0
    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget p0, p0, v0

    return p0

    :cond_2
    neg-int v0, v0

    add-int/lit8 v1, v0, -0x2

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v1, p0, v1

    aget p0, p0, v0

    invoke-static {v3, v2, v1, p0, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOutputAccelerationsGs()[F
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

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

    const-string v1, "FrequencyProfile{mResonantFrequency="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequenciesHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputAccelerationsGs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMinFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxOutputAccelerationGs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
