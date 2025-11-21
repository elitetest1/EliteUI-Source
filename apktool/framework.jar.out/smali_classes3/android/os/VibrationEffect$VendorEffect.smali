.class public final Landroid/os/VibrationEffect$VendorEffect;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorEffect"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$VendorEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_SCALE:F = 1.0f

.field public static final blacklist DEFAULT_STRENGTH:I = 0x1


# instance fields
.field private final blacklist mAdaptiveScale:F

.field private final blacklist mEffectStrength:I

.field private final blacklist mScale:F

.field private final blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$VendorEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$VendorEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$VendorEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    const-class v0, Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;IFF)V
    .locals 0

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    iput-object p1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iput p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iput p3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    iput p4, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    return-void
.end method

.method private static blacklist isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private static blacklist isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/os/PersistableBundle;

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-static {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, [D

    if-eqz v0, :cond_5

    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_5
    instance-of v0, p0, [Z

    if-eqz v0, :cond_6

    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    :cond_6
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p0, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect;
    .locals 3

    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    return-object v0
.end method

.method public blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .locals 3

    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-direct {v0, v1, p1, v2, p0}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    return-object v0
.end method

.method public blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$VendorEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/os/VibrationEffect$VendorEffect;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 2

    const-wide/16 v0, 0x800

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public blacklist computeCreateWaveformOffOnTimingsOrNull()[J
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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
    instance-of v1, p1, Landroid/os/VibrationEffect$VendorEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/os/VibrationEffect$VendorEffect;

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget v3, p1, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    iget v3, p1, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    iget v3, p1, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget-object p1, p1, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-static {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public blacklist getAdaptiveScale()F
    .locals 0

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    return p0
.end method

.method public blacklist getDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getEffectStrength()I
    .locals 0

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    return p0
.end method

.method public blacklist getScale()F
    .locals 0

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    return p0
.end method

.method public blacklist getVendorData()Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist resolve(I)Landroid/os/VibrationEffect$VendorEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->resolve(I)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scale(F)Landroid/os/VibrationEffect$VendorEffect;
    .locals 3

    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    return-object v0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->scale(F)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-static {v2}, Landroid/os/VibrationEffect$VendorEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "vendorEffect=%s, strength=%s, scale=%.2f, adaptiveScale=%.2f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-static {v2}, Landroid/os/VibrationEffect$VendorEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "VendorEffect{vendorData=%s, strength=%s, scale=%.2f, adaptiveScale=%.2f}"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist validate()V
    .locals 1

    iget-object p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Vendor effect bundle must be non-empty"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
