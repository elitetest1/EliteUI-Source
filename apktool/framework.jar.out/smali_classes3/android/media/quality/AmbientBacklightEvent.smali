.class public final Landroid/media/quality/AmbientBacklightEvent;
.super Ljava/lang/Object;
.source "AmbientBacklightEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/AmbientBacklightEvent$Type;
    }
.end annotation


# static fields
.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_DISABLED:I = 0x2

.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_ENABLED:I = 0x1

.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_INTERRUPTED:I = 0x4

.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_METADATA_AVAILABLE:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/AmbientBacklightEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEventType:I

.field private final blacklist mMetadata:Landroid/media/quality/AmbientBacklightMetadata;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/quality/AmbientBacklightEvent$1;

    invoke-direct {v0}, Landroid/media/quality/AmbientBacklightEvent$1;-><init>()V

    sput-object v0, Landroid/media/quality/AmbientBacklightEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/media/quality/AmbientBacklightMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    iput-object p2, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    const-class v0, Landroid/media/quality/AmbientBacklightMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/media/quality/AmbientBacklightMetadata;

    iput-object p1, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/AmbientBacklightEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/quality/AmbientBacklightEvent;-><init>(Landroid/os/Parcel;)V

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/media/quality/AmbientBacklightEvent;

    iget v1, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    iget v3, p1, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    iget-object p1, p1, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getEventType()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    return p0
.end method

.method public whitelist getMetadata()Landroid/media/quality/AmbientBacklightMetadata;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmbientBacklightEvent{mEventType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
