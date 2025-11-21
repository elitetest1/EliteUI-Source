.class public Landroid/hardware/usb/UsbInterface;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAlternateSetting:I

.field private final greylist-max-o mClass:I

.field private greylist-max-o mEndpoints:[Landroid/os/Parcelable;

.field private final greylist-max-o mId:I

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mProtocol:I

.field private final greylist-max-o mSubclass:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/UsbInterface$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbInterface$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    iput p2, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    iput-object p3, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    iput p4, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    iput p5, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    iput p6, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getAlternateSetting()I
    .locals 0

    iget p0, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    return p0
.end method

.method public whitelist getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;
    .locals 0

    iget-object p0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    aget-object p0, p0, p1

    check-cast p0, Landroid/hardware/usb/UsbEndpoint;

    return-object p0
.end method

.method public whitelist getEndpointCount()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    array-length p0, p0

    return p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    return p0
.end method

.method public whitelist getInterfaceClass()I
    .locals 0

    iget p0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    return p0
.end method

.method public whitelist getInterfaceProtocol()I
    .locals 0

    iget p0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    return p0
.end method

.method public whitelist getInterfaceSubclass()I
    .locals 0

    iget p0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    return p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o setEndpoints([Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "endpoints"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    iput-object p1, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UsbInterface[mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mAlternateSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSubclass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mEndpoints=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
