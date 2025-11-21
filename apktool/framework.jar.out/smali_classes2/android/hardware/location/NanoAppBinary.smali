.class public final Landroid/hardware/location/NanoAppBinary;
.super Ljava/lang/Object;
.source "NanoAppBinary.java"

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
            "Landroid/hardware/location/NanoAppBinary;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXPECTED_HEADER_VERSION:I = 0x1

.field private static final greylist-max-o EXPECTED_MAGIC_VALUE:I = 0x4f4e414e

.field private static final greylist-max-o HEADER_ORDER:Ljava/nio/ByteOrder;

.field private static final greylist-max-o HEADER_SIZE_BYTES:I = 0x28

.field private static final greylist-max-o NANOAPP_ENCRYPTED_FLAG_BIT:I = 0x2

.field private static final greylist-max-o NANOAPP_SIGNED_FLAG_BIT:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NanoAppBinary"


# instance fields
.field private greylist-max-o mFlags:I

.field private greylist-max-o mHasValidHeader:Z

.field private greylist-max-o mHeaderVersion:I

.field private greylist-max-o mHwHubType:J

.field private greylist-max-o mMagic:I

.field private greylist-max-o mNanoAppBinary:[B

.field private greylist-max-o mNanoAppId:J

.field private greylist-max-o mNanoAppVersion:I

.field private greylist-max-o mTargetChreApiMajorVersion:B

.field private greylist-max-o mTargetChreApiMinorVersion:B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/hardware/location/NanoAppBinary;->HEADER_ORDER:Ljava/nio/ByteOrder;

    new-instance v0, Landroid/hardware/location/NanoAppBinary$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppBinary$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-direct {p0}, Landroid/hardware/location/NanoAppBinary;->parseBinaryHeader()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppBinary-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppBinary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    iput-object p1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-direct {p0}, Landroid/hardware/location/NanoAppBinary;->parseBinaryHeader()V

    return-void
.end method

.method private greylist-max-o parseBinaryHeader()V
    .locals 6

    const-string v0, "NanoAppBinary"

    const-string v1, " while parsing header (expected 1)"

    const-string v2, "Unexpected header version "

    iget-object v3, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Landroid/hardware/location/NanoAppBinary;->HEADER_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    :try_start_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppId:J

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppVersion:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/location/NanoAppBinary;->mHwHubType:J

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMajorVersion:B

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMinorVersion:B
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    const v2, 0x4f4e414e

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected magic value "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "0x%08X"

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "while parsing header (expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean v5, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    return-void

    :catch_0
    const-string p0, "Not enough contents in nanoapp header"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getBinary()[B
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    return-object p0
.end method

.method public whitelist getBinaryNoHeader()[B
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v1, v0

    const/16 v2, 0x28

    if-lt v1, v2, :cond_0

    array-length p0, v0

    invoke-static {v0, v2, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NanoAppBinary binary byte size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is less than header size (40)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFlags()I
    .locals 0

    iget p0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    return p0
.end method

.method public whitelist getHeaderVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    return p0
.end method

.method public whitelist getHwHubType()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppBinary;->mHwHubType:J

    return-wide v0
.end method

.method public whitelist getNanoAppId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist getNanoAppVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppVersion:I

    return p0
.end method

.method public whitelist getTargetChreApiMajorVersion()B
    .locals 0

    iget-byte p0, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMajorVersion:B

    return p0
.end method

.method public whitelist getTargetChreApiMinorVersion()B
    .locals 0

    iget-byte p0, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMinorVersion:B

    return p0
.end method

.method public whitelist hasValidHeader()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    return p0
.end method

.method public whitelist isEncrypted()Z
    .locals 0

    iget p0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isSigned()Z
    .locals 1

    iget p0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
