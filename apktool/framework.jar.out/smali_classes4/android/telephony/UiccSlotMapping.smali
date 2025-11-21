.class public final Landroid/telephony/UiccSlotMapping;
.super Ljava/lang/Object;
.source "UiccSlotMapping.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLogicalSlotIndex:I

.field private final blacklist mPhysicalSlotIndex:I

.field private final blacklist mPortIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/UiccSlotMapping$1;

    invoke-direct {v0}, Landroid/telephony/UiccSlotMapping$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    iput p2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    iput p3, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotMapping-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/UiccSlotMapping;-><init>(Landroid/os/Parcel;)V

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
    check-cast p1, Landroid/telephony/UiccSlotMapping;

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    iget v3, p1, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    iget v3, p1, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    iget p1, p1, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getLogicalSlotIndex()I
    .locals 0

    iget p0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    return p0
.end method

.method public whitelist getPhysicalSlotIndex()I
    .locals 0

    iget p0, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    return p0
.end method

.method public whitelist getPortIndex()I
    .locals 0

    iget p0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UiccSlotMapping (mPortIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPhysicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLogicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
