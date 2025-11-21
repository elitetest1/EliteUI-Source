.class public final Landroid/media/TimedMetaData;
.super Ljava/lang/Object;
.source "TimedMetaData.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TimedMetaData"


# instance fields
.field private greylist-max-o mMetaData:[B

.field private greylist-max-o mTimestampUs:J


# direct methods
.method public constructor whitelist <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    iput-wide p1, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    iput-object p3, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null metaData is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/media/TimedMetaData;->parseParcel(Landroid/os/Parcel;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parseParcel() fails"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static greylist-max-o createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;
    .locals 1

    new-instance v0, Landroid/media/TimedMetaData;

    invoke-direct {v0, p0}, Landroid/media/TimedMetaData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private greylist-max-o parseParcel(Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist getMetaData()[B
    .locals 0

    iget-object p0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    return-object p0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    return-wide v0
.end method
