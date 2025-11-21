.class public Landroid/content/res/FontScaleConverterImpl;
.super Ljava/lang/Object;
.source "FontScaleConverterImpl.java"

# interfaces
.implements Landroid/content/res/FontScaleConverter;


# instance fields
.field public final blacklist mFromSpValues:[F

.field public final blacklist mToDpValues:[F


# direct methods
.method public constructor blacklist <init>([F[F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iput-object p2, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array lengths must match and be nonzero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist lookupAndInterpolate(F[F[F)F
    .locals 7

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-ltz v2, :cond_0

    aget p0, p2, v2

    :goto_0
    mul-float/2addr v1, p0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    add-int/lit8 v3, v2, -0x1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    cmpl-float p2, v0, v5

    if-nez p2, :cond_1

    return v5

    :cond_1
    div-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0

    :cond_2
    const/4 p0, -0x1

    if-ne v3, p0, :cond_3

    const/4 p0, 0x0

    aget p1, p1, p0

    aget p0, p2, p0

    move p2, v5

    goto :goto_1

    :cond_3
    aget v5, p1, v3

    aget p1, p1, v2

    aget p0, p2, v3

    aget p2, p2, v2

    move v6, v5

    move v5, p0

    move p0, p2

    move p2, v6

    :goto_1
    invoke-static {v5, p0, p2, p1, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    goto :goto_0
.end method


# virtual methods
.method public whitelist convertDpToSp(F)F
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object p0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {p1, v0, p0}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result p0

    return p0
.end method

.method public whitelist convertSpToDp(F)F
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object p0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {p1, v0, p0}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/content/res/FontScaleConverterImpl;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/content/res/FontScaleConverterImpl;

    iget-object v2, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object v3, p1, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object p1, p1, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FontScaleConverter{fromSpValues="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toDpValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
