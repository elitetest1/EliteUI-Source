.class public final Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;
.super Ljava/lang/Object;
.source "VirtualRotaryEncoderScrollEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEventTimeNanos:J

.field private final blacklist mScrollAmount:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mScrollAmount:F

    iput-wide p2, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mEventTimeNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>(FJLandroid/hardware/input/VirtualRotaryEncoderScrollEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;-><init>(FJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mScrollAmount:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mEventTimeNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getEventTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getScrollAmount()F
    .locals 0

    iget p0, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mScrollAmount:F

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualRotaryScrollEvent( scrollAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mScrollAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " eventTime(ns)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mEventTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mScrollAmount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
