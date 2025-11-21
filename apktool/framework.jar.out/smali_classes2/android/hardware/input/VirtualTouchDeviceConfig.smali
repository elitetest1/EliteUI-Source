.class abstract Landroid/hardware/input/VirtualTouchDeviceConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualTouchDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmWidth(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmHeight(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result p1

    iput p1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    return p0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
