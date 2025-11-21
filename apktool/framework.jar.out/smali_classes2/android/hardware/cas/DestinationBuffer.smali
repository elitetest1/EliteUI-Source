.class public final Landroid/hardware/cas/DestinationBuffer;
.super Ljava/lang/Object;
.source "DestinationBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/DestinationBuffer$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/cas/DestinationBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist nonsecureMemory:I = 0x0

.field public static final blacklist secureMemory:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/cas/DestinationBuffer$1;

    invoke-direct {v0}, Landroid/hardware/cas/DestinationBuffer$1;-><init>()V

    sput-object v0, Landroid/hardware/cas/DestinationBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/cas/DestinationBuffer;->_tag:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/cas/DestinationBuffer;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/cas/DestinationBuffer;->_tag:I

    iput-object p2, p0, Landroid/hardware/cas/DestinationBuffer;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/cas/DestinationBuffer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/cas/DestinationBuffer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/cas/DestinationBuffer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/cas/DestinationBuffer;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/hardware/cas/DestinationBuffer;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/cas/DestinationBuffer;->getTag()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/cas/DestinationBuffer;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/cas/DestinationBuffer;->_tag:I

    iput-object p2, p0, Landroid/hardware/cas/DestinationBuffer;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "secureMemory"

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

    :cond_1
    const-string p0, "nonsecureMemory"

    return-object p0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method

.method public static blacklist nonsecureMemory(Landroid/hardware/cas/SharedBuffer;)Landroid/hardware/cas/DestinationBuffer;
    .locals 2

    new-instance v0, Landroid/hardware/cas/DestinationBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/cas/DestinationBuffer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist secureMemory(Landroid/hardware/common/NativeHandle;)Landroid/hardware/cas/DestinationBuffer;
    .locals 2

    new-instance v0, Landroid/hardware/cas/DestinationBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/cas/DestinationBuffer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/cas/DestinationBuffer;->getTag()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/cas/DestinationBuffer;->getSecureMemory()Landroid/hardware/common/NativeHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/cas/DestinationBuffer;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/cas/DestinationBuffer;->getNonsecureMemory()Landroid/hardware/cas/SharedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/cas/DestinationBuffer;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist getNonsecureMemory()Landroid/hardware/cas/SharedBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/cas/DestinationBuffer;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/cas/DestinationBuffer;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/cas/SharedBuffer;

    return-object p0
.end method

.method public blacklist getSecureMemory()Landroid/hardware/common/NativeHandle;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/cas/DestinationBuffer;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/cas/DestinationBuffer;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/common/NativeHandle;

    return-object p0
.end method

.method public final whitelist getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getTag()I
    .locals 0

    iget p0, p0, Landroid/hardware/cas/DestinationBuffer;->_tag:I

    return p0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v1, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/common/NativeHandle;

    invoke-direct {p0, v0, p1}, Landroid/hardware/cas/DestinationBuffer;->_set(ILjava/lang/Object;)V

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

    :cond_1
    sget-object v1, Landroid/hardware/cas/SharedBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/cas/SharedBuffer;

    invoke-direct {p0, v0, p1}, Landroid/hardware/cas/DestinationBuffer;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setNonsecureMemory(Landroid/hardware/cas/SharedBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/cas/DestinationBuffer;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSecureMemory(Landroid/hardware/common/NativeHandle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/cas/DestinationBuffer;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/cas/DestinationBuffer;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/cas/DestinationBuffer;->_tag:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/cas/DestinationBuffer;->getSecureMemory()Landroid/hardware/common/NativeHandle;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/cas/DestinationBuffer;->getNonsecureMemory()Landroid/hardware/cas/SharedBuffer;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
