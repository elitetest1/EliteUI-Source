.class public Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityLocationLogging.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LPP_RESOLUTION_HIGH:I = 0x2

.field public static final blacklist LPP_RESOLUTION_LOW:I = 0x0

.field public static final blacklist LPP_RESOLUTION_MID:I = 0x1

.field public static final blacklist TYPE_MOVING:I = 0x2

.field public static final blacklist TYPE_NONE:I = 0x0

.field public static final blacklist TYPE_STAYING:I = 0x1

.field public static final blacklist TYPE_TRAJECTORY:I = 0x3


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mInfo:Landroid/os/Bundle;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    return-void
.end method


# virtual methods
.method public blacklist getAltitude()[D
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaAltitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "TrajectoryAltitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getLatitude()[D
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaLatitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "TrajectoryLatitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getLoggingSize()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaCount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "MovingCount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "TrajectoryCount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getLongitude()[D
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaLongitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "TrajectoryLongitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getStayingAreaRadius()[I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaRadius"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStayingAreaStatus()[I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaStatus"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStayingTimeDuration()[I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaTimeDuration"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTimestamp()[J
    .locals 8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "StayingAreaTimeStamp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "MovingTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "MovingTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-wide v4, v1, v3

    aget v3, v0, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "TrajectoryTimeStamp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    return p0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "LoggingBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v0, "LoggingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
