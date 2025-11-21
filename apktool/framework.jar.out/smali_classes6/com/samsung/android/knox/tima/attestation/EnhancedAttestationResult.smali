.class public Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
.super Ljava/lang/Object;
.source "EnhancedAttestationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DATA_FIELD_BLOB:Ljava/lang/String; = "dataFieldBlob"

.field static final blacklist DATA_FIELD_SERVER_RESPONSE_ID:Ljava/lang/String; = "serverResponseId"

.field static final blacklist DATA_FIELD_SERVER_RESPONSE_RAW_DATA:Ljava/lang/String; = "serverResponseRawData"

.field static final blacklist DATA_FIELD_UNIQUE_ID:Ljava/lang/String; = "dataFieldUniqueId"

.field static final blacklist DATA_FIELD_URL:Ljava/lang/String; = "dataFieldUrl"

.field static final blacklist ERROR_BAD_REQUEST:I = 0x190

.field static final blacklist ERROR_BIND_FAIL:I = -0x7

.field static final blacklist ERROR_CONFLICT:I = 0x199

.field static final blacklist ERROR_DEVICE_NOT_SUPPORTED:I = -0x4

.field static final blacklist ERROR_FORBIDDEN:I = 0x193

.field static final blacklist ERROR_INTERNAL_SERVER:I = 0x1f4

.field static final blacklist ERROR_INVALID_AUK:I = -0x6

.field static final blacklist ERROR_INVALID_NONCE:I = -0x5

.field static final blacklist ERROR_NETWORK:I = -0x8

.field static final blacklist ERROR_NONE:I = 0x0

.field static final blacklist ERROR_NOT_FOUND:I = 0x194

.field static final blacklist ERROR_PERMISSION:I = -0x2

.field static final blacklist ERROR_RETRY_AFTER:Ljava/lang/String; = "Retry-After:"

.field static final blacklist ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field static final blacklist ERROR_TIMA_INTERNAL:I = -0x3

.field static final blacklist ERROR_UNAUTHORIZED:I = 0x191

.field static final blacklist ERROR_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEMEAPolicyResult"


# instance fields
.field private blacklist data:Landroid/os/Bundle;

.field private blacklist errorCode:I

.field private blacklist reason:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist getBlob()[B
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "dataFieldBlob"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method blacklist getError()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    return p0
.end method

.method blacklist getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getResponseRawData()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "serverResponseRawData"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist getRetryAfterTime()I
    .locals 2

    const-string v0, "Retry-After:"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRetryAfterTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEMEAPolicyResult"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method blacklist getServerResponseId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "serverResponseId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "dataFieldUniqueId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist getUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "dataFieldUrl"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    return-void
.end method

.method public blacklist setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    return-void
.end method

.method public blacklist setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
