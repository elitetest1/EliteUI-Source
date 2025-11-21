.class public Landroid/view/FrameRateCategoryRate;
.super Ljava/lang/Object;
.source "FrameRateCategoryRate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/FrameRateCategoryRate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHigh:F

.field private final blacklist mNormal:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/FrameRateCategoryRate$1;

    invoke-direct {v0}, Landroid/view/FrameRateCategoryRate$1;-><init>()V

    sput-object v0, Landroid/view/FrameRateCategoryRate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    iput p2, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

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
    instance-of v1, p1, Landroid/view/FrameRateCategoryRate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/view/FrameRateCategoryRate;

    iget v1, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    iget v3, p1, Landroid/view/FrameRateCategoryRate;->mNormal:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget p0, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    iget p1, p1, Landroid/view/FrameRateCategoryRate;->mHigh:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getHigh()F
    .locals 0

    iget p0, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    return p0
.end method

.method public blacklist getNormal()F
    .locals 0

    iget p0, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FrameRateCategoryRate {normal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", high="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
