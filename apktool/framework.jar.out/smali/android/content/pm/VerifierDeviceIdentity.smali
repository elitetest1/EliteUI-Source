.class public Landroid/content/pm/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source "VerifierDeviceIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VerifierDeviceIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ENCODE:[C

.field private static final greylist-max-o GROUP_SIZE:I = 0x4

.field private static final greylist-max-o LONG_SIZE:I = 0xd

.field private static final greylist-max-o SEPARATOR:C = '-'


# instance fields
.field private final greylist-max-o mIdentity:J

.field private final greylist-max-o mIdentityString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity$1;

    invoke-direct {v0}, Landroid/content/pm/VerifierDeviceIdentity$1;-><init>()V

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
    .end array-data
.end method

.method public constructor greylist-max-o <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-static {p1, p2}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-static {v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierDeviceIdentity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static final greylist-max-o decodeBase32([B)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xd

    if-ge v3, v0, :cond_9

    aget-byte v6, p0, v3

    const/16 v7, 0x41

    if-gt v7, v6, :cond_0

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_0

    add-int/lit8 v6, v6, -0x41

    goto :goto_1

    :cond_0
    const/16 v7, 0x32

    if-gt v7, v6, :cond_1

    const/16 v7, 0x37

    if-gt v6, v7, :cond_1

    add-int/lit8 v6, v6, -0x18

    goto :goto_1

    :cond_1
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const/16 v7, 0x61

    if-gt v7, v6, :cond_3

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_3

    add-int/lit8 v6, v6, -0x61

    goto :goto_1

    :cond_3
    const/16 v7, 0x30

    if-ne v6, v7, :cond_4

    const/16 v6, 0xe

    goto :goto_1

    :cond_4
    const/16 v7, 0x31

    if-ne v6, v7, :cond_8

    const/16 v6, 0x8

    :goto_1
    const/4 v7, 0x5

    shl-long/2addr v1, v7

    int-to-long v7, v6

    or-long/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x1

    if-ne v4, v7, :cond_6

    and-int/lit8 v5, v6, 0xf

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal start character; will overflow"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-gt v4, v5, :cond_7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "too long; should have 13 characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base base-32 character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-ne v4, v5, :cond_a

    return-wide v1

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "too short; should have 13 characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final greylist-max-o encodeBase32(J)Ljava/lang/String;
    .locals 6

    sget-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    const/16 v1, 0x10

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xd

    if-ge v3, v4, :cond_1

    if-lez v3, :cond_0

    rem-int/lit8 v4, v3, 0x4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x2d

    aput-char v4, v2, v1

    :cond_0
    const-wide/16 v4, 0x1f

    and-long/2addr v4, p0

    long-to-int v4, v4

    const/4 v5, 0x5

    ushr-long/2addr p0, v5

    add-int/lit8 v1, v1, -0x1

    aget-char v4, v0, v4

    aput-char v4, v2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o generate()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    new-instance p0, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-direct {p0, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object p0
.end method

.method public static greylist-max-o parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-static {p0}, Landroid/content/pm/VerifierDeviceIdentity;->decodeBase32([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad base-32 characters in input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/content/pm/VerifierDeviceIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/content/pm/VerifierDeviceIdentity;

    iget-wide v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    iget-wide p0, p1, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    long-to-int p0, v0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
