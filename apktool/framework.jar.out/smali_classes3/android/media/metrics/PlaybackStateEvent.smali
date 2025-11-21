.class public final Landroid/media/metrics/PlaybackStateEvent;
.super Landroid/media/metrics/Event;
.source "PlaybackStateEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackStateEvent$Builder;,
        Landroid/media/metrics/PlaybackStateEvent$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_ABANDONED:I = 0xf

.field public static final whitelist STATE_BUFFERING:I = 0x6

.field public static final whitelist STATE_ENDED:I = 0xb

.field public static final whitelist STATE_FAILED:I = 0xd

.field public static final whitelist STATE_INTERRUPTED_BY_AD:I = 0xe

.field public static final whitelist STATE_JOINING_BACKGROUND:I = 0x1

.field public static final whitelist STATE_JOINING_FOREGROUND:I = 0x2

.field public static final whitelist STATE_NOT_STARTED:I = 0x0

.field public static final whitelist STATE_PAUSED:I = 0x4

.field public static final whitelist STATE_PAUSED_BUFFERING:I = 0x7

.field public static final whitelist STATE_PLAYING:I = 0x3

.field public static final whitelist STATE_SEEKING:I = 0x5

.field public static final whitelist STATE_STOPPED:I = 0xc

.field public static final whitelist STATE_SUPPRESSED:I = 0x9

.field public static final whitelist STATE_SUPPRESSED_BUFFERING:I = 0xa


# instance fields
.field private final blacklist mState:I

.field private final blacklist mTimeSinceCreatedMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/metrics/PlaybackStateEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackStateEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    iput-wide p2, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    iput p1, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-virtual {p4}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(IJLandroid/os/Bundle;Landroid/media/metrics/PlaybackStateEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/metrics/PlaybackStateEvent;-><init>(IJLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    iput-wide v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    iput-object p1, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/PlaybackStateEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/metrics/PlaybackStateEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "STATE_ABANDONED"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_INTERRUPTED_BY_AD"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_FAILED"

    return-object p0

    :pswitch_4
    const-string p0, "STATE_STOPPED"

    return-object p0

    :pswitch_5
    const-string p0, "STATE_ENDED"

    return-object p0

    :pswitch_6
    const-string p0, "STATE_SUPPRESSED_BUFFERING"

    return-object p0

    :pswitch_7
    const-string p0, "STATE_SUPPRESSED"

    return-object p0

    :pswitch_8
    const-string p0, "STATE_PAUSED_BUFFERING"

    return-object p0

    :pswitch_9
    const-string p0, "STATE_BUFFERING"

    return-object p0

    :pswitch_a
    const-string p0, "STATE_SEEKING"

    return-object p0

    :pswitch_b
    const-string p0, "STATE_PAUSED"

    return-object p0

    :pswitch_c
    const-string p0, "STATE_PLAYING"

    return-object p0

    :pswitch_d
    const-string p0, "STATE_JOINING_FOREGROUND"

    return-object p0

    :pswitch_e
    const-string p0, "STATE_JOINING_BACKGROUND"

    return-object p0

    :pswitch_f
    const-string p0, "STATE_NOT_STARTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
    check-cast p1, Landroid/media/metrics/PlaybackStateEvent;

    iget v2, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    iget v3, p1, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    iget-wide p0, p1, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getState()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    return p0
.end method

.method public whitelist getTimeSinceCreatedMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
