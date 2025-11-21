.class public final Landroid/telephony/ExtendedRegistrationInfo;
.super Ljava/lang/Object;
.source "ExtendedRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final blacklist mIsPsOnlyReg:Z

.field private final blacklist mMobileOptionalRadioTech:I

.field private final blacklist mSnapShotStatus:I

.field private final blacklist mUnprocessedDataRadioTechnology:I

.field private final blacklist mUnprocessedDataRegState:I

.field private final blacklist mUnprocessedVoiceRegState:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    iput-boolean v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    return-void
.end method

.method public constructor blacklist <init>(IIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    iput p2, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    iput p3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    iput p4, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    iput p5, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    iput-boolean p6, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

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
    instance-of v1, p1, Landroid/telephony/ExtendedRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/ExtendedRegistrationInfo;

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    iget v3, p1, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    iget v3, p1, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    iget v3, p1, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    iget v3, p1, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    iget v3, p1, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    iget-boolean p1, p1, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getDataMobileRadioTechnology()I
    .locals 0

    iget p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    return p0
.end method

.method public blacklist getDataMobileRegState()I
    .locals 0

    iget p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    return p0
.end method

.method public blacklist getMobileOptionalRadioTechnology()I
    .locals 0

    iget p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    return p0
.end method

.method public blacklist getSnapShotStatus()I
    .locals 0

    iget p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    return p0
.end method

.method public blacklist getVoiceMobileRegState()I
    .locals 0

    iget p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isPsOnlyReg()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ExtendedRegistrationInfo{ snapshotStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unprocessedDataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unprocessedDataRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mobileOptionalRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unprocessedVoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isPsOnlyReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
