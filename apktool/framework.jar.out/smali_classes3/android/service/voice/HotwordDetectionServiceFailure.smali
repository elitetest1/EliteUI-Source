.class public final Landroid/service/voice/HotwordDetectionServiceFailure;
.super Ljava/lang/Object;
.source "HotwordDetectionServiceFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectionServiceFailure$HotwordDetectionServiceErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordDetectionServiceFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_CODE_BINDING_DIED:I = 0x2

.field public static final whitelist ERROR_CODE_BIND_FAILURE:I = 0x1

.field public static final whitelist ERROR_CODE_COPY_AUDIO_DATA_FAILURE:I = 0x3

.field public static final whitelist ERROR_CODE_DETECT_TIMEOUT:I = 0x4

.field public static final whitelist ERROR_CODE_ON_DETECTED_SECURITY_EXCEPTION:I = 0x5

.field public static final whitelist ERROR_CODE_ON_DETECTED_STREAM_COPY_FAILURE:I = 0x6

.field public static final whitelist ERROR_CODE_REMOTE_EXCEPTION:I = 0x7

.field public static final blacklist ERROR_CODE_SHUTDOWN_HDS_ON_VOICE_ACTIVATION_OP_DISABLED:I = 0xa

.field public static final whitelist ERROR_CODE_UNKNOWN:I


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectionServiceFailure$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    iput-object p2, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "errorMessage is empty or null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getErrorCode()I
    .locals 0

    iget p0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    return p0
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSuggestedAction()I
    .locals 3

    iget p0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotwordDetectionServiceFailure { errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
