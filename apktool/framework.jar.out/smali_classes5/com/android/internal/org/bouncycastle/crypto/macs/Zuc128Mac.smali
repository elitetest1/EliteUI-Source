.class public final Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;
.super Ljava/lang/Object;
.source "Zuc128Mac.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Mac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;
    }
.end annotation


# static fields
.field private static final blacklist TOPBIT:I = 0x80


# instance fields
.field private blacklist theByteIndex:I

.field private final blacklist theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

.field private final blacklist theKeyStream:[I

.field private blacklist theMac:I

.field private blacklist theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

.field private blacklist theWordIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    return-void
.end method

.method private blacklist getFinalWord()I
    .locals 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    aget p0, v1, v0

    return p0
.end method

.method private blacklist getKeyStreamWord(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    aget v1, v0, p0

    if-nez p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    array-length v2, v0

    rem-int/2addr p0, v2

    aget p0, v0, p0

    shl-int v0, v1, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private blacklist initKeyStream()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    return-void
.end method

.method private blacklist shift4NextByte()V
    .locals 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    :cond_0
    return-void
.end method

.method private blacklist updateMac(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getKeyStreamWord(I)I

    move-result p1

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->shift4NextByte()V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getKeyStreamWord(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getFinalWord()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->encode32be(I[BI)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->reset()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getMacSize()I

    move-result p0

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "Zuc128Mac"

    return-object p0
.end method

.method public blacklist getMacSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->copy()Lcom/android/internal/org/bouncycastle/util/Memoable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->initKeyStream()V

    return-void
.end method

.method public blacklist reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->initKeyStream()V

    return-void
.end method

.method public blacklist update(B)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->shift4NextByte()V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x80

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_1

    and-int v3, p1, v1

    if-eqz v3, :cond_0

    add-int v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->updateMac(I)V

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist update([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
