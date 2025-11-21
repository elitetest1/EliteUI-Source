.class public final Landroid/media/projection/MediaProjectionEvent;
.super Ljava/lang/Object;
.source "MediaProjectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionEvent$EventType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/projection/MediaProjectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PROJECTION_STARTED_DURING_CALL_AND_ACTIVE_POST_CALL:I


# instance fields
.field private final blacklist mEventType:I

.field private final blacklist mTimestampMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/projection/MediaProjectionEvent$1;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionEvent$1;-><init>()V

    sput-object v0, Landroid/media/projection/MediaProjectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    iput-wide p2, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/projection/MediaProjectionEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjectionEvent;-><init>(Landroid/os/Parcel;)V

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

    instance-of v0, p1, Landroid/media/projection/MediaProjectionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/media/projection/MediaProjectionEvent;

    iget v0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    iget v2, p1, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    iget-wide p0, p1, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public blacklist getEventType()I
    .locals 0

    iget p0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    return p0
.end method

.method public blacklist getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaProjectionEvent{mEventType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
