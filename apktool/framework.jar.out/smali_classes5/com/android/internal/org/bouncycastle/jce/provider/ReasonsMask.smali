.class Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source "ReasonsMask.java"


# static fields
.field static final blacklist allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;


# instance fields
.field private blacklist _reasons:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method


# virtual methods
.method blacklist addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method blacklist getReasons()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return p0
.end method

.method blacklist hasNewReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr p0, p1

    or-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist intersect(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    and-int/2addr p0, p1

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V

    return-object v0
.end method

.method blacklist isAllReasons()Z
    .locals 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    iget v0, v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
