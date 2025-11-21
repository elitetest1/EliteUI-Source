.class public final Landroid/util/Half;
.super Ljava/lang/Number;
.source "Half.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Half;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist EPSILON:S = 0x1400s

.field public static final whitelist LOWEST_VALUE:S = -0x401s

.field public static final whitelist MAX_EXPONENT:I = 0xf

.field public static final whitelist MAX_VALUE:S = 0x7bffs

.field public static final whitelist MIN_EXPONENT:I = -0xe

.field public static final whitelist MIN_NORMAL:S = 0x400s

.field public static final whitelist MIN_VALUE:S = 0x1s

.field public static final whitelist NEGATIVE_INFINITY:S = -0x400s

.field public static final whitelist NEGATIVE_ZERO:S = -0x8000s

.field public static final whitelist NaN:S = 0x7e00s

.field public static final whitelist POSITIVE_INFINITY:S = 0x7c00s

.field public static final whitelist POSITIVE_ZERO:S = 0x0s

.field public static final whitelist SIZE:I = 0x10


# instance fields
.field private final greylist-max-o mValue:S


# direct methods
.method public constructor whitelist <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    double-to-float p1, p1

    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result p1

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor whitelist <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result p1

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result p1

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor whitelist <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public static whitelist abs(S)S
    .locals 0

    and-int/lit16 p0, p0, 0x7fff

    int-to-short p0, p0

    return p0
.end method

.method public static whitelist ceil(S)S
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->ceil(S)S

    move-result p0

    return p0
.end method

.method public static whitelist compare(SS)I
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->compare(SS)I

    move-result p0

    return p0
.end method

.method public static whitelist copySign(SS)S
    .locals 1

    const v0, 0x8000

    and-int/2addr p1, v0

    and-int/lit16 p0, p0, 0x7fff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static whitelist equals(SS)Z
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->equals(SS)Z

    move-result p0

    return p0
.end method

.method public static whitelist floor(S)S
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->floor(S)S

    move-result p0

    return p0
.end method

.method public static whitelist getExponent(S)I
    .locals 0

    ushr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, -0xf

    return p0
.end method

.method public static whitelist getSign(S)I
    .locals 1

    const v0, 0x8000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist getSignificand(S)I
    .locals 0

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method

.method public static whitelist greater(SS)Z
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->greater(SS)Z

    move-result p0

    return p0
.end method

.method public static whitelist greaterEquals(SS)Z
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->greaterEquals(SS)Z

    move-result p0

    return p0
.end method

.method public static whitelist halfToIntBits(S)I
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 p0, 0x7e00

    return p0

    :cond_0
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static whitelist halfToRawIntBits(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static whitelist halfToShortBits(S)S
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 p0, 0x7e00

    :cond_0
    return p0
.end method

.method public static whitelist hashCode(S)I
    .locals 0

    invoke-static {p0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result p0

    return p0
.end method

.method public static whitelist intBitsToHalf(I)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static whitelist isInfinite(S)Z
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->isInfinite(S)Z

    move-result p0

    return p0
.end method

.method public static whitelist isNaN(S)Z
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result p0

    return p0
.end method

.method public static whitelist isNormalized(S)Z
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->isNormalized(S)Z

    move-result p0

    return p0
.end method

.method public static whitelist less(SS)Z
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->less(SS)Z

    move-result p0

    return p0
.end method

.method public static whitelist lessEquals(SS)Z
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->lessEquals(SS)Z

    move-result p0

    return p0
.end method

.method public static whitelist max(SS)S
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->max(SS)S

    move-result p0

    return p0
.end method

.method public static whitelist min(SS)S
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/FP16;->min(SS)S

    move-result p0

    return p0
.end method

.method public static whitelist parseHalf(Ljava/lang/String;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Landroid/util/Half;->toHalf(F)S

    move-result p0

    return p0
.end method

.method public static whitelist round(S)S
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->rint(S)S

    move-result p0

    return p0
.end method

.method public static whitelist toFloat(S)F
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->toFloat(S)F

    move-result p0

    return p0
.end method

.method public static whitelist toHalf(F)S
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->toHalf(F)S

    move-result p0

    return p0
.end method

.method public static whitelist toHexString(S)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->toHexString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist toString(S)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist trunc(S)S
    .locals 0

    invoke-static {p0}, Llibcore/util/FP16;->trunc(S)S

    move-result p0

    return p0
.end method

.method public static whitelist valueOf(F)Landroid/util/Half;
    .locals 1

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(F)V

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/util/Half;
    .locals 1

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist valueOf(S)Landroid/util/Half;
    .locals 1

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    float-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public whitelist compareTo(Landroid/util/Half;)I
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    iget-short p1, p1, Landroid/util/Half;->mValue:S

    invoke-static {p0, p1}, Landroid/util/Half;->compare(SS)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/util/Half;

    invoke-virtual {p0, p1}, Landroid/util/Half;->compareTo(Landroid/util/Half;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api doubleValue()D
    .locals 2

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/util/Half;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/Half;

    iget-short p1, p1, Landroid/util/Half;->mValue:S

    invoke-static {p1}, Landroid/util/Half;->halfToIntBits(S)I

    move-result p1

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api floatValue()F
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    return p0
.end method

.method public whitelist halfValue()S
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->hashCode(S)I

    move-result p0

    return p0
.end method

.method public whitelist test-api intValue()I
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public whitelist isNaN()Z
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->isNaN(S)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api longValue()J
    .locals 2

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    float-to-long v0, p0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-short p0, p0, Landroid/util/Half;->mValue:S

    invoke-static {p0}, Landroid/util/Half;->toString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
