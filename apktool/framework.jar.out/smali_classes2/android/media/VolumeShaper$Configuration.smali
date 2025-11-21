.class public final Landroid/media/VolumeShaper$Configuration;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$Builder;,
        Landroid/media/VolumeShaper$Configuration$OptionFlag;,
        Landroid/media/VolumeShaper$Configuration$InterpolatorType;,
        Landroid/media/VolumeShaper$Configuration$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final whitelist INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final whitelist INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final whitelist INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final whitelist INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final whitelist LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final greylist-max-o MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final greylist-max-o OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final greylist-max-o OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final greylist-max-o OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final whitelist SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final whitelist SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final greylist-max-o TYPE_ID:I = 0x0

.field static final greylist-max-o TYPE_SCALE:I = 0x1


# instance fields
.field private final greylist-max-r mDurationMs:D

.field private final greylist-max-r mId:I

.field private final greylist-max-r mInterpolatorType:I

.field private final greylist-max-r mOptionFlags:I

.field private final greylist-max-r mTimes:[F

.field private final greylist-max-r mType:I

.field private final greylist-max-r mVolumes:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidVolumeAndThrowException(FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smclampVolume([FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 12

    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    const/16 v0, 0x10

    new-array v4, v0, [F

    new-array v5, v0, [F

    new-array v6, v0, [F

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    int-to-float v8, v7

    const/high16 v9, 0x41700000    # 15.0f

    div-float/2addr v8, v9

    aput v8, v4, v7

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v5, v7

    mul-float/2addr v8, v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v0, Landroid/media/VolumeShaper$Configuration$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor greylist-max-o <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "negative id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor greylist-max-r <init>(IIIDI[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIDI[F[FLandroid/media/VolumeShaper-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method private static greylist-max-o checkCurveForErrors([F[FZ)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "times array must be non-null"

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "volumes array must be non-null"

    return-object p0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_2

    const-string p0, "array length must match"

    return-object p0

    :cond_2
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    const-string p0, "array length must be at least 2"

    return-object p0

    :cond_3
    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_4

    const-string p0, "array length must be no larger than 16"

    return-object p0

    :cond_4
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    const-string p0, "times must start at 0.f"

    return-object p0

    :cond_5
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, p0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    const-string p0, "times must end at 1.f"

    return-object p0

    :cond_6
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_8

    aget v1, p0, v3

    add-int/lit8 v5, v3, -0x1

    aget v5, p0, v5

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "times not monotonic increasing, check index "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_a

    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_d

    aget p0, p1, v0

    cmpg-float p0, p0, v2

    if-lez p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "volumes for log scale cannot be positive, check index "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    array-length p0, p1

    if-ge v0, p0, :cond_d

    aget p0, p1, v0

    cmpl-float p2, p0, v2

    if-ltz p2, :cond_c

    cmpg-float p0, p0, v4

    if-lez p0, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "volumes for linear scale must be between 0.f and 1.f, check index "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o checkCurveForErrorsAndThrowException([F[FZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private static greylist-max-o checkValidVolumeAndThrowException(FZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dbfs volume must be 0.f or less"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    cmpl-float p1, p0, v0

    if-ltz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "volume must be >= 0.f and <= 1.f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o clampVolume([FZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :goto_0
    array-length p1, p0

    if-ge v0, p1, :cond_4

    aget p1, p0, v0

    cmpg-float p1, p1, v1

    if-lez p1, :cond_0

    aput v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length p1, p0

    if-ge v0, p1, :cond_4

    aget p1, p0, v0

    cmpl-float v2, p1, v1

    if-gez v2, :cond_2

    aput v1, p0, v0

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v2

    if-lez p1, :cond_3

    aput v2, p0, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static blacklist fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;
    .locals 12

    iget v0, p0, Landroid/media/VolumeShaperConfiguration;->type:I

    invoke-static {v0}, Landroid/media/VolumeShaper$Configuration;->typeFromAidl(I)I

    move-result v2

    iget v3, p0, Landroid/media/VolumeShaperConfiguration;->id:I

    if-nez v2, :cond_0

    new-instance p0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {p0, v3}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    return-object p0

    :cond_0
    iget v0, p0, Landroid/media/VolumeShaperConfiguration;->optionFlags:I

    invoke-static {v0}, Landroid/media/VolumeShaper$Configuration;->optionFlagsFromAidl(I)I

    move-result v4

    iget-wide v5, p0, Landroid/media/VolumeShaperConfiguration;->durationMs:D

    iget-object v0, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget v0, v0, Landroid/media/InterpolatorConfig;->type:I

    invoke-static {v0}, Landroid/media/VolumeShaper$Configuration;->interpolatorTypeFromAidl(I)I

    move-result v7

    iget-object v0, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v0, v0, Landroid/media/InterpolatorConfig;->xy:[F

    array-length v0, v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    div-int/lit8 v0, v0, 0x2

    new-array v8, v0, [F

    new-array v9, v0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v10, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v10, v10, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v11, v1, 0x2

    aget v10, v10, v11

    aput v10, v8, v1

    iget-object v10, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v10, v10, Landroid/media/InterpolatorConfig;->xy:[F

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    aput v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/media/VolumeShaper$Configuration;

    invoke-direct/range {v1 .. v9}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-object v1

    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "xy length must be even"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getMaximumCurvePoints()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method private static blacklist interpolatorTypeFromAidl(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Unknown interpolator type"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist interpolatorTypeToAidl(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown interpolator type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist optionFlagsFromAidl(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    or-int/lit8 p0, v0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method private static blacklist optionFlagsToAidl(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    or-int/lit8 p0, v0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method private blacklist toInterpolatorParcelable()Landroid/media/InterpolatorConfig;
    .locals 5

    new-instance v0, Landroid/media/InterpolatorConfig;

    invoke-direct {v0}, Landroid/media/InterpolatorConfig;-><init>()V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->interpolatorTypeToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/InterpolatorConfig;->type:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/InterpolatorConfig;->firstSlope:F

    iput v1, v0, Landroid/media/InterpolatorConfig;->lastSlope:F

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, v0, Landroid/media/InterpolatorConfig;->xy:[F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    aget v4, v4, v1

    aput v4, v2, v3

    iget-object v2, v0, Landroid/media/InterpolatorConfig;->xy:[F

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    aget v4, v4, v1

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static blacklist typeFromAidl(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist typeToAidl(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/media/VolumeShaper$Configuration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/media/VolumeShaper$Configuration;

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iget v4, p1, Landroid/media/VolumeShaper$Configuration;->mId:I

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iget-wide v4, p1, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iget-object v3, p1, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    iget-object p1, p1, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method greylist-max-o getAllOptionFlags()I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return p0
.end method

.method public whitelist getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public greylist-max-o getId()I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return p0
.end method

.method public whitelist getInterpolatorType()I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return p0
.end method

.method public greylist-max-o getOptionFlags()I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public whitelist getTimes()[F
    .locals 0

    iget-object p0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object p0
.end method

.method public greylist-max-o getType()I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return p0
.end method

.method public whitelist getVolumes()[F
    .locals 0

    iget-object p0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget v4, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist toParcelable()Landroid/media/VolumeShaperConfiguration;
    .locals 3

    new-instance v0, Landroid/media/VolumeShaperConfiguration;

    invoke-direct {v0}, Landroid/media/VolumeShaperConfiguration;-><init>()V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->typeToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->type:I

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->id:I

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->optionFlagsToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->optionFlags:I

    iget-wide v1, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput-wide v1, v0, Landroid/media/VolumeShaperConfiguration;->durationMs:D

    invoke-direct {p0}, Landroid/media/VolumeShaper$Configuration;->toInterpolatorParcelable()Landroid/media/InterpolatorConfig;

    move-result-object p0

    iput-object p0, v0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    :cond_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolumeShaper.Configuration{mType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    const-string v2, "}"

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", mOptionFlags = 0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDurationMs = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", mInterpolatorType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mTimes[] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mVolumes[] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/VolumeShaper$Configuration;->toParcelable()Landroid/media/VolumeShaperConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/VolumeShaperConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
