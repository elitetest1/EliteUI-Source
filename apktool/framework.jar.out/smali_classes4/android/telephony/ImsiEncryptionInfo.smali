.class public final Landroid/telephony/ImsiEncryptionInfo;
.super Ljava/lang/Object;
.source "ImsiEncryptionInfo.java"

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
            "Landroid/telephony/ImsiEncryptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsiEncryptionInfo"


# instance fields
.field private final blacklist carrierId:I

.field private final greylist-max-o expirationTime:Ljava/util/Date;

.field private final greylist-max-o keyIdentifier:Ljava/lang/String;

.field private final greylist-max-o keyType:I

.field private final greylist-max-o mcc:Ljava/lang/String;

.field private final greylist-max-o mnc:Ljava/lang/String;

.field private final greylist-max-o publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ImsiEncryptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/ImsiEncryptionInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-static {v0}, Landroid/telephony/ImsiEncryptionInfo;->makeKeyObject([B)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    iput-object p5, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    iput-object p4, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    iput p7, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Date;I)V
    .locals 0

    invoke-static {p5}, Landroid/telephony/ImsiEncryptionInfo;->makeKeyObject([B)Ljava/security/PublicKey;

    move-result-object p5

    invoke-direct/range {p0 .. p7}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;I)V

    return-void
.end method

.method private static greylist-max-o makeKeyObject([B)Ljava/security/PublicKey;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ImsiEncryptionInfo"

    const-string v1, "Error makeKeyObject: unable to convert into PublicKey"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCarrierId()I
    .locals 0

    iget p0, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    return p0
.end method

.method public greylist-max-o getExpirationTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist getKeyIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getKeyType()I
    .locals 0

    iget p0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    return p0
.end method

.method public greylist-max-o getMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getMnc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPublicKey()Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ImsiEncryptionInfo mcc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publicKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carrier_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
