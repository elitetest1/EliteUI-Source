.class public Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
.super Ljava/lang/Object;
.source "DeviceProductInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DeviceProductInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManufactureDate"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DeviceProductInfo$ManufactureDate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mWeek:Ljava/lang/Integer;

.field private final blacklist mYear:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmWeek(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYear(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate$1;

    invoke-direct {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    iput-object p2, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    iget-object v3, p1, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    iget-object p1, p1, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getWeek()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist getYear()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ManufactureDate{week="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mWeek:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->mYear:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
