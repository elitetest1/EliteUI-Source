.class public final Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$AudioCapabilities;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final whitelist AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioCapabilities:I

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mId:I

.field private final blacklist mImplementor:Ljava/lang/String;

.field private final blacklist mMaxBufferMillis:I

.field private final blacklist mMaxKeyphrases:I

.field private final blacklist mMaxSoundModels:I

.field private final blacklist mMaxUsers:I

.field private final blacklist mPowerConsumptionMw:I

.field private final blacklist mRecognitionModes:I

.field private final blacklist mReturnsTriggerInEvent:Z

.field private final blacklist mSupportedModelArch:Ljava/lang/String;

.field private final blacklist mSupportsCaptureTransition:Z

.field private final blacklist mSupportsConcurrentCapture:Z

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 0

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    iput p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    iput p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    iput p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    iput p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    iput-boolean p11, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    iput p12, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    iput-boolean p13, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    iput p14, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    iput-boolean p15, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    move/from16 p1, p16

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v0, v11

    move v11, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v14

    if-ne v14, v12, :cond_1

    move v14, v13

    move v13, v12

    goto :goto_1

    :cond_1
    move v14, v13

    move v13, v0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v12, :cond_2

    move/from16 v16, v12

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v12, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v0

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-direct/range {v0 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    return-object v0
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
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    if-eq p0, p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public whitelist getAudioCapabilities()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    return p0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    return p0
.end method

.method public whitelist getImplementor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMaxBufferMillis()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    return p0
.end method

.method public whitelist getMaxKeyphrases()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    return p0
.end method

.method public whitelist getMaxSoundModels()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    return p0
.end method

.method public whitelist getMaxUsers()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    return p0
.end method

.method public whitelist getPowerConsumptionMw()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    return p0
.end method

.method public whitelist getRecognitionModes()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    return p0
.end method

.method public whitelist getSupportedModelArch()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public whitelist getVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist isCaptureTransitionSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    return p0
.end method

.method public whitelist isConcurrentCaptureSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    return p0
.end method

.method public whitelist isTriggerReturnedInEvent()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModuleProperties [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", implementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , supportedModelArch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSoundModels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxKeyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportsCaptureTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxBufferMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportsConcurrentCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", powerConsumptionMw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", returnsTriggerInEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", audioCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
