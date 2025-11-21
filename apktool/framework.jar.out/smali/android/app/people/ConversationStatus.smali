.class public final Landroid/app/people/ConversationStatus;
.super Ljava/lang/Object;
.source "ConversationStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/ConversationStatus$Builder;,
        Landroid/app/people/ConversationStatus$Availability;,
        Landroid/app/people/ConversationStatus$ActivityType;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_ANNIVERSARY:I = 0x2

.field public static final whitelist ACTIVITY_AUDIO:I = 0x4

.field public static final whitelist ACTIVITY_BIRTHDAY:I = 0x1

.field public static final whitelist ACTIVITY_GAME:I = 0x6

.field public static final whitelist ACTIVITY_LOCATION:I = 0x7

.field public static final whitelist ACTIVITY_NEW_STORY:I = 0x3

.field public static final whitelist ACTIVITY_OTHER:I = 0x0

.field public static final whitelist ACTIVITY_UPCOMING_BIRTHDAY:I = 0x8

.field public static final whitelist ACTIVITY_VIDEO:I = 0x5

.field public static final whitelist AVAILABILITY_AVAILABLE:I = 0x0

.field public static final whitelist AVAILABILITY_BUSY:I = 0x1

.field public static final whitelist AVAILABILITY_OFFLINE:I = 0x2

.field public static final whitelist AVAILABILITY_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ConversationStatus"


# instance fields
.field private final blacklist mActivity:I

.field private blacklist mAvailability:I

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mEndTimeMs:J

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mStartTimeMs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/people/ConversationStatus$1;

    invoke-direct {v0}, Landroid/app/people/ConversationStatus$1;-><init>()V

    sput-object v0, Landroid/app/people/ConversationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/people/ConversationStatus$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    iget v0, p1, Landroid/app/people/ConversationStatus$Builder;->mActivity:I

    iput v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    iget v0, p1, Landroid/app/people/ConversationStatus$Builder;->mAvailability:I

    iput v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    iget-wide v0, p1, Landroid/app/people/ConversationStatus$Builder;->mStartTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    iget-wide v0, p1, Landroid/app/people/ConversationStatus$Builder;->mEndTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/people/ConversationStatus$Builder;Landroid/app/people/ConversationStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/app/people/ConversationStatus$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/people/ConversationStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Landroid/app/people/ConversationStatus;

    iget v2, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    iget v3, p1, Landroid/app/people/ConversationStatus;->mActivity:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    iget v3, p1, Landroid/app/people/ConversationStatus;->mAvailability:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    iget-wide v4, p1, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    iget-wide v4, p1, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object p1, p1, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getActivity()I
    .locals 0

    iget p0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    return p0
.end method

.method public whitelist getAvailability()I
    .locals 0

    iget p0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    return p0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    return-wide v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    iget v1, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    iget-wide v5, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConversationStatus{mId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStartTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
