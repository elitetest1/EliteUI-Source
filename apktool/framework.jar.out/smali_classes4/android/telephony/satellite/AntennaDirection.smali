.class public final Landroid/telephony/satellite/AntennaDirection;
.super Ljava/lang/Object;
.source "AntennaDirection.java"

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
            "Landroid/telephony/satellite/AntennaDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mX:F

.field private blacklist mY:F

.field private blacklist mZ:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/AntennaDirection$1;

    invoke-direct {v0}, Landroid/telephony/satellite/AntennaDirection$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/AntennaDirection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    iput p2, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    iput p3, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaDirection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/AntennaDirection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaDirection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

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
    check-cast p1, Landroid/telephony/satellite/AntennaDirection;

    iget v2, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    iget v3, p1, Landroid/telephony/satellite/AntennaDirection;->mX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    iget v3, p1, Landroid/telephony/satellite/AntennaDirection;->mY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    iget p1, p1, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getX()F
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    return p0
.end method

.method public whitelist getY()F
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    return p0
.end method

.method public whitelist getZ()F
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    const-string v1, "X:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",Y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",Z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
