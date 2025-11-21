.class public final Landroid/hardware/radio/RadioAlert;
.super Ljava/lang/Object;
.source "RadioAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioAlert$AlertInfo;,
        Landroid/hardware/radio/RadioAlert$AlertArea;,
        Landroid/hardware/radio/RadioAlert$Polygon;,
        Landroid/hardware/radio/RadioAlert$Coordinate;,
        Landroid/hardware/radio/RadioAlert$Geocode;,
        Landroid/hardware/radio/RadioAlert$AlertCertainty;,
        Landroid/hardware/radio/RadioAlert$AlertSeverity;,
        Landroid/hardware/radio/RadioAlert$AlertUrgency;,
        Landroid/hardware/radio/RadioAlert$AlertCategory;,
        Landroid/hardware/radio/RadioAlert$AlertMessageType;,
        Landroid/hardware/radio/RadioAlert$AlertStatus;
    }
.end annotation


# static fields
.field public static final whitelist CATEGORY_CBRNE:I = 0xa

.field public static final whitelist CATEGORY_ENV:I = 0x7

.field public static final whitelist CATEGORY_FIRE:I = 0x5

.field public static final whitelist CATEGORY_GEO:I = 0x0

.field public static final whitelist CATEGORY_HEALTH:I = 0x6

.field public static final whitelist CATEGORY_INFRA:I = 0x9

.field public static final whitelist CATEGORY_MET:I = 0x1

.field public static final whitelist CATEGORY_OTHER:I = 0xb

.field public static final whitelist CATEGORY_RESCUE:I = 0x4

.field public static final whitelist CATEGORY_SAFETY:I = 0x2

.field public static final whitelist CATEGORY_SECURITY:I = 0x3

.field public static final whitelist CATEGORY_TRANSPORT:I = 0x8

.field public static final whitelist CERTAINTY_LIKELY:I = 0x1

.field public static final whitelist CERTAINTY_OBSERVED:I = 0x0

.field public static final whitelist CERTAINTY_POSSIBLE:I = 0x2

.field public static final whitelist CERTAINTY_UNKNOWN:I = 0x4

.field public static final whitelist CERTAINTY_UNLIKELY:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MESSAGE_TYPE_ALERT:I = 0x0

.field public static final whitelist MESSAGE_TYPE_CANCEL:I = 0x2

.field public static final whitelist MESSAGE_TYPE_UPDATE:I = 0x1

.field public static final whitelist SEVERITY_EXTREME:I = 0x0

.field public static final whitelist SEVERITY_MINOR:I = 0x3

.field public static final whitelist SEVERITY_MODERATE:I = 0x2

.field public static final whitelist SEVERITY_SEVERE:I = 0x1

.field public static final whitelist SEVERITY_UNKNOWN:I = 0x4

.field public static final whitelist STATUS_ACTUAL:I = 0x0

.field public static final whitelist STATUS_EXERCISE:I = 0x1

.field public static final whitelist STATUS_TEST:I = 0x2

.field public static final whitelist URGENCY_EXPECTED:I = 0x1

.field public static final whitelist URGENCY_FUTURE:I = 0x2

.field public static final whitelist URGENCY_IMMEDIATE:I = 0x0

.field public static final whitelist URGENCY_PAST:I = 0x3

.field public static final whitelist URGENCY_UNKNOWN:I = 0x4


# instance fields
.field private final blacklist mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMessageType:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioAlert$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    iput p2, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    const-string p1, "Alert info list can not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/hardware/radio/RadioAlert$AlertInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert;-><init>(Landroid/os/Parcel;)V

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
    instance-of v1, p1, Landroid/hardware/radio/RadioAlert;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/hardware/radio/RadioAlert;

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    iget v3, p1, Landroid/hardware/radio/RadioAlert;->mStatus:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    iget v3, p1, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    iget-object p1, p1, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getMessageType()I
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    return p0
.end method

.method public whitelist getStatus()I
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioAlert [status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", infoList= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
