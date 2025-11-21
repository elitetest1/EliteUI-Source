.class public final Landroid/security/attestationverification/AttestationProfile;
.super Ljava/lang/Object;
.source "AttestationProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/attestationverification/AttestationProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AVF"


# instance fields
.field private final blacklist mAttestationProfileId:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mProfileName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/attestationverification/AttestationProfile$1;

    invoke-direct {v0}, Landroid/security/attestationverification/AttestationProfile$1;-><init>()V

    sput-object v0, Landroid/security/attestationverification/AttestationProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/security/attestationverification/AttestationProfile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "App-defined profiles must be specified with the constructor AttestationProfile#constructor(String, String)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    iput-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput v1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$AttestationProfileId;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/security/attestationverification/AttestationProfile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both packageName and profileName must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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
    check-cast p1, Landroid/security/attestationverification/AttestationProfile;

    iget v2, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    iget v3, p1, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    iget-object p1, p1, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAttestationProfileId()I
    .locals 0

    iget p0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getProfileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    const/4 v1, 0x1

    const-string v2, ")"

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttestationProfile(package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "AVF"

    const-string v1, "ERROR: Missing case in AttestationProfile#toString"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERROR"

    goto :goto_0

    :cond_1
    const-string v0, "PROFILE_UNKNOWN"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AttestationProfile("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
