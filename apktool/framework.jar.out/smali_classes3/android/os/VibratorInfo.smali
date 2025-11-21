.class public Landroid/os/VibratorInfo;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibratorInfo$FrequencyProfileLegacy;,
        Landroid/os/VibratorInfo$FrequencyProfile;,
        Landroid/os/VibratorInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

.field private static final blacklist TAG:Ljava/lang/String; = "VibratorInfo"


# instance fields
.field private final blacklist mCapabilities:J

.field private final blacklist mCompositionSizeMax:I

.field private final blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

.field private final blacklist mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

.field private final blacklist mId:I

.field private final blacklist mMaxEnvelopeEffectControlPointDurationMillis:I

.field private final blacklist mMaxEnvelopeEffectSize:I

.field private final blacklist mMinEnvelopeEffectControlPointDurationMillis:I

.field private final blacklist mPrimitiveDelayMax:I

.field private final blacklist mPwlePrimitiveDurationMax:I

.field private final blacklist mPwleSizeMax:I

.field private final blacklist mQFactor:F

.field private final blacklist mSupportedBraking:Landroid/util/SparseBooleanArray;

.field private final blacklist mSupportedEffects:Landroid/util/SparseBooleanArray;

.field private final blacklist mSupportedPrimitives:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/VibratorInfo$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    sput-object v0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    new-instance v0, Landroid/os/VibratorInfo$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroid/os/VibratorInfo;->mId:I

    iput-wide p2, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    const/4 p1, 0x0

    if-nez p4, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p6}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iput p7, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iput p8, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iput p9, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iput p10, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iput p11, p0, Landroid/os/VibratorInfo;->mQFactor:F

    iput-object p12, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iput-object p13, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iput p14, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    iput p15, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    move/from16 p1, p16

    iput p1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/VibratorInfo;)V
    .locals 17

    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-object v4, v0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v5, v0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v6, v0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iget v7, v0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v8, v0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v9, v0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v10, v0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v11, v0, Landroid/os/VibratorInfo;->mQFactor:F

    iget-object v12, v0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget-object v13, v0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iget v14, v0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    iget v15, v0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    iget v0, v0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    move/from16 v1, p1

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    sget-object v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iput-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    sget-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorInfo$FrequencyProfile;

    iput-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    return-void
.end method

.method private blacklist getCapabilitiesNames()[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ON_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PERFORM_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v1, 0x20

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "COMPOSE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v1, 0x400

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "COMPOSE_PWLE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v1, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ALWAYS_ON_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-wide/16 v1, 0x200

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "FREQUENCY_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "EXTERNAL_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "EXTERNAL_AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-wide/16 v1, 0x1000

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "CAP_COMPOSE_PWLE_EFFECTS_V2"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getSupportedBrakingNames()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    const-string v2, "CLAB"

    aput-object v2, v0, v1

    goto :goto_1

    :cond_2
    const-string v2, "NONE"

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private blacklist getSupportedEffectsNames()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist getSupportedPrimitivesNames()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public blacklist areEnvelopeEffectsSupported()Z
    .locals 2

    const-wide/16 v0, 0x1200

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z
    .locals 0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect;->areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z

    move-result p0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string v0, "VibratorInfo:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "capabilities = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getCapabilitiesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "capabilitiesFlags = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "supportedEffects = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedEffectsNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "supportedPrimitives = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedPrimitivesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "supportedBraking = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedBrakingNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "primitiveDelayMax = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compositionSizeMax = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pwlePrimitiveDurationMax = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pwleSizeMax = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "q-factor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "frequencyProfileLegacy = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "frequencyProfile = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMaxEnvelopeEffectSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMinEnvelopeEffectControlPointDurationMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMaxEnvelopeEffectControlPointDurationMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public blacklist equalContent(Landroid/os/VibratorInfo;)Z
    .locals 5

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget-object v1, p1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget-object v4, p1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-wide v3, p1, Landroid/os/VibratorInfo;->mCapabilities:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p1, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    iget v1, p1, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    iget v1, p1, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    if-ne v0, v1, :cond_4

    iget p0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    iget p1, p1, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/VibratorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/os/VibratorInfo;

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    iget v3, p1, Landroid/os/VibratorInfo;->mId:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->equalContent(Landroid/os/VibratorInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getCapabilities()J
    .locals 2

    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    return-wide v0
.end method

.method public blacklist getCompositionSizeMax()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    return p0
.end method

.method public blacklist getDefaultBraking()I
    .locals 4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public blacklist getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-object p0
.end method

.method public blacklist getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    return-object p0
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mId:I

    return p0
.end method

.method public blacklist getMaxEnvelopeEffectControlPointDurationMillis()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    return p0
.end method

.method public blacklist getMaxEnvelopeEffectDurationMillis()I
    .locals 1

    iget v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    iget p0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public blacklist getMaxEnvelopeEffectSize()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    return p0
.end method

.method public blacklist getMinEnvelopeEffectControlPointDurationMillis()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    return p0
.end method

.method public blacklist getPrimitiveDelayMax()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    return p0
.end method

.method public blacklist getPrimitiveDuration(I)I
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public blacklist getPwlePrimitiveDurationMax()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    return p0
.end method

.method public blacklist getPwleSizeMax()I
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    return p0
.end method

.method public blacklist getQFactor()F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    return p0
.end method

.method public blacklist getResonantFrequencyHz()F
    .locals 1

    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-static {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->-$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-static {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->-$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)F

    move-result p0

    return p0
.end method

.method public blacklist getSupportedBraking()Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedEffects()Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedPrimitives()Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasAmplitudeControl()Z
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public blacklist hasBrakingSupport(I)Z
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasCapability(J)Z
    .locals 2

    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    and-long/2addr v0, p1

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasFrequencyControl()Z
    .locals 2

    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget-object v7, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist isBrakingSupportKnown()Z
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEffectSupportKnown()Z
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEffectSupported(I)I
    .locals 0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public blacklist isPrimitiveSupported(I)Z
    .locals 2

    const-wide/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VibratorInfo{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getCapabilitiesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCapabilities flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedEffectsNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedBraking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedBrakingNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedPrimitives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedPrimitivesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimitiveDelayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCompositionSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPwlePrimitiveDurationMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPwleSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mQFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequencyProfileLegacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequencyProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxEnvelopeEffectSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinEnvelopeEffectControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxEnvelopeEffectControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo$FrequencyProfile;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
