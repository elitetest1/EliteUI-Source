.class public final Landroid/os/VibratorInfo$Builder;
.super Ljava/lang/Object;
.source "VibratorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCapabilities:J

.field private blacklist mCompositionSizeMax:I

.field private blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

.field private blacklist mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

.field private final blacklist mId:I

.field private blacklist mMaxEnvelopeEffectControlPointDurationMillis:I

.field private blacklist mMaxEnvelopeEffectSize:I

.field private blacklist mMinEnvelopeEffectControlPointDurationMillis:I

.field private blacklist mPrimitiveDelayMax:I

.field private blacklist mPwlePrimitiveDurationMax:I

.field private blacklist mPwleSizeMax:I

.field private blacklist mQFactor:F

.field private blacklist mSupportedBraking:Landroid/util/SparseBooleanArray;

.field private blacklist mSupportedEffects:Landroid/util/SparseBooleanArray;

.field private blacklist mSupportedPrimitives:Landroid/util/SparseIntArray;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    new-instance v1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v0, v2}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    iput-object v1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    new-instance v1, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v1, v0, v2, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    iput-object v1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mId:I

    return-void
.end method

.method private static blacklist toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public blacklist build()Landroid/os/VibratorInfo;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/VibratorInfo;

    move-object v2, v1

    iget v1, v0, Landroid/os/VibratorInfo$Builder;->mId:I

    move-object v4, v2

    iget-wide v2, v0, Landroid/os/VibratorInfo$Builder;->mCapabilities:J

    move-object v5, v4

    iget-object v4, v0, Landroid/os/VibratorInfo$Builder;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    move-object v6, v5

    iget-object v5, v0, Landroid/os/VibratorInfo$Builder;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    move-object v7, v6

    iget-object v6, v0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    move-object v8, v7

    iget v7, v0, Landroid/os/VibratorInfo$Builder;->mPrimitiveDelayMax:I

    move-object v9, v8

    iget v8, v0, Landroid/os/VibratorInfo$Builder;->mCompositionSizeMax:I

    move-object v10, v9

    iget v9, v0, Landroid/os/VibratorInfo$Builder;->mPwlePrimitiveDurationMax:I

    move-object v11, v10

    iget v10, v0, Landroid/os/VibratorInfo$Builder;->mPwleSizeMax:I

    move-object v12, v11

    iget v11, v0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    move-object v13, v12

    iget-object v12, v0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-object v14, v13

    iget-object v13, v0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    move-object v15, v14

    iget v14, v0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectSize:I

    move-object/from16 v16, v15

    iget v15, v0, Landroid/os/VibratorInfo$Builder;->mMinEnvelopeEffectControlPointDurationMillis:I

    iget v0, v0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectControlPointDurationMillis:I

    move-object/from16 v17, v16

    move/from16 v16, v0

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V

    return-object v0
.end method

.method public blacklist setCapabilities(J)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/VibratorInfo$Builder;->mCapabilities:J

    return-object p0
.end method

.method public blacklist setCompositionSizeMax(I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mCompositionSizeMax:I

    return-object p0
.end method

.method public blacklist setFrequencyProfile(Landroid/os/VibratorInfo$FrequencyProfile;)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-object p0
.end method

.method public blacklist setFrequencyProfileLegacy(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    return-object p0
.end method

.method public blacklist setMaxEnvelopeEffectControlPointDurationMillis(I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectControlPointDurationMillis:I

    return-object p0
.end method

.method public blacklist setMaxEnvelopeEffectSize(I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectSize:I

    return-object p0
.end method

.method public blacklist setMinEnvelopeEffectControlPointDurationMillis(I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mMinEnvelopeEffectControlPointDurationMillis:I

    return-object p0
.end method

.method public blacklist setPrimitiveDelayMax(I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPrimitiveDelayMax:I

    return-object p0
.end method

.method public blacklist setPwlePrimitiveDurationMax(I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPwlePrimitiveDurationMax:I

    return-object p0
.end method

.method public blacklist setPwleSizeMax(I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPwleSizeMax:I

    return-object p0
.end method

.method public blacklist setQFactor(F)Landroid/os/VibratorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    return-object p0
.end method

.method public varargs blacklist setSupportedBraking([I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    invoke-static {p1}, Landroid/os/VibratorInfo$Builder;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroid/os/VibratorInfo$Builder;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public varargs blacklist setSupportedEffects([I)Landroid/os/VibratorInfo$Builder;
    .locals 0

    invoke-static {p1}, Landroid/os/VibratorInfo$Builder;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroid/os/VibratorInfo$Builder;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public blacklist setSupportedPrimitive(II)Landroid/os/VibratorInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0
.end method
