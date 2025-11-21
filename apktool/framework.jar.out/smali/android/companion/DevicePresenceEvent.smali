.class public final Landroid/companion/DevicePresenceEvent;
.super Ljava/lang/Object;
.source "DevicePresenceEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/DevicePresenceEvent$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/DevicePresenceEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_BLE_APPEARED:I = 0x0

.field public static final whitelist EVENT_BLE_DISAPPEARED:I = 0x1

.field public static final whitelist EVENT_BT_CONNECTED:I = 0x2

.field public static final whitelist EVENT_BT_DISCONNECTED:I = 0x3

.field public static final whitelist EVENT_SELF_MANAGED_APPEARED:I = 0x4

.field public static final whitelist EVENT_SELF_MANAGED_DISAPPEARED:I = 0x5

.field public static final whitelist NO_ASSOCIATION:I = -0x1

.field private static final blacklist PARCEL_UUID_NOT_NULL:I = 0x1

.field private static final blacklist PARCEL_UUID_NULL:I


# instance fields
.field private final blacklist mAssociationId:I

.field private final blacklist mEvent:I

.field private final blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/DevicePresenceEvent$1;

    invoke-direct {v0}, Landroid/companion/DevicePresenceEvent$1;-><init>()V

    sput-object v0, Landroid/companion/DevicePresenceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    iput p2, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    iput-object p3, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    return-void

    :cond_0
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    iput-object p1, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/DevicePresenceEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/DevicePresenceEvent;-><init>(Landroid/os/Parcel;)V

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
    instance-of v1, p1, Landroid/companion/DevicePresenceEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/companion/DevicePresenceEvent;

    iget-object v1, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    iget v3, p1, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    iget p1, p1, Landroid/companion/DevicePresenceEvent;->mEvent:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getAssociationId()I
    .locals 0

    iget p0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    return p0
.end method

.method public whitelist getEvent()I
    .locals 0

    iget p0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    return p0
.end method

.method public whitelist getUuid()Landroid/os/ParcelUuid;
    .locals 0

    iget-object p0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObservingDevicePresenceResult { Association Id= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ParcelUuid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",Event= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
