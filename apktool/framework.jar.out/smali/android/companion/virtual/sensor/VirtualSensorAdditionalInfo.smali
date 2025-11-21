.class public final Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
.super Ljava/lang/Object;
.source "VirtualSensorAdditionalInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;,
        Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Type;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    iput-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/List;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;-><init>(ILjava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    return p0
.end method

.method public blacklist getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    iget-object p0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
