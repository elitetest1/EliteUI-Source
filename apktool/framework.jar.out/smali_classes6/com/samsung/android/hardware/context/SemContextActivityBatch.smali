.class public Lcom/samsung/android/hardware/context/SemContextActivityBatch;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityBatch.java"


# static fields
.field public static final whitelist ACCURACY_HIGH:I = 0x2

.field public static final whitelist ACCURACY_LOW:I = 0x0

.field public static final whitelist ACCURACY_MID:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityBatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HISTORY_MODE:I = 0x1

.field public static final blacklist NORMAL_MODE:I = 0x0

.field public static final blacklist STATUS_BIKE:I = 0x5

.field public static final whitelist STATUS_RUN:I = 0x3

.field public static final whitelist STATUS_STATIONARY:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_VEHICLE:I = 0x4

.field public static final whitelist STATUS_WALK:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityBatch$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->readFromParcel(Landroid/os/Parcel;)V

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

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    return-void
.end method


# virtual methods
.method public whitelist getAccuracyArray()[I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v0, "Accuracy"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    return p0
.end method

.method public whitelist getMostActivity()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v0, "MostActivity"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public whitelist getStatusArray()[I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v0, "ActivityType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist getTimeStampArray()[J
    .locals 9

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "Count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v2, "Duration"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_3

    new-array v2, v0, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    aget-wide v5, v2, v4

    aget-wide v7, v1, v4

    add-long/2addr v5, v7

    aput-wide v5, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v0, "TimeStampArray"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
