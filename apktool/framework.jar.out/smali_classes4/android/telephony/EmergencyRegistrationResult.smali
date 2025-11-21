.class public final Landroid/telephony/EmergencyRegistrationResult;
.super Ljava/lang/Object;
.source "EmergencyRegistrationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/EmergencyRegistrationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccessNetworkType:I

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mDomain:I

.field private blacklist mIsEmcBearerSupported:Z

.field private blacklist mIsVopsSupported:Z

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNwProvidedEmc:I

.field private blacklist mNwProvidedEmf:I

.field private blacklist mRegState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/EmergencyRegistrationResult$1;

    invoke-direct {v0}, Landroid/telephony/EmergencyRegistrationResult$1;-><init>()V

    sput-object v0, Landroid/telephony/EmergencyRegistrationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    iput p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    iput p3, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    iput-boolean p4, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    iput-boolean p5, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    iput p6, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    iput p7, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    iput-object p8, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iput-object p9, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iput-object p10, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/EmergencyRegistrationResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/EmergencyRegistrationResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/EmergencyRegistrationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/EmergencyRegistrationResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    iget-boolean v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    iget-boolean v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    iget-object v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    iput-object p1, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/EmergencyRegistrationResult;

    iget v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    iget v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    iget v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    iget v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    iget-boolean v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    iget-boolean v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    iget v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    iget v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAccessNetwork()I
    .locals 0

    iget p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    return p0
.end method

.method public whitelist getCountryIso()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getDomain()I
    .locals 0

    iget p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    return p0
.end method

.method public whitelist getMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMnc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getNwProvidedEmc()I
    .locals 0

    iget p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    return p0
.end method

.method public whitelist getNwProvidedEmf()I
    .locals 0

    iget p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    return p0
.end method

.method public whitelist getRegState()I
    .locals 0

    iget p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 11

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isEmcBearerSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    return p0
.end method

.method public whitelist isVopsSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ accessNetwork="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->domainToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emcBearer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
