.class public final Landroid/hardware/camera2/params/RggbChannelVector;
.super Ljava/lang/Object;
.source "RggbChannelVector.java"


# static fields
.field public static final whitelist BLUE:I = 0x3

.field public static final whitelist COUNT:I = 0x4

.field public static final whitelist GREEN_EVEN:I = 0x1

.field public static final whitelist GREEN_ODD:I = 0x2

.field public static final whitelist RED:I


# instance fields
.field private final greylist-max-o mBlue:F

.field private final greylist-max-o mGreenEven:F

.field private final greylist-max-o mGreenOdd:F

.field private final greylist-max-o mRed:F


# direct methods
.method public constructor whitelist <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "red"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    const-string p1, "greenEven"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    const-string p1, "greenOdd"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    const-string p1, "blue"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return-void
.end method

.method private greylist-max-o toShortString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "{R:%f, G_even:%f, G_odd:%f, B:%f}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist copyTo([FI)V
    .locals 2

    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    aput p0, p1, p2

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "destination too small to fit elements"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/RggbChannelVector;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    iget p1, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public whitelist getBlue()F
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return p0
.end method

.method public whitelist getComponent(I)F
    .locals 2

    if-ltz p1, :cond_4

    const/4 v0, 0x4

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled case "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return p0

    :cond_2
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return p0

    :cond_3
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color channel out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getGreenEven()F
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return p0
.end method

.method public whitelist getGreenOdd()F
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return p0
.end method

.method public final whitelist getRed()F
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toShortString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "RggbChannelVector%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
