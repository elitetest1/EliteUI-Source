.class public final Landroid/media/audio/common/HeadTracking$SensorData;
.super Ljava/lang/Object;
.source "HeadTracking.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/HeadTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/HeadTracking$SensorData$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/HeadTracking$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist headToStage:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/audio/common/HeadTracking$SensorData$1;

    invoke-direct {v0}, Landroid/media/audio/common/HeadTracking$SensorData$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/HeadTracking$SensorData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    iput-object v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/HeadTracking-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getTag()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "headToStage"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist headToStage([F)Landroid/media/audio/common/HeadTracking$SensorData;
    .locals 2

    new-instance v0, Landroid/media/audio/common/HeadTracking$SensorData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/HeadTracking$SensorData;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getHeadToStage()[F
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/HeadTracking$SensorData;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    check-cast p0, [F

    return-object p0
.end method

.method public final whitelist getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getTag()I
    .locals 0

    iget p0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    return p0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x6

    filled-new-array {v1}, [I

    move-result-object v1

    const-class v2, [F

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->_set(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "union: unknown tag: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setHeadToStage([F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getHeadToStage()[F

    move-result-object p0

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void
.end method
