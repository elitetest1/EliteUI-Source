.class public final Landroid/hardware/display/HdrConversionMode;
.super Ljava/lang/Object;
.source "HdrConversionMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/HdrConversionMode$ConversionMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/HdrConversionMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HDR_CONVERSION_FORCE:I = 0x3

.field public static final whitelist HDR_CONVERSION_PASSTHROUGH:I = 0x1

.field public static final whitelist HDR_CONVERSION_SYSTEM:I = 0x2

.field public static final whitelist HDR_CONVERSION_UNSUPPORTED:I


# instance fields
.field private final blacklist mConversionMode:I

.field private blacklist mPreferredHdrOutputType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/HdrConversionMode$1;

    invoke-direct {v0}, Landroid/hardware/display/HdrConversionMode$1;-><init>()V

    sput-object v0, Landroid/hardware/display/HdrConversionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    :cond_1
    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    iput p2, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "preferredHdrOutputType must not be set if the conversion mode is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/hardware/display/HdrConversionMode;->hdrConversionModeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/HdrConversionMode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/HdrConversionMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist equals(Landroid/hardware/display/HdrConversionMode;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist hdrConversionModeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "HDR_CONVERSION_UNSUPPORTED"

    return-object p0

    :cond_0
    const-string p0, "HDR_CONVERSION_FORCE"

    return-object p0

    :cond_1
    const-string p0, "HDR_CONVERSION_SYSTEM"

    return-object p0

    :cond_2
    const-string p0, "HDR_CONVERSION_PASSTHROUGH"

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/display/HdrConversionMode;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {p0, p1}, Landroid/hardware/display/HdrConversionMode;->equals(Landroid/hardware/display/HdrConversionMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getConversionMode()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    return p0
.end method

.method public whitelist getPreferredHdrOutputType()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HdrConversionMode{ConversionMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/display/HdrConversionMode;->hdrConversionModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PreferredHdrOutputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display$HdrCapabilities;->hdrTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
