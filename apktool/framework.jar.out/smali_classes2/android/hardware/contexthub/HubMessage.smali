.class public final Landroid/hardware/contexthub/HubMessage;
.super Ljava/lang/Object;
.source "HubMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubMessage$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/HubMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG_LOG_NUM_BYTES:I = 0x10


# instance fields
.field private final blacklist mMessageBody:[B

.field private blacklist mMessageSequenceNumber:I

.field private final blacklist mMessageType:I

.field private final blacklist mResponseRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/contexthub/HubMessage$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/HubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageBody cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    iput-object p2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    iput-boolean p3, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(I[BZLandroid/hardware/contexthub/HubMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubMessage;-><init>(I[BZ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/contexthub/HubMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubMessage;-><init>(Landroid/os/Parcel;)V

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

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/contexthub/HubMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/hardware/contexthub/HubMessage;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageType()I

    move-result v1

    iget v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageBody()[B

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v1

    iget-boolean v3, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p1

    iget p0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getMessageBody()[B
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    return-object p0
.end method

.method public blacklist getMessageSequenceNumber()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    return p0
.end method

.method public whitelist getMessageType()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    invoke-static {}, Landroid/chre/flags/Flags;->fixApiCheck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget p0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isResponseRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    return p0
.end method

.method public blacklist setMessageSequenceNumber(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HubMessage[type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", messageSequenceNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", responseRequired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_0

    const-string v2, "data = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-le v0, v3, :cond_3

    const-string p0, "..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean p2, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
