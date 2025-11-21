.class public final Landroid/telephony/ims/SipDetails;
.super Ljava/lang/Object;
.source "SipDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDetails$Builder;,
        Landroid/telephony/ims/SipDetails$Method;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METHOD_PUBLISH:I = 0x2

.field public static final whitelist METHOD_REGISTER:I = 0x1

.field public static final whitelist METHOD_SUBSCRIBE:I = 0x3

.field public static final whitelist METHOD_UNKNOWN:I


# instance fields
.field private final blacklist mCallId:Ljava/lang/String;

.field private final blacklist mCseq:I

.field private final blacklist mMethod:I

.field private final blacklist mReasonHeaderCause:I

.field private final blacklist mReasonHeaderText:Ljava/lang/String;

.field private final blacklist mResponseCode:I

.field private final blacklist mResponsePhrase:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/SipDetails$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDetails$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDetails-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/SipDetails$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmMethod(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmCseq(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmResponseCode(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmResponsePhrase(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmReasonHeaderCause(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmReasonHeaderText(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmCallId(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDetails$Builder;Landroid/telephony/ims/SipDetails-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/telephony/ims/SipDetails$Builder;)V

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
    check-cast p1, Landroid/telephony/ims/SipDetails;

    iget v2, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mMethod:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mCseq:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getCSeq()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    return p0
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMethod()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    return p0
.end method

.method public whitelist getReasonHeaderCause()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    return p0
.end method

.method public whitelist getReasonHeaderText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getResponseCode()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    return p0
.end method

.method public whitelist getResponsePhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SipDetails { methodType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ResponseCPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ReasonHeaderCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ReasonHeaderText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
