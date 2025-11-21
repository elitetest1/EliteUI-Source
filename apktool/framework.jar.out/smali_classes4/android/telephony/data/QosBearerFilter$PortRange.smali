.class public Landroid/telephony/data/QosBearerFilter$PortRange;
.super Ljava/lang/Object;
.source "QosBearerFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QosBearerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortRange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/QosBearerFilter$PortRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist end:I

.field blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange$1;

    invoke-direct {v0}, Landroid/telephony/data/QosBearerFilter$PortRange$1;-><init>()V

    sput-object v0, Landroid/telephony/data/QosBearerFilter$PortRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    iput p2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/QosBearerFilter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(Landroid/os/Parcel;)V

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

    instance-of v2, p1, Landroid/telephony/data/QosBearerFilter$PortRange;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    iget v3, p1, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    iget p1, p1, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getEnd()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    return p0
.end method

.method public blacklist getStart()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isValid()Z
    .locals 3

    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const v2, 0xffff

    if-gt v0, v2, :cond_0

    iget p0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-lt p0, v1, :cond_0

    if-gt p0, v2, :cond_0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PortRange { start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
