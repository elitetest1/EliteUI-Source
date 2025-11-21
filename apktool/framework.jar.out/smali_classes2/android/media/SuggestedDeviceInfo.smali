.class public final Landroid/media/SuggestedDeviceInfo;
.super Ljava/lang/Object;
.source "SuggestedDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SuggestedDeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDeviceDisplayName:Ljava/lang/String;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mRouteId:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/SuggestedDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/SuggestedDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/SuggestedDeviceInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmDeviceDisplayName(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmRouteId(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmType(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmExtras(Landroid/media/SuggestedDeviceInfo$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/SuggestedDeviceInfo$Builder;Landroid/media/SuggestedDeviceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/SuggestedDeviceInfo;-><init>(Landroid/media/SuggestedDeviceInfo$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/SuggestedDeviceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/SuggestedDeviceInfo;-><init>(Landroid/os/Parcel;)V

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
    instance-of v1, p1, Landroid/media/SuggestedDeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    check-cast p1, Landroid/media/SuggestedDeviceInfo;

    iget-object v3, p1, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    iget p1, p1, Landroid/media/SuggestedDeviceInfo;->mType:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getDeviceDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getRouteId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    iget p0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
