.class public final Landroid/companion/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/DeviceId$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_ID_LENGTH_LIMIT:I = 0x400


# instance fields
.field private final blacklist mCustomId:Ljava/lang/String;

.field private final blacklist mMacAddress:Landroid/net/MacAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/DeviceId$1;

    invoke-direct {v0}, Landroid/companion/DeviceId$1;-><init>()V

    sput-object v0, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    :goto_0
    sget-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MacAddress;

    iput-object p1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/DeviceId-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/DeviceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/MacAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iput-object p2, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

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
    instance-of v1, p1, Landroid/companion/DeviceId;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/companion/DeviceId;

    iget-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    iget-object p1, p1, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getCustomId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .locals 0

    iget-object p0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method public blacklist getMacAddressAsString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iget-object p0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isSameDevice(Landroid/companion/DeviceId;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    if-eqz p0, :cond_2

    iget-object p1, p1, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceId{,mCustomId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mMacAddress= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
