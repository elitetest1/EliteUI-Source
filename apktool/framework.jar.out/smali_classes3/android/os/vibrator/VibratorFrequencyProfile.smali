.class public final Landroid/os/vibrator/VibratorFrequencyProfile;
.super Ljava/lang/Object;
.source "VibratorFrequencyProfile.java"


# instance fields
.field private final blacklist mFrequenciesOutputAcceleration:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;


# direct methods
.method public constructor blacklist <init>(Landroid/os/VibratorInfo$FrequencyProfile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Frequency profile must not be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-static {p1}, Landroid/os/vibrator/VibratorFrequencyProfile;->generateFrequencyToAccelerationMap(Landroid/os/VibratorInfo$FrequencyProfile;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequenciesOutputAcceleration:Landroid/util/SparseArray;

    return-void
.end method

.method private static blacklist generateFrequencyToAccelerationMap(Landroid/os/VibratorInfo$FrequencyProfile;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo$FrequencyProfile;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    float-to-int v4, v4

    if-ne v4, v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v2, v4

    invoke-virtual {p0, v2}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v2, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public whitelist getFrequenciesOutputAcceleration()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequenciesOutputAcceleration:Landroid/util/SparseArray;

    return-object p0
.end method

.method public whitelist getFrequencyRange(F)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz(F)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getMaxFrequencyHz()F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result p0

    return p0
.end method

.method public whitelist getMaxOutputAccelerationGs()F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxOutputAccelerationGs()F

    move-result p0

    return p0
.end method

.method public whitelist getMinFrequencyHz()F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result p0

    return p0
.end method

.method public whitelist getOutputAccelerationGs(F)F
    .locals 0

    iget-object p0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result p0

    return p0
.end method
