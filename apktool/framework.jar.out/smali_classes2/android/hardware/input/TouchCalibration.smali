.class public Landroid/hardware/input/TouchCalibration;
.super Ljava/lang/Object;
.source "TouchCalibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/TouchCalibration;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o IDENTITY:Landroid/hardware/input/TouchCalibration;


# instance fields
.field private final greylist-max-o mXOffset:F

.field private final greylist-max-o mXScale:F

.field private final greylist-max-o mXYMix:F

.field private final greylist-max-o mYOffset:F

.field private final greylist-max-o mYScale:F

.field private final greylist-max-o mYXMix:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/TouchCalibration;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration;-><init>()V

    sput-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    new-instance v0, Landroid/hardware/input/TouchCalibration$1;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration$1;-><init>()V

    sput-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor greylist-max-o <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    iput p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    iput p3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    iput p4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    iput p5, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    iput p6, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

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

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/input/TouchCalibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/hardware/input/TouchCalibration;

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXScale:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mYScale:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget p1, p1, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public greylist-max-o getAffineTransform()[F
    .locals 7

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    iget v2, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    const/4 v5, 0x6

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    const/4 v0, 0x4

    aput v4, v5, v0

    const/4 v0, 0x5

    aput p0, v5, v0

    return-object v5
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
