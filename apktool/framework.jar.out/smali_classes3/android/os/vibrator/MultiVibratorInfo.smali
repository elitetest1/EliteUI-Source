.class public final Landroid/os/vibrator/MultiVibratorInfo;
.super Landroid/os/VibratorInfo;
.source "MultiVibratorInfo.java"


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "MultiVibratorInfo"


# direct methods
.method public constructor blacklist <init>(I[Landroid/os/VibratorInfo;)V
    .locals 2

    invoke-static {p2}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyProfileLegacyIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    invoke-static {p2}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;-><init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;)V

    return-void
.end method

.method private constructor blacklist <init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;)V
    .locals 19

    move-object/from16 v0, p2

    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;

    move-result-object v8

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v9

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v10

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v11

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v12

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v13

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v16

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v17

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v18

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v2 .. v18}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V

    return-void
.end method

.method private static blacklist capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I
    .locals 8

    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    int-to-long v4, v1

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getCapabilities()J

    move-result-wide v6

    and-long v3, v4, v6

    long-to-int v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    and-int/lit16 p0, v1, -0x201

    return p0

    :cond_1
    return v1
.end method

.method private static blacklist floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-object v3, p0, v1

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static blacklist frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;
    .locals 14

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v2, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0, v2}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    array-length v4, p0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v5

    move v8, v6

    :goto_0
    if-ge v8, v4, :cond_6

    aget-object v10, p0, v8

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v11

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result v12

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v11

    if-nez v11, :cond_3

    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    :cond_3
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v10

    array-length v11, v10

    move v12, v6

    :goto_1
    if-ge v12, v11, :cond_4

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    :cond_6
    cmpl-float v4, v7, v9

    if-lez v4, :cond_7

    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v4, v1, v7

    if-ltz v4, :cond_9

    cmpl-float v1, v1, v9

    if-lez v1, :cond_8

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_a
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [F

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [F

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    array-length v8, p0

    move v10, v5

    move v9, v6

    :goto_5
    if-ge v9, v8, :cond_b

    aget-object v11, p0, v9

    invoke-virtual {v11}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v0, v4

    aput v10, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v2, v0, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    :cond_d
    :goto_6
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0
.end method

.method private static blacklist frequencyProfileLegacyIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfileLegacy;
    .locals 15

    new-instance v0, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, v0}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v0

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v1

    invoke-static {p0, v0}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v2, :cond_5

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    new-array v6, v5, [F

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    array-length v7, p0

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_4

    aget-object v10, p0, v9

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitudes()[F

    move-result-object v12

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float/2addr v13, v11

    div-float/2addr v13, v0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int v13, v11, v5

    add-int/lit8 v13, v13, -0x1

    if-ltz v11, :cond_3

    array-length v14, v12

    if-lt v13, v14, :cond_1

    goto :goto_2

    :cond_1
    move v10, v8

    :goto_1
    if-ge v10, v5, :cond_2

    aget v13, v6, v10

    add-int v14, v11, v10

    aget v14, v12, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Error calculating the intersection of vibrator frequency profiles: attempted to fetch from vibrator "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " max amplitude with bad index "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiVibratorInfo"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-direct {p0, v1, v4, v4, v3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object p0

    :cond_4
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v1, v2, v0, v6}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object p0

    :cond_5
    :goto_3
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-direct {p0, v1, v4, v0, v3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object p0
.end method

.method private static blacklist frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x1

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_5

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v0

    if-gez v5, :cond_4

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    rem-float/2addr v5, p1

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    sub-float p0, v0, v2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_6

    return-object v1

    :cond_6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p0, v1

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v2, :cond_0

    if-lez v3, :cond_1

    if-ge v3, v2, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method static synthetic blacklist lambda$frequencyProfileLegacyIntersection$0(Landroid/os/VibratorInfo;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyResolutionHz()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isBrakingSupportKnown()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getSupportedBraking()Landroid/util/SparseBooleanArray;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    move v5, v4

    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_4

    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->hasBrakingSupport(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private static blacklist supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isEffectSupportKnown()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getSupportedEffects()Landroid/util/SparseBooleanArray;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    move v5, v4

    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_4

    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v6

    if-eq v6, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private static blacklist supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;
    .locals 7

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getSupportedPrimitives()Landroid/util/SparseIntArray;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_2

    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
