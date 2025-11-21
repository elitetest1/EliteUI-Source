.class public Lcom/android/internal/org/bouncycastle/util/Integers;
.super Ljava/lang/Object;
.source "Integers.java"


# static fields
.field public static final blacklist BYTES:I = 0x4

.field public static final blacklist SIZE:I = 0x20


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bitCount(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static blacklist highestOneBit(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static blacklist lowestOneBit(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static blacklist numberOfLeadingZeros(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    return p0
.end method

.method public static blacklist numberOfTrailingZeros(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method public static blacklist reverse(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->reverse(I)I

    move-result p0

    return p0
.end method

.method public static blacklist reverseBytes(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static blacklist rotateLeft(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    return p0
.end method

.method public static blacklist rotateRight(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method

.method public static blacklist valueOf(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
